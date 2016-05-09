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
    Double nTproBNP // prohormona N-terminal del péptido natriurético cerebral
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

        nTproBNP column : 'ntprobnp'
    }

    static embedded = ['hemodynamicData']

    static constraints = {
        echocardiogramDate nullable:true
        tapse nullable:true
        lvdtdd nullable:true
        lvesd nullable:true
        volumeEndSistole nullable:true
        volumeEndDiastole nullable:true
        sixMinutesDate nullable:true
        sixMinutesTestDistanceMetres nullable:true
        sixMinutesTestDistanceV02 nullable:true
        analyticDate nullable:true
        sodium nullable:true
        potassium nullable:true
        creatinine nullable:true
        urea nullable:true
        alt nullable:true
        ast nullable:true
        ldh nullable:true
        cpk nullable:true
        bilirubin nullable:true
        leukocytes nullable:true
        hemoglobin nullable:true
        platelets nullable:true
        inr nullable:true
        nTproBNP nullable:true
        crp nullable:true
        albumin nullable:true
        lactate nullable:true
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
    Double pulmonaryVascularResistanceWoodUnits
    Double systemicVascularResistance
    Double systolicEffortIndex
    Double cardiacOutput
    Double cardiacIndex


    static constraints = {
        catheterizationDate nullable:true
        systolicArterialPressure nullable:true
        diastolicArterialPressure nullable:true
        averageArterialPressure nullable:true
        hearRate nullable:true
        systolicArterialPulmonaryPressure nullable:true
        diastolicArterialPulmonaryPressure nullable:true
        averageArterialPulmonaryPressure nullable:true
        pulmonaryCapillaryPressure nullable:true
        transpulmonaryGradient nullable:true
        centralVenousPressure nullable:true
        pulmonaryVascularResistance nullable:true
        pulmonaryVascularResistanceWoodUnits nullable:true
        systemicVascularResistance nullable:true
        systolicEffortIndex nullable:true
        cardiacOutput nullable:true
        cardiacIndex nullable:true
    }
}

