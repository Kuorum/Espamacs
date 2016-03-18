package espamacs

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PatientController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patient.list(params), model:[pacienteCount: Patient.count()]
    }

    def show(Patient paciente) {
        respond paciente
    }

    def create() {
        respond new Patient(params)
    }

    @Transactional
    def save(Patient paciente) {
        if (paciente == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (paciente.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond paciente.errors, view:'create'
            return
        }

        paciente.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patient.label', default: 'Patient'), paciente.id])
                redirect paciente
            }
            '*' { respond paciente, [status: CREATED] }
        }
    }

    def edit(Patient paciente) {
        respond paciente
    }

    @Transactional
    def update(Patient paciente) {
        if (paciente == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (paciente.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond paciente.errors, view:'edit'
            return
        }

        paciente.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), paciente.id])
                redirect paciente
            }
            '*'{ respond paciente, [status: OK] }
        }
    }

    @Transactional
    def delete(Patient paciente) {

        if (paciente == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        paciente.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'patient.label', default: 'Patient'), paciente.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
