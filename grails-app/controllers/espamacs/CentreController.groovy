package espamacs

import espamacs.pagination.Pagination
import espamacs.pagination.PatientPagination
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured("ROLE_ADMIN")
class CentreController {

    def index(Pagination pagination) {
        def model = searchModel(pagination)
        if (request.xhr){
            render template:'/centre/searchableCenterList', model:model
        }else{
            model
        }
    }

    private Map searchModel(Pagination pagination){
        grails.orm.PagedResultList result = Centre.createCriteria().list(max:pagination.max, offset:pagination.offset) {
            if (pagination.sort){order(pagination.sort, pagination.order)}
        }
        pagination.total=result.totalCount
        [pagination:pagination, centreList: result]
    }

    def show(Centre centre) {
        render view: "edit", model:[centre:centre]
    }

    def create() {
        respond new Centre(params)
    }

    @Transactional
    def save(Centre centre) {
        if (centre == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (centre.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond centre.errors, view:'create'
            return
        }

        centre.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [centre.name, centre.id])
                redirect centre
            }
            '*' { respond centre, [status: CREATED] }
        }
    }

    def edit(Centre centre) {
        respond centre
    }

    @Transactional
    def update(Centre centre) {
        if (centre == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (centre.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond centre.errors, view:'edit'
            return
        }

        centre.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [centre.name, centre.id])
                redirect centre
            }
            '*'{ respond centre, [status: OK] }
        }
    }

    @Transactional
    def delete(Centre centre) {

        if (centre == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        centre.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'centre.label', default: 'Centre'), centre.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'centre.label', default: 'Centre'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
