package espamacs.event

import espamacs.Patient

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def show() {
        Event event = Event.get(params.eventId)
        respond event
    }

    def createMalfunctionDevice(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new MalfunctionDevice(params)]
    }

    @Transactional
    def saveMalfunctionDevice(MalfunctionDevice malfunctionDevice){
        Patient patient = Patient.get(params.patientId)
        save(malfunctionDevice, patient, transactionStatus)
    }

    def createHemorrhage(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new Hemorrhage(params)]
    }

    @Transactional
    def saveHemorrhage(Hemorrhage hemorrhage){
        Patient patient = Patient.get(params.patientId)
        save(hemorrhage, patient, transactionStatus)
    }


    def createInfection(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new Infection(params)]
    }
    @Transactional
    def saveInfection(Infection infection){
        Patient patient = Patient.get(params.patientId)
        save(infection, patient, transactionStatus)
    }

    def createNeurologicalDysfunction(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new NeurologicalDysfunction(params)]
    }
	@Transactional
	def saveNeurologicalDysfunction(NeurologicalDysfunction neurologicalDysfunction){
        Patient patient = Patient.get(params.patientId)
        save(neurologicalDysfunction, patient, transactionStatus)
    }

    def createArrhythmia(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new Arrhythmia(params)]
    }
	@Transactional
	def saveArrhythmia(Arrhythmia arrhythmia){
        Patient patient = Patient.get(params.patientId)
        save(arrhythmia, patient, transactionStatus)
    }

    def createHepaticDysfunction(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new HepaticDysfunction(params)]
    }
	@Transactional
	def saveHepaticDysfunction(HepaticDysfunction hepaticDysfunction){
        Patient patient = Patient.get(params.patientId)
        save(hepaticDysfunction, patient, transactionStatus)
    }

    def createRenalDysfunction(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new RenalDysfunction(params)]
    }
	@Transactional
	def saveRenalDysfunction(RenalDysfunction renalDysfunction){
        Patient patient = Patient.get(params.patientId)
        save(renalDysfunction, patient, transactionStatus)
    }

    def createRespiratoryFailure(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new RespiratoryFailure(params)]
    }
	@Transactional
	def saveRespiratoryFailure(RespiratoryFailure respiratoryFailure){
        Patient patient = Patient.get(params.patientId)
        save(respiratoryFailure, patient, transactionStatus)
    }

    def createArterialThromboembolism(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new ArterialThromboembolism(params)]
    }
	@Transactional
	def saveArterialThromboembolism(ArterialThromboembolism arterialThromboembolism){
        Patient patient = Patient.get(params.patientId)
        save(arterialThromboembolism, patient, transactionStatus)
    }

    def createWoundDehiscence(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new WoundDehiscence(params)]
    }
	@Transactional
	def saveWoundDehiscence(WoundDehiscence woundDehiscence){
        Patient patient = Patient.get(params.patientId)
        save(woundDehiscence, patient, transactionStatus)
    }

    def createVenousThromboembolism(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new VenousThromboembolism(params)]
    }
	@Transactional
	def saveVenousThromboembolism(VenousThromboembolism venousThromboembolism){
        Patient patient = Patient.get(params.patientId)
        save(venousThromboembolism, patient, transactionStatus)
    }

    def createMyocardialInfarction(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new MyocardialInfarction(params)]
    }
	@Transactional
	def saveMyocardialInfarction(MyocardialInfarction myocardialInfarction){
        Patient patient = Patient.get(params.patientId)
        save(myocardialInfarction, patient, transactionStatus)
    }

    def createPericardialEffusion(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new PericardialEffusion(params)]
    }
	@Transactional
	def savePericardialEffusion(PericardialEffusion pericardialEffusion){
        Patient patient = Patient.get(params.patientId)
        save(pericardialEffusion, patient, transactionStatus)
    }

    def createHemolysis(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new Hemolysis(params)]
    }
	@Transactional
	def saveHemolysis(Hemolysis hemolysis){
        Patient patient = Patient.get(params.patientId)
        save(hemolysis, patient, transactionStatus)
    }

    def createRightHeartFailure(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new RightHeartFailure(params)]
    }
	@Transactional
	def saveRightHeartFailure(RightHeartFailure rightHeartFailure){
        Patient patient = Patient.get(params.patientId)
        save(rightHeartFailure, patient, transactionStatus)
    }

    def createPeripheralVascularAccessComplications(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new PeripheralVascularAccessComplications(params)]
    }
	@Transactional
	def savePeripheralVascularAccessComplications(PeripheralVascularAccessComplications peripheralVascularAccessComplications){
        Patient patient = Patient.get(params.patientId)
        save(peripheralVascularAccessComplications, patient, transactionStatus)
    }

    def createOtherEvent(){
        Patient patient = Patient.get(params.patientId)
        respond patient, view: 'create', model:[patient:patient, event:new OtherEvent(params)]
    }
	@Transactional
	def saveOtherEvent(OtherEvent otherEvent){
        Patient patient = Patient.get(params.patientId)
        save(otherEvent, patient, transactionStatus)
    }

    private save(Event event, Patient patient, def transactionStatus) {
        if (event == null || patient == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (event.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond event.errors, view:'create', model:[patient:patient, event:event]
            return
        }

        event.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: "patient.create.step8.events.createEventsButton.${event.class.simpleName}",  default: 'Se ha creado satisfactoriamente el evento')
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
