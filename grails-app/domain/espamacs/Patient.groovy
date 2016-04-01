package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.patientData.PersonalHistory
import espamacs.type.CardiacCareType
import espamacs.type.Gender
import espamacs.type.PatientStatus

class Patient {

    PatientStatus patientStatus
    String code;
    Date birthDate
    Double weigh
    Double height
    Gender gender

    Centre centre;
    String externalId
    CardiacCareType cardiacCareType

    PersonalHistory personalHistory
    BaselineCondition baselineCondition

    static mapping = {
        centre lazy: false
        cardiacCareType lazy: false
        gender lazy: false
        personalHistory lazy: false
        baselineCondition lazy: false
    }

    static constraints = {
        patientStatus nullable: false
        code nullable:false, minSize: 3
        centre nullable: false

        personalHistory nullable:true
        baselineCondition nullable: true
    }
}
