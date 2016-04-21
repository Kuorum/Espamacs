package espamacs.patientData

import espamacs.type.BooleanDBType
import espamacs.type.patientData.PrimaryPulmonaryHypertension
import espamacs.type.patientData.PulmonaryEmbolism

class Respiratory {

    BooleanDBType severeLungDisease
    PrimaryPulmonaryHypertension primaryPulmonaryHypertension
    PulmonaryEmbolism pulmonaryEmbolism

    static constraints = {
    }

    static mapping = {
        severeLungDisease lazy: false, fetch: 'join'
        primaryPulmonaryHypertension lazy: false, fetch: 'join'
        pulmonaryEmbolism lazy: false, fetch: 'join'
    }
}
