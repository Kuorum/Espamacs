package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.diagnosis.DiagnosisAndImplantGoals
import espamacs.event.Event
import espamacs.implantData.ImplantData
import espamacs.initialData.InitialData
import espamacs.patientData.PersonalHistory
import espamacs.preimplantSituation.PreimplantSituation
import espamacs.type.BloodType
import espamacs.type.CardiacCareType
import espamacs.type.Gender
import espamacs.type.PatientStatus
import espamacs.type.RHFactor

class Patient {

    PatientStatus patientStatus
    String code;
    Date birthDate
    Gender gender

    Double height
    Double weigh
    Double bmi // Body mass index -> indice de masa corporal

    Centre centre;
    String externalId

    CardiacCareType cardiacCareType
    Date implantDate
    Integer patientAgeOnImplant
    BloodType bloodType
    RHFactor rhFactor

    PersonalHistory personalHistory
    BaselineCondition baselineCondition
    PreimplantSituation preimplantSituation
    DiagnosisAndImplantGoals diagnosisAndImplantGoals
    ImplantData implantData
    InitialData initialData

    List<Event> events

    static hasMany = [events: Event]
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
