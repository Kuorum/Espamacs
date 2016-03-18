package espamacs

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CentreController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Centre.list(params), model:[centroCount: Centre.count()]
    }

    def show(Centre centro) {
        respond centro
    }

    def create() {
        respond new Centre(params)
    }

    @Transactional
    def save(Centre centro) {
        if (centro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (centro.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond centro.errors, view:'create'
            return
        }

        centro.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'centre.label', default: 'Centre'), centro.id])
                redirect centro
            }
            '*' { respond centro, [status: CREATED] }
        }
    }

    def edit(Centre centro) {
        respond centro
    }

    @Transactional
    def update(Centre centro) {
        if (centro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (centro.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond centro.errors, view:'edit'
            return
        }

        centro.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'centre.label', default: 'Centre'), centro.id])
                redirect centro
            }
            '*'{ respond centro, [status: OK] }
        }
    }

    @Transactional
    def delete(Centre centro) {

        if (centro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        centro.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'centre.label', default: 'Centre'), centro.id])
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
