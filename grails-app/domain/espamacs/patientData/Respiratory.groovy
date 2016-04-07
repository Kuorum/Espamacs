package espamacs.patientData

import espamacs.type.patientData.PrimaryPulmonaryHypertension
import espamacs.type.patientData.PulmonaryEmbolism

class Respiratory {

    boolean severeLungDisease
    PrimaryPulmonaryHypertension primaryPulmonaryHypertension
    PulmonaryEmbolism pulmonaryEmbolism

    static constraints = {
    }

    static mapping = {
        primaryPulmonaryHypertension lazy: false, fetch: 'join'
        pulmonaryEmbolism lazy: false, fetch: 'join'
    }
}
