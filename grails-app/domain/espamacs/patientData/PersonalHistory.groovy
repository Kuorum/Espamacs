package espamacs.patientData

import espamacs.Patient
import espamacs.type.patientData.DiabeticType
import espamacs.type.patientData.DisplemiaType
import espamacs.type.patientData.DrinkerType
import espamacs.type.patientData.HypertensiveType
import espamacs.type.patientData.IntravenouslyDrugsType
import espamacs.type.patientData.MalnutritionType
import espamacs.type.patientData.ObeseType
import espamacs.type.patientData.PreCardiacSurgery
import espamacs.type.patientData.SevereMentalRetardationType
import espamacs.type.patientData.SmokerType
import espamacs.type.patientData.SocialCareType

class PersonalHistory {

    Patient patient
    SmokerType smoker;
    HypertensiveType hypertensive;
    DiabeticType diabetic;
    DisplemiaType displemia;
    ObeseType obeseType;
    MalnutritionType malnutrition;
    DrinkerType drinker;
    IntravenouslyDrugsType intravenouslyDrugs;
    SevereMentalRetardationType severeMentalRetardation;
    SocialCareType socialCareType;
    List<PreCardiacSurgery> preCardiacSurgeries;

    Renal renal
    Respiratory respiratory
    Gastric gastric
    Vascular vascular
    CentralNervousSystem centralNervousSystem
    EndocrineHematologicSystem endocrineHematologicSystem
    OncologicInfectious oncologicInfectious

    static belongsTo = [patient: Patient]
    static hasMany = [preCardiacSurgeries: PreCardiacSurgery]

    static embedded = ['renal', 'respiratory','gastric','vascular','centralNervousSystem', 'endocrineHematologicSystem','oncologicInfectious']

    static mapping = {
        preCardiacSurgeries lazy: false, fetch: 'join'
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
        preCardiacSurgeries lazy: false, fetch:'join'
    }

    static constraints = {

    }
}
