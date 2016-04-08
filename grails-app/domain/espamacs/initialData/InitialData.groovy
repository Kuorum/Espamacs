package espamacs.initialData

import espamacs.type.diagnosis.*
import espamacs.type.initialData.AntiheparineAntibodies
import espamacs.type.initialData.BloodMedication
import espamacs.type.initialData.CardiacSurgicalProcedure
import espamacs.type.initialData.CardiologicalTreatmenAtDischarge
import espamacs.type.initialData.DischargedDestination
import espamacs.type.initialData.OtherSurgicalProcedure
import espamacs.type.initialData.SurgicalProcedureAfterTransplant
import espamacs.type.initialData.TimeWithoutIntropicIV
import espamacs.type.preimplantSituation.IntropicMedication
import espamacs.type.preimplantSituation.PreimplantEvent

class InitialData {

    Date dischargedDate
    DischargedDestination dischargedDestination
    Double uciTime
    Double hospitalizedTime
    TimeWithoutIntropicIV timeWithoutIntropicIV
    Double ventilationTime
    List<SurgicalProcedureAfterTransplant> surgicalProceduresAfterTransplant
    List<CardiacSurgicalProcedure> cardiacSurgicalProcedures
    List<OtherSurgicalProcedure> otherSurgicalProcedures
    List<CardiologicalTreatmenAtDischarge> cardiologicalTreatmensAtDischarge
    AntiheparineAntibodies antiheparineAntibodies
    List<BloodMedication> bloodMedications

    static constraints = {
    }

    static mapping = {
        dischargedDestination lazy: false, fetch: 'join'
        timeWithoutIntropicIV lazy: false, fetch: 'join'
        surgicalProceduresAfterTransplant lazy: false, fetch: 'join'
        cardiacSurgicalProcedures lazy: false, fetch: 'join'
        otherSurgicalProcedures lazy: false, fetch: 'join'
        cardiologicalTreatmensAtDischarge lazy: false, fetch: 'join'
        antiheparineAntibodies lazy: false, fetch: 'join'
        bloodMedications lazy: false, fetch: 'join'
    }


    static hasMany = [
            surgicalProceduresAfterTransplant: SurgicalProcedureAfterTransplant,
            cardiacSurgicalProcedures:CardiacSurgicalProcedure,
            otherSurgicalProcedures:OtherSurgicalProcedure,
            cardiologicalTreatmensAtDischarge:CardiologicalTreatmenAtDischarge,
            bloodMedications:BloodMedication,
    ]

}
