package espamacs

import espamacs.event.Event
import espamacs.type.PatientStatus
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.transaction.Transactional
import org.springframework.security.access.AccessDeniedException

@Transactional
class PatientService {

    SpringSecurityService springSecurityService

    public void checkPermission(Patient patient){
        if (!patient){
            throw  new AccessDeniedException("patient.access.notAuthorized");
        }
        EspamacsUser user = springSecurityService.currentUser;
        if (SpringSecurityUtils.ifNotGranted("ROLE_ADMIN") && patient.centre != user.centre){
            throw  new AccessDeniedException("patient.access.notAuthorized");
        }
    }
    public void checkPermission(Long id){
        Patient patient = Patient.get(id)
        checkPermission(patient)
    }

    @Transactional
    public Patient update(Patient patient, def command,String fieldName) {
        checkPermission(patient) //ACL Chapu
        command.save()
        patient."${fieldName}" = command
        patient.patientStatus = calcPatientStatus(patient)
        patient.save(flush:true)
    }


    public Patient addEvent(Patient patient, Event event){
        checkPermission(patient) //ACL Chapu
        event.save()
        patient.patientStatus = calcPatientStatus(patient)
        patient.save()
    }

    public Patient deleteEvent( Event event){
        Patient patient = event.patient
        checkPermission(patient) //ACL Chapu
        event.delete()
        patient.patientStatus = calcPatientStatus(patient)
        patient.save()
    }

    private PatientStatus calcPatientStatus(Patient patient){
        if (findRemovedAssistanceEvent(patient)!=null || isDead(patient)){
            return PatientStatus.findByCode("INACTIVE");
        }else if (isCompleted(patient)){
            return PatientStatus.findByCode("ACTIVE")
        }else{
            return PatientStatus.findByCode("INCOMPLETE")
        }
    }

    private Event findRemovedAssistanceEvent(Patient patient){
        List<Event> events = Event.findAllByPatient(patient)
        Event removedAssistanceEvent = events.find{event -> event.removeAssistance }
        return removedAssistanceEvent
    }

    private boolean isDead(Patient patient){
        patient.events.find{it.patientDeath}
    }

    private boolean isCompleted(Patient patient){
        return patient.personalHistory!=null &&
                patient.preimplantSituation!=null &&
                patient.diagnosisAndImplantGoals!=null &&
                patient.implantData!=null &&
                patient.initialData!=null &&
                (   patient.baselineCondition!=null && patient.cardiacCareType.code=="LONG"
                        || patient.cardiacCareType.code!="LONG")
    }
}
