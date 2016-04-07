package espamacs.preimplantSituation

import espamacs.type.preimplantSituation.IntermacsSituation
import espamacs.type.preimplantSituation.IntropicMedication
import espamacs.type.preimplantSituation.PreimplantEvent

class PreimplantSituation {

    List<PreimplantEvent> preimplantEvents
    List<IntropicMedication> intropicMedications
    IntermacsSituation intermacsSituation

    static hasMany = [
            preimplantEvents: PreimplantEvent,
            intropicMedications:IntropicMedication
    ]

    static mapping = {
        preimplantEvents lazy: false, fetch: 'join'
        intropicMedications lazy: false, fetch: 'join'
        intermacsSituation lazy: false, fetch: 'join'
    }

    static constraints = {
    }
}
