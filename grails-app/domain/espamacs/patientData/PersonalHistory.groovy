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

    static hasMany = [preCardiacSurgeries: PreCardiacSurgery]

    static belongsTo = [patient: Patient]

    static constraints = {

    }
}
