package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.pagination.PatientPagination
import espamacs.patientData.PersonalHistory
import espamacs.type.PatientStatus
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT

@Transactional(readOnly = true)
class PatientController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(PatientPagination pagination) {
        def model = searchModel(pagination)
        if (request.xhr){
            render template:'/patient/searchablePatientsList', model:searchModel(pagination)
        }else{
            model
        }
    }

    private Map searchModel(PatientPagination pagination){
        grails.orm.PagedResultList result = Patient.createCriteria().list(max:pagination.max, offset:pagination.offset) {
            if (pagination.centre) {eq("centre", pagination.centre)}
            if (pagination.id) {eq("id", pagination.id)}
            if (pagination.cardiacCareType) {eq("cardiacCareType", pagination.id)}
            if (pagination.code) {ilike("code", "%${pagination.code}%")}
            if (pagination.externalId) {ilike("externalId", "%${pagination.externalId}%")}
            if (pagination.sort){order(pagination.sort, pagination.order)}
        }
        pagination.total=result.totalCount
        [pagination:pagination, patientList: result]
    }

    def show(Patient p) {
        Patient patient = Patient.get(params.patientId)
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

        flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
        redirect mapping:'patientEdit', params: [patientId:  patient.id]
    }

    @Transactional
    def saveBaselineCondition(BaselineCondition baselineCondition) {
        Patient patient = Patient.get(params.patientId)

        if (baselineCondition == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        if (baselineCondition.hasErrors()) {
            transactionStatus.setRollbackOnly()
            flash.error = message(code: 'patient.data.error')
            render model:editPatientModel(patient, baselineCondition) ,view:'edit'
            return
        }

        baselineCondition.save flush:true
        patient.baselineCondition = baselineCondition
        patient.save flush: true

        flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
        redirect mapping:'patientEdit', params: [patientId:  patient.id]
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
