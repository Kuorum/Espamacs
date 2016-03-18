package espamacs

import espamacs.type.CardiacCareType
import espamacs.type.Gender
import espamacs.type.PatientStatus

class Patient {

    PatientStatus patientStatus
    String initials;
    Date birthDate
    Double weigh
    Double height
    Gender gender

    Centre centre;
    String externalId
    CardiacCareType cardiacCareType

    static constraints = {
        patientStatus nullable: false
        initials nullable:false, minSize: 3
        centre nullable: false
    }
}
