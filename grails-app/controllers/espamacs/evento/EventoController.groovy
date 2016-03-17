package espamacs.evento

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Evento.list(params), model:[eventoCount: Evento.count()]
    }

    def show(Evento evento) {
        respond evento
    }

    def create() {
        respond new Evento(params)
    }

    @Transactional
    def save(Evento evento) {
        if (evento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (evento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond evento.errors, view:'create'
            return
        }

        evento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'evento.label', default: 'Evento'), evento.id])
                redirect evento
            }
            '*' { respond evento, [status: CREATED] }
        }
    }

    def edit(Evento evento) {
        respond evento
    }

    @Transactional
    def update(Evento evento) {
        if (evento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (evento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond evento.errors, view:'edit'
            return
        }

        evento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'evento.label', default: 'Evento'), evento.id])
                redirect evento
            }
            '*'{ respond evento, [status: OK] }
        }
    }

    @Transactional
    def delete(Evento evento) {

        if (evento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        evento.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'evento.label', default: 'Evento'), evento.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
