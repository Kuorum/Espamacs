package espamacs.patientData

import espamacs.Patient
import espamacs.type.BooleanDBType
import espamacs.type.patientData.*

class PersonalHistory {

    Patient patient
    SmokerType smoker;
    BooleanDBType hypertensive;
    DiabeticType diabetic;
    BooleanDBType displemia;
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
        displemia lazy: false, fetch:'join'
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
