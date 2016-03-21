package espamacs

import espamacs.patientData.PersonalHistory
import espamacs.type.PatientStatus

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PatientController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patient.list(params), model:[patientCount: Patient.count()]
    }

    def show(Patient patient) {
        respond patient
    }

    def create() {
        respond new Patient(params)
    }

    @Transactional
    def save(Patient patient) {
        if (patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        patient.patientStatus = PatientStatus.findByCode("INCOMPLETE")
        patient.validate()
        if (patient.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond patient.errors, view:'create'
            return
        }

        patient.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
                redirect patient
            }
            '*' { respond patient, [status: CREATED] }
        }
    }

    def edit(Patient patient) {
        respond patient
    }

    @Transactional
    def update(Patient patient) {
        if (patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (patient.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond patient.errors, view:'edit'
            return
        }

        patient.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
                redirect patient
            }
            '*'{ respond patient, [status: OK] }
        }
    }

    @Transactional
    def delete(Patient patient) {

        if (patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        patient.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    def editPersonalHistory(Patient patient) {
        PersonalHistory personalHistory = patient.personalHistory?:new PersonalHistory()
        respond personalHistory, model:[patient:patient]
    }

    def savePersonalHistory(Patient patient, PersonalHistory personalHistory) {
        respond new Patient(params)
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
