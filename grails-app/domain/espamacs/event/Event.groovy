package espamacs.event

import espamacs.Patient
import espamacs.type.event.PatientHealthStatus
import espamacs.type.event.RemovedAssistance
import espamacs.type.event.RemovedAssistanceDeath

class Event { // THIS CLASS CAN NOT BE ABSTRACT DUE TO GORM

    Patient patient
    Date eventDate
    PatientHealthStatus patientHealthStatus
    Boolean patientDeath
    RemovedAssistance removedAssistance

    RemovedAssistanceDeath removedAssistanceDeath
    Integer aliveDays
    Boolean aliveAfterHospital

    static belongsTo = [patient:Patient]

    static mapping = {
        patientHealthStatus lazy: false, fetch: 'join'
        removedAssistance lazy: false, fetch: 'join'
    }

    static constraints = {
        removedAssistanceDeath nullable: true
        aliveDays nullable: true
        aliveAfterHospital nullable: true
    }
}
