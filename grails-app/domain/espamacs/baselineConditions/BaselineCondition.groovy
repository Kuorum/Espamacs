package espamacs.baselineConditions

import espamacs.Patient
import espamacs.type.baselineConditions.PeripheralEdemaLevel

class BaselineCondition {

    Patient patient
    PeripheralEdemaLevel peripheralEdemaLevel
    Boolean ascites

    static constraints = {
    }
}
