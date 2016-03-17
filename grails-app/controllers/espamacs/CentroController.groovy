package espamacs

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CentroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Centro.list(params), model:[centroCount: Centro.count()]
    }

    def show(Centro centro) {
        respond centro
    }

    def create() {
        respond new Centro(params)
    }

    @Transactional
    def save(Centro centro) {
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
                flash.message = message(code: 'default.created.message', args: [message(code: 'centro.label', default: 'Centro'), centro.id])
                redirect centro
            }
            '*' { respond centro, [status: CREATED] }
        }
    }

    def edit(Centro centro) {
        respond centro
    }

    @Transactional
    def update(Centro centro) {
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'centro.label', default: 'Centro'), centro.id])
                redirect centro
            }
            '*'{ respond centro, [status: OK] }
        }
    }

    @Transactional
    def delete(Centro centro) {

        if (centro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        centro.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'centro.label', default: 'Centro'), centro.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'centro.label', default: 'Centro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
