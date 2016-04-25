package espamacs

import espamacs.event.Event
import espamacs.exception.NotAuthorizedException
import espamacs.type.PatientStatus
import espamacs.type.event.RemovedAssistance
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.transaction.Transactional
import org.springframework.security.access.prepost.PreAuthorize

@Transactional
class PatientService {

    SpringSecurityService springSecurityService

    public void checkPermission(Patient patient){
        if (!patient){
            throw  new NotAuthorizedException();
        }
        EspamacsUser user = springSecurityService.currentUser;
        if (SpringSecurityUtils.ifNotGranted("ROLE_ADMIN") && patient.centre != user.centre){
            throw  new NotAuthorizedException();
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

    private PatientStatus calcPatientStatus(Patient patient){
        if (findRemovedAssistanceEvent(patient)!=null){
            return PatientStatus.findByCode("INACTIVE");
        }else if (isCompleted(patient)){
            return PatientStatus.findByCode("ACTIVE")
        }else{
            return PatientStatus.findByCode("INCOMPLETE")
        }
    }

    private Event findRemovedAssistanceEvent(Patient patient){
        List<Event> events = Event.findAllByPatient(patient)
        RemovedAssistance noRemovedAssistanceType = RemovedAssistance.findByCode("NO")
        Event removedAssistanceEvent = events.find{event -> event.removedAssistance != noRemovedAssistanceType}
        return removedAssistanceEvent
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
