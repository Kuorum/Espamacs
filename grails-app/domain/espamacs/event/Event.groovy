package espamacs.event

import espamacs.Patient
import espamacs.type.event.PatientHealthStatus

class Event { // THIS CLASS CAN NOT BE ABSTRACT DUE TO GORM

    Patient patient
    Date eventDate
    PatientHealthStatus patientHealthStatus
    Boolean patientDeath

    Boolean removeAssistance = Boolean.FALSE

    static belongsTo = [patient:Patient]

    static mapping = {
        patientHealthStatus lazy: false, fetch: 'join'
    }

    static constraints = {
    }
}
