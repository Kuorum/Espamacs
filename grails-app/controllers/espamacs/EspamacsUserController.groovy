package espamacs

import espamacs.pagination.Pagination

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EspamacsUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Pagination pagination) {
        def model = searchModel(pagination)
        if (request.xhr){
            render template:'/espamacsUser/searchableEspamacsUserList', model:model
        }else{
            model
        }
    }

    private Map searchModel(Pagination pagination){
        grails.orm.PagedResultList result = EspamacsUser.createCriteria().list(max:pagination.max, offset:pagination.offset) {
            if (pagination.sort){order(pagination.sort, pagination.order)}
        }
        pagination.total=result.totalCount
        [pagination:pagination, userList: result]
    }

    def show(EspamacsUser espamacsUser) {
        respond espamacsUser
    }

    def create() {
        respond new EspamacsUser(params)
    }

    @Transactional
    def save(EspamacsUser espamacsUser) {
        if (espamacsUser == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (espamacsUser.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond espamacsUser.errors, view:'create'
            return
        }
        espamacsUser.save flush:true
        EspamacsUserRole.create(espamacsUser,  Role.findByAuthority('ROLE_USER'), true)

        flash.message = message(code: 'default.created.message', args: [espamacsUser.username, espamacsUser.id])
        redirect mapping:'userShow', params:espamacsUser.encodeAsLinkProperties()
    }

    def edit(EspamacsUser espamacsUser) {
        respond espamacsUser
    }

    @Transactional
    def update(EspamacsUser espamacsUser) {
        if (espamacsUser == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (espamacsUser.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond espamacsUser.errors, view:'edit'
            return
        }

        espamacsUser.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'espamacsUser.label', default: 'EspamacsUser'), espamacsUser.id])
                redirect espamacsUser
            }
            '*'{ respond espamacsUser, [status: OK] }
        }
    }

    @Transactional
    def delete(EspamacsUser espamacsUser) {

        if (espamacsUser == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        EspamacsUserRole.removeAll(espamacsUser, true)
        espamacsUser.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [espamacsUser.username, espamacsUser.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'espamacsUser.label', default: 'EspamacsUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
