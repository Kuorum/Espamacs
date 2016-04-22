package espamacs.initialData

import espamacs.type.BooleanDBType
import espamacs.type.initialData.*

class InitialData {

    Boolean patientDeath
    DischargedData dischargedData
    ExitusData exitusData
    Integer uciTime
    Integer hospitalizedTime
    TimeWithoutIntropicIV timeWithoutIntropicIV
    Integer ventilationTime
    List<SurgicalProcedureAfterTransplant> surgicalProceduresAfterTransplant
    List<CardiacSurgicalProcedure> cardiacSurgicalProcedures
    List<OtherSurgicalProcedure> otherSurgicalProcedures
    List<CardiologicalTreatmenAtDischarge> cardiologicalTreatmensAtDischarge
    BooleanDBType antiheparineAntibodies
    List<BloodMedication> bloodMedications

    static constraints = {
        dischargedData nullable: true
        exitusData nullable: true
    }

    static mapping = {
        dischargedData lazy: false, fetch: 'join'
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

    static embedded = ['dischargedData', 'exitusData']

}



class DischargedData {

    Date dischargedDate
    DischargedDestination dischargedDestination
    DischargedStatus dischargedStatus


    static constraints = {
    }

    static mapping = {
        dischargedDestination lazy: false, fetch: 'join'
        dischargedStatus lazy: false, fetch: 'join'
    }

}

class ExitusData {

    Date exitusDate
    ExistusStatus existusStatus


    static constraints = {
    }

    static mapping = {
        existusStatus lazy: false, fetch: 'join'
    }

}