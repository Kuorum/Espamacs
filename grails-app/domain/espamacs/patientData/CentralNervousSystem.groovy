package espamacs.patientData

import espamacs.type.patientData.BrainHemorrhage
import espamacs.type.patientData.Stroke
import espamacs.type.patientData.TransientIschemicAttack

class CentralNervousSystem {

    Stroke stroke
    TransientIschemicAttack transientIschemicAttack
    BrainHemorrhage brainHemorrhage
    Boolean severeNeurologicalDisease


    static constraints = {
    }

    static mapping = {
        stroke lazy: false, fetch: 'join'
        transientIschemicAttack lazy: false, fetch: 'join'
        brainHemorrhage lazy: false, fetch: 'join'
    }
}
