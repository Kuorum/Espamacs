package espamacs.diagnosis

import espamacs.type.diagnosis.Contraindication
import espamacs.type.diagnosis.CurrentSituation
import espamacs.type.diagnosis.ImplantGoal
import espamacs.type.diagnosis.MainCardiacImplantCause
import espamacs.type.diagnosis.MainLungImplantCause

class DiagnosisAndImplantGoals {

    ImplantGoal implantGoal
    Contraindication contraindication
    CurrentSituation currentSituation
    MainCardiacImplantCause cardiacImplantCause
    MainLungImplantCause mainLungImplantCause

    static constraints = {
    }

    static mapping = {
        implantGoal lazy: false, fetch: 'join'
        contraindication lazy: false, fetch: 'join'
        currentSituation lazy: false, fetch: 'join'
        cardiacImplantCause lazy: false, fetch: 'join'
        mainLungImplantCause lazy: false, fetch: 'join'
    }

}
