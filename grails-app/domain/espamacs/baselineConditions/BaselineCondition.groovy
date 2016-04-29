package espamacs.baselineConditions

import espamacs.Patient
import espamacs.type.BooleanDBType
import espamacs.type.baselineConditions.AorticValveStatus
import espamacs.type.baselineConditions.Lvef
import espamacs.type.baselineConditions.Medication
import espamacs.type.baselineConditions.MitralValveStatus
import espamacs.type.baselineConditions.Nyha
import espamacs.type.baselineConditions.PeripheralEdemaLevel
import espamacs.type.baselineConditions.RightVentricleDilatation
import espamacs.type.baselineConditions.RightVentricleStatus
import espamacs.type.baselineConditions.TricuspidValveStatus

class BaselineCondition {

    Patient patient
    BooleanDBType peripheralEdemaLevel
    BooleanDBType ascites

    Date echocardiogramDate
    Lvef lvef
    RightVentricleStatus rightVentricleStatus
    Double tapse
    RightVentricleDilatation rightVentricleDilatation
    List<AorticValveStatus> aorticValveStatuses
    List<MitralValveStatus> mitralValveStatuses
    List<TricuspidValveStatus> tricuspidValveStatuses
    Double lvdtdd
    Double lvesd
    Double volumeEndSistole
    Double volumeEndDiastole

    HemodynamicData hemodynamicData

    Date sixMinutesDate
    Double sixMinutesTestDistanceMetres
    Double sixMinutesTestDistanceV02
    List<Medication> medications

    Date analyticDate
    Double sodium
    Double potassium
    Double creatinine
    Double urea
    Double alt // enzima alanina aminotransferasa
    Double ast // enzima aspartato aminotransferasa
    Double ldh // Lactate dehydrogenase
    Double cpk // Creatine phosphokinase
    Double bilirubin
    Double leukocytes
    Double hemoglobin
    Double platelets
    Double inr // International normalized ratio - Ratio Internacional Normalizado
    Double NTproBNP // prohormona N-terminal del péptido natriurético cerebral
    Double crp // proteína C reactiva (PCR)
    Double albumin
    Double lactate

    Nyha nyha

    static hasMany = [
            aorticValveStatuses: AorticValveStatus,
            mitralValveStatuses:MitralValveStatus,
            tricuspidValveStatuses:TricuspidValveStatus,
            medications:Medication
    ]

    static mapping = {
        peripheralEdemaLevel lazy: false, fetch: 'join'
        aorticValveStatuses lazy: false, fetch: 'join'
        mitralValveStatuses lazy: false, fetch: 'join'
        lvef lazy: false, fetch: 'join'
        rightVentricleStatus lazy: false, fetch: 'join'
        tapse lazy: false, fetch: 'join'
        rightVentricleDilatation lazy: false, fetch: 'join'
        tricuspidValveStatuses lazy: false, fetch: 'join'
        medications lazy: false, fetch: 'join'
        nyha lazy: false, fetch: 'join'
    }

    static embedded = ['hemodynamicData']

    static constraints = {
    }
}

class HemodynamicData {

    Date catheterizationDate
    Double systolicArterialPressure
    Double diastolicArterialPressure
    Double averageArterialPressure
    Double hearRate

    Double systolicArterialPulmonaryPressure
    Double diastolicArterialPulmonaryPressure
    Double averageArterialPulmonaryPressure

    Double pulmonaryCapillaryPressure
    Double transpulmonaryGradient
    Double centralVenousPressure

    Double pulmonaryVascularResistance
    Double systemicVascularResistance
    Double systolicEffortIndex
    Double cardiacOutput
    Double cardiacIndex


    static constraints = {
    }
}

