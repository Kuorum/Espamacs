package espamacs.patientData

import espamacs.type.patientData.RenalReplacementTherapy

class Renal {

    Double baselineCreatinine
    RenalReplacementTherapy renalReplacementTherapy

    static constraints = {
    }

    static mapping = {
        baselineCreatinine lazy: false, fetch: 'join'
        renalReplacementTherapy lazy: false, fetch: 'join'
    }
}
