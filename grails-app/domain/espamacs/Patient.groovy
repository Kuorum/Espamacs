package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.diagnosis.DiagnosisAndImplantGoals
import espamacs.implantData.ImplantData
import espamacs.initialData.InitialData
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
    InitialData initialData

    static mapping = {
        centre lazy: false, fetch: 'select'
        cardiacCareType lazy: false, fetch: 'select'
        gender lazy: false, fetch: 'select'
        personalHistory lazy: false, fetch: 'select'
        baselineCondition lazy: false, fetch: 'select'
        preimplantSituation lazy: false, fetch: 'select'
        diagnosisAndImplantGoals lazy: false, fetch: 'select'
        implantData lazy: false, fetch: 'select'
        initialData lazy: false, fetch: 'select'
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
        implantData nullable: true
        initialData nullable: true
    }
}
