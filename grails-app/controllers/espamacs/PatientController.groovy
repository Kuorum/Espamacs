package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.diagnosis.DiagnosisAndImplantGoals
import espamacs.event.Event
import espamacs.implantData.ImplantData
import espamacs.initialData.InitialData
import espamacs.pagination.PatientPagination
import espamacs.patientData.PersonalHistory
import espamacs.preimplantSituation.PreimplantSituation
import espamacs.type.PatientStatus
import espamacs.type.implantData.ImplantType
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT

@Transactional(readOnly = true)
class PatientController {

    PatientService patientService
    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "POST"]

    def index(PatientPagination pagination) {
        def model = searchModel(pagination)
        if (request.xhr){
            render template:'/patient/searchablePatientsList', model:model
        }else{
            model
        }
    }

    private Map searchModel(PatientPagination pagination){
        if (SpringSecurityUtils.ifNotGranted("ROLE_ADMIN")){
            EspamacsUser user = springSecurityService.currentUser
            Centre centre = user.centre
            pagination.centre = centre
        }
        grails.orm.PagedResultList result = Patient.createCriteria().list(max:pagination.max, offset:pagination.offset) {
            if (pagination.centre) {eq("centre", pagination.centre)}
            if (pagination.id) {eq("id", pagination.id)}
            if (pagination.cardiacCareType) {eq("cardiacCareType", pagination.cardiacCareType)}
            if (pagination.patientStatus) {eq("patientStatus", pagination.patientStatus)}
            if (pagination.code) {ilike("code", "%${pagination.code}%")}
            if (pagination.externalId) {ilike("externalId", "%${pagination.externalId}%")}
            if (pagination.sort){order(pagination.sort, pagination.order)}
        }
        pagination.total=result.totalCount
        [pagination:pagination, patientList: result]
    }

    def show(Patient p) {
        Patient patient = Patient.get(params.patientId)
        if (!patient){
            return notFound()
        }
        patientService.checkPermission(patient)
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
        if (!patient){
            return notFound()
        }
        patientService.checkPermission(patient)
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
        patientService.checkPermission(patient)
        patient.save flush:true
        flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patient.id])
        redirect mapping:'editPatient', params:[patientId:patient.id]
    }

    @Transactional
    @Secured("ROLE_ADMIN")
    def delete() {
        Patient patient = Patient.get(params.patientId)
        if (patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        patient.delete flush:true

        redirect mapping:'patientList'
    }

    def postGet() {
        Patient patient = Patient.get(params.patientId)
        redirect mapping:'patientEdit', params: [patientId:patient.id], method:"GET"
    }

    @Transactional
    def savePersonalHistory(PersonalHistory personalHistory) {
        Patient patient = Patient.get(params.patientId)
        gericSectionUpdate(patient, personalHistory, "personalHistory", transactionStatus)
    }

    @Transactional
    def saveBaselineCondition(BaselineCondition baselineCondition) {
        Patient patient = Patient.get(params.patientId)
        gericSectionUpdate(patient, baselineCondition, "baselineCondition", transactionStatus)
    }

    @Transactional
    def savePreimplantSituation(PreimplantSituation preimplantSituation) {
        Patient patient = Patient.get(params.patientId)
        gericSectionUpdate(patient, preimplantSituation, "preimplantSituation", transactionStatus)
    }


    @Transactional
    def saveDiagnosisAndImplantGoals(DiagnosisAndImplantGoals diagnosisAndImplantGoals) {
        Patient patient = Patient.get(params.patientId)
        gericSectionUpdate(patient, diagnosisAndImplantGoals, "diagnosisAndImplantGoals", transactionStatus)
    }

    @Transactional
    def saveImplantData(ImplantData implantData) {
        //CHAPU
        Patient patient = Patient.get(params.patientId)
        if (implantData.implantType == ImplantType.findByCode("LVAD")){
            implantData.rvadData = null
            implantData.totalHeartData = null
            implantData.ecmoData = null
        }else if(implantData.implantType == ImplantType.findByCode("RVAD")){
            implantData.lvadData = null
            implantData.totalHeartData = null
            implantData.ecmoData = null
        }else if(implantData.implantType == ImplantType.findByCode("LVAD_RVAD")){
            implantData.ecmoData = null
            implantData.totalHeartData = null
        }else if(implantData.implantType == ImplantType.findByCode("TOTAL")){
            implantData.lvadData = null
            implantData.rvadData= null
            implantData.ecmoData= null
        }else if(implantData.implantType == ImplantType.findByCode("ECMO")){
            implantData.lvadData = null
            implantData.rvadData = null
            implantData.totalHeartData = null
        }
        implantData.validate()
        gericSectionUpdate(patient, implantData, "implantData", transactionStatus)
    }


    @Transactional
    def saveInitialData(InitialData initialData) {
        Patient patient = Patient.get(params.patientId)
        if (initialData?.patientDischarged){
            initialData.exitusData = null
        }else{
            initialData.dischargedData = null
        }
        initialData.validate()
        gericSectionUpdate(patient, initialData, "initialData", transactionStatus)
    }

    private def gericSectionUpdate(Patient patient, def command,String fieldName, def transactionStatus){
        if (patient == null || command == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        if (command.hasErrors()) {
            transactionStatus.setRollbackOnly()
            flash.error = message(code: 'patient.data.error')
            render model:editPatientModel(patient, command) ,view:'edit'
            return
        }
        patientService.checkPermission(patient)

        patient = patientService.update(patient, command, fieldName)
        flash.message = message(code: 'default.patient.updated.message', args: [patient.code])
        redirect mapping:'patientEdit', params: [patientId:  patient.id]
    }

    private def editPatientModel(Patient patient, def section = null){
        PersonalHistory personalHistory = patient.personalHistory?:new PersonalHistory()
        BaselineCondition baselineCondition = patient.baselineCondition?:new BaselineCondition()
        PreimplantSituation preimplantSituation = patient.preimplantSituation?:new PreimplantSituation()
        DiagnosisAndImplantGoals diagnosisAndImplantGoals = patient.diagnosisAndImplantGoals?:new DiagnosisAndImplantGoals()
        ImplantData implantData = patient.implantData?:new ImplantData()
        InitialData initialData = patient.initialData?:new InitialData()
        patient.events.findAll()
        List<Event> events = Event.findAllByPatient(patient, [sort: "eventDate", order: "desc",])
        def model = [
                patient:patient,
                personalHistory:personalHistory,
                baselineCondition:baselineCondition,
                preimplantSituation:preimplantSituation,
                diagnosisAndImplantGoals:diagnosisAndImplantGoals,
                implantData:implantData,
                initialData:initialData,
                events:events

        ]
        if (section && section instanceof PersonalHistory){
            model.personalHistory = section
        }else if(section && section instanceof BaselineCondition){
            model.baselineCondition = section
        }else if(section && section instanceof PreimplantSituation){
            model.preimplantSituation = section
        }else if(section && section instanceof DiagnosisAndImplantGoals){
            model.diagnosisAndImplantGoals = section
        }else if(section && section instanceof ImplantData){
            model.implantData = section
        }else if(section && section instanceof InitialData){
            model.initialData = section
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
