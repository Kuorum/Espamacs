package espamacs.event

import espamacs.Patient

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def show(Event evento) {
        respond evento
    }


    def createMalfunctionDevice(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new MalfunctionDevice(params)]
    }

    @Transactional
    def saveMalfunctionDevice(MalfunctionDevice malfunctionDevice){
        Patient patient = Patient.get(params.patientId)
        log.info("Creating malfunction device event")
        save(malfunctionDevice, patient, transactionStatus)
    }

    def createHemorrhage(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new Hemorrhage(params)]
    }

    def saveHemorrhage(){
        respond new Hemorrhage()
    }

    private save(Event event, Patient patient, def transactionStatus) {
        if (event == null || patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (event.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond event.errors, view:'create'
            return
        }

        event.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'event.label', default: 'Event'), event.id])
                redirect mapping:'patientShow', params:patient.encodeAsLinkProperties()
            }
            '*' { respond event, [status: CREATED] }
        }
    }

    def edit(Event evento) {
        respond evento
    }

    @Transactional
    def update(Event evento) {
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'event.label', default: 'Event'), evento.id])
                redirect evento
            }
            '*'{ respond evento, [status: OK] }
        }
    }

    @Transactional
    def delete(Event evento) {

        if (evento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        evento.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'event.label', default: 'Event'), evento.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'event.label', default: 'Event'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
