package espamacs.patientData

import espamacs.type.patientData.AortaPathology
import espamacs.type.patientData.PeripheralVascularDisease

class Vascular {

    AortaPathology aortaPathology
    PeripheralVascularDisease peripheralVascularDisease

    static constraints = {
    }

    static mapping = {
        aortaPathology lazy: false, fetch: 'join'
        peripheralVascularDisease lazy: false, fetch: 'join'
    }
}
