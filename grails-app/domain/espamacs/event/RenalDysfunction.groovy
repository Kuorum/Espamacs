package espamacs.event

import espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment

class RenalDysfunction extends Event{

    Double creatinine
    RenalDysfunctionTreatment renalDysfunctionTreatment
    Integer therapyDays
    Boolean recoverRenalFunctionality


    static constraints = {
    }
}
