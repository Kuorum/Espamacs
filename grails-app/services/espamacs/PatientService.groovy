package espamacs

import espamacs.event.Event
import espamacs.type.PatientStatus
import espamacs.type.event.RemovedAssistance
import grails.transaction.Transactional

@Transactional
class PatientService {

    @Transactional
    Patient update(Patient patient, def command,String fieldName) {
        command.save()
        patient."${fieldName}" = command
        patient.patientStatus = calcPatientStatus(patient)
        patient.save(flush:true)
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


    Patient addEvent(Patient patient, Event event){
        event.save()
        patient.patientStatus = calcPatientStatus(patient)
        patient.save()
    }
}
