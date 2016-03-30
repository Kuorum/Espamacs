package espamacs.baselineConditions

import espamacs.Patient
import espamacs.type.baselineConditions.AorticValveStatus
import espamacs.type.baselineConditions.Lvef
import espamacs.type.baselineConditions.PeripheralEdemaLevel
import espamacs.type.baselineConditions.RightVentricleStatus

class BaselineCondition {

    Patient patient
    PeripheralEdemaLevel peripheralEdemaLevel
    Boolean ascites

    Lvef lvef
    RightVentricleStatus rightVentricleStatus
    List<AorticValveStatus> aorticValveStatuses

    static hasMany = [aorticValveStatuses: AorticValveStatus]


    static constraints = {
    }
}
