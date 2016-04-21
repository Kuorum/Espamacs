package espamacs.patientData

import espamacs.type.BooleanDBType
import espamacs.type.patientData.BrainHemorrhage
import espamacs.type.patientData.Stroke
import espamacs.type.patientData.TransientIschemicAttack

class CentralNervousSystem {

    Stroke stroke
    TransientIschemicAttack transientIschemicAttack
    BrainHemorrhage brainHemorrhage
    BooleanDBType severeNeurologicalDisease


    static constraints = {
    }

    static mapping = {
        stroke lazy: false, fetch: 'join'
        transientIschemicAttack lazy: false, fetch: 'join'
        brainHemorrhage lazy: false, fetch: 'join'
        severeNeurologicalDisease lazy: false, fetch: 'join'
    }
}
