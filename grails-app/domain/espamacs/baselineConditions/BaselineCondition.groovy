package espamacs.baselineConditions

import espamacs.Patient
import espamacs.type.baselineConditions.AorticValveStatus
import espamacs.type.baselineConditions.Lvef
import espamacs.type.baselineConditions.MitralValveStatus
import espamacs.type.baselineConditions.PeripheralEdemaLevel
import espamacs.type.baselineConditions.RightVentricleStatus
import espamacs.type.baselineConditions.TricuspidValveStatus

class BaselineCondition {

    Patient patient
    PeripheralEdemaLevel peripheralEdemaLevel
    Boolean ascites

    Lvef lvef
    RightVentricleStatus rightVentricleStatus
    List<AorticValveStatus> aorticValveStatuses
    List<MitralValveStatus> mitralValveStatuses
    List<TricuspidValveStatus> tricuspidValveStatuses
    Double lvdtdd
    Double lvesd
    Double volumeEndSistole
    Double volumeEndDiastole

    HemodynamicData hemodynamicData

    static hasMany = [aorticValveStatuses: AorticValveStatus, mitralValveStatuses:AorticValveStatus, tricuspidValveStatuses:TricuspidValveStatus]

    static embedded = ['hemodynamicData']

    static constraints = {
    }
}
