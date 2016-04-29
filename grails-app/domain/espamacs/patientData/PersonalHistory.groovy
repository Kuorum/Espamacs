package espamacs.patientData

import espamacs.Patient
import espamacs.type.BooleanDBType
import espamacs.type.patientData.*

class PersonalHistory {

    Patient patient
    SmokerType smoker;
    BooleanDBType hypertensive;
    DiabeticType diabetic;
    BooleanDBType dyslipidemia;
    BooleanDBType obeseType;
    BooleanDBType malnutrition;
    DrinkerType drinker;
    IntravenouslyDrugsType intravenouslyDrugs;
    BooleanDBType severeMentalRetardation;
    BooleanDBType socialCareType;
    PreCardiacSurgery preCardiacSurgery;

    Renal renal
    Respiratory respiratory
    Gastric gastric
    Vascular vascular
    CentralNervousSystem centralNervousSystem
    EndocrineHematologicSystem endocrineHematologicSystem
    OncologicInfectious oncologicInfectious

    static belongsTo = [patient: Patient]

    static embedded = ['renal', 'respiratory','gastric','vascular','centralNervousSystem', 'endocrineHematologicSystem','oncologicInfectious']

    static mapping = {
        smoker lazy: false, fetch:'join'
        hypertensive lazy: false, fetch:'join'
        diabetic lazy: false, fetch:'join'
        dyslipidemia lazy: false, fetch:'join'
        obeseType lazy: false, fetch:'join'
        malnutrition lazy: false, fetch:'join'
        drinker lazy: false, fetch:'join'
        intravenouslyDrugs lazy: false, fetch:'join'
        severeMentalRetardation lazy: false, fetch:'join'
        socialCareType lazy: false, fetch:'join'
        preCardiacSurgery lazy: false, fetch:'join'
    }

    static constraints = {

    }
}


class CentralNervousSystem {

    Stroke stroke
    TransientIschemicAttack transientIschemicAttack
    BrainHemorrhage brainHemorrhage
    BooleanDBType severeNeurologicalDisease


    static constraints = {
    }

    static mapping = {
        stroke lazy: false, fetch: 'join'
        transientIschemicAttack lazy: false, fetch: 'join'
        brainHemorrhage lazy: false, fetch: 'join'
        severeNeurologicalDisease lazy: false, fetch: 'join'
    }
}


class EndocrineHematologicSystem {

    ThyroidDisorders thyroidDisorders
    ChronicAnemia chronicAnemia
    Boolean heparinInducedThrombocytopenia
    Boolean chronicCoagulopathy

    static constraints = {
    }

    static mapping = {
        thyroidDisorders lazy: false, fetch: 'join'
        chronicAnemia lazy: false, fetch: 'join'
    }
}


class Gastric {

    BooleanDBType gastricUlcer
    Hepatitis hepatitis
    BooleanDBType cirrhosis
    static constraints = {
    }

    static mapping = {
        gastricUlcer lazy: false, fetch: 'join'
        hepatitis lazy: false, fetch: 'join'
        cirrhosis lazy: false, fetch: 'join'
    }
}


class OncologicInfectious {

    MalignantTumor malignantTumor
    Leukemia leukemia
    BooleanDBType hiv
    BooleanDBType chronicInfectiousDiseases

    static constraints = {
    }

    static mapping = {
        malignantTumor lazy: false, fetch: 'join'
        leukemia lazy: false, fetch: 'join'
        hiv lazy: false, fetch: 'join'
        chronicInfectiousDiseases lazy: false, fetch: 'join'
    }
}



class Renal {

    Double baselineCreatinine
    Double creatinineClearance
    RenalReplacementTherapy renalReplacementTherapy

    static constraints = {
    }

    static mapping = {
        baselineCreatinine lazy: false, fetch: 'join'
        renalReplacementTherapy lazy: false, fetch: 'join'
    }
}


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