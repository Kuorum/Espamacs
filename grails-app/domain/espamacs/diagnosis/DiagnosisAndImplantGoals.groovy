package espamacs.diagnosis

import espamacs.type.BooleanDBType
import espamacs.type.diagnosis.ImplantCause
import espamacs.type.diagnosis.ImplantGoal
import espamacs.type.diagnosis.MainCardiacImplantCause
import espamacs.type.diagnosis.MainLungImplantCause

class DiagnosisAndImplantGoals {

    ImplantGoal implantGoal
    BooleanDBType contraindication
    ImplantCause implantCause
    MainCardiacImplantCause cardiacImplantCause
    MainLungImplantCause mainLungImplantCause

    static constraints = {
    }

    static mapping = {
        implantGoal lazy: false, fetch: 'join'
        contraindication lazy: false, fetch: 'join'
        implantCause lazy: false, fetch: 'join'
        cardiacImplantCause lazy: false, fetch: 'join'
        mainLungImplantCause lazy: false, fetch: 'join'
    }

}
