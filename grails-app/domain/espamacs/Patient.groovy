package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.diagnosis.DiagnosisAndImplantGoals
import espamacs.implantData.ImplantData
import espamacs.patientData.PersonalHistory
import espamacs.preimplantSituation.PreimplantSituation
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
    PreimplantSituation preimplantSituation
    DiagnosisAndImplantGoals diagnosisAndImplantGoals
    ImplantData implantData

    static mapping = {
        centre lazy: false, fetch: 'join'
        cardiacCareType lazy: false, fetch: 'join'
        gender lazy: false, fetch: 'join'
        personalHistory lazy: false, fetch: 'join'
        baselineCondition lazy: false, fetch: 'join'
        preimplantSituation lazy: false, fetch: 'join'
        diagnosisAndImplantGoals lazy: false, fetch: 'join'
    }

    static constraints = {
        patientStatus nullable: false
        code nullable:false, minSize: 3
        centre nullable: false

        personalHistory nullable:true
        baselineCondition nullable: true
        preimplantSituation nullable: true
        diagnosisAndImplantGoals nullable: true
        implantData nullable:true
    }
}
