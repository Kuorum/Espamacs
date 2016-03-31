package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.pagination.Pagination
import espamacs.pagination.PatientPagination
import espamacs.patientData.PersonalHistory
import espamacs.type.PatientStatus

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PatientController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(PatientPagination pagination) {
        pagination.total=Patient.count()
        respond Patient.list(pagination.properties), model:[pagination:pagination]
    }

    def show(Patient patient) {
        respond patient, view: "edit", model:editPatientModel(patient)
//        respond patient
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

        flash.message = message(code: 'default.created.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
        redirect mapping:'editPatient', params:[patientId:patient.id]
    }

    def edit() {
        Patient patient = Patient.get(params.patientId)
        respond patient, model:editPatientModel(patient)
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
        flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
        redirect mapping:'editPatient', params:[patientId:patient.id]
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

    def postGet() {
        Patient patient = Patient.get(params.patientId)
        redirect mapping:'patientEdit', params: [patientId:patient.id], method:"GET"
    }

    @Transactional
    def savePersonalHistory(PersonalHistory personalHistory) {
        Patient patient = Patient.get(params.patientId)
        if (personalHistory == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        if (personalHistory.hasErrors()) {
            transactionStatus.setRollbackOnly()
            render model:editPatientModel(patient, personalHistory) ,view:'edit'
            return
        }

        personalHistory.save flush:true
        patient.personalHistory = personalHistory
        patient.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
                redirect mapping:patientEdit, params: patient.id
            }
            '*'{ respond patient, [status: OK] }
        }
    }

    @Transactional
    def saveBaselineCondition(PersonalHistory personalHistory) {

    }

    private def editPatientModel(Patient patient, def section = null){
        PersonalHistory personalHistory = patient.personalHistory?:new PersonalHistory()
        BaselineCondition baselineCondition = patient.baselineCondition?:new BaselineCondition()
        def model = [
                patient:patient,
                personalHistory:personalHistory,
                baselineCondition:baselineCondition
        ]
        if (section && section instanceof PersonalHistory){
            model.personalHistory = section
        }else if(section && section instanceof BaselineCondition){
            model.baselineCondition = section
        }
        return model
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
