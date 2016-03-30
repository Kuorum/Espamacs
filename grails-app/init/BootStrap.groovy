import espamacs.Centre
import espamacs.EspamacsUser
import espamacs.EspamacsUserRole
import espamacs.Patient
import espamacs.Role
import espamacs.type.CardiacCareType
import espamacs.type.Gender
import espamacs.type.PatientStatus
import espamacs.type.baselineConditions.AorticValveStatus
import espamacs.type.baselineConditions.Lvef
import espamacs.type.baselineConditions.PeripheralEdemaLevel
import espamacs.type.baselineConditions.RightVentricleStatus
import espamacs.type.patientData.AortaPathology
import espamacs.type.patientData.BrainHemorrhage
import espamacs.type.patientData.ChronicAnemia
import espamacs.type.patientData.DiabeticType
import espamacs.type.patientData.DisplemiaType
import espamacs.type.patientData.DrinkerType
import espamacs.type.patientData.Hepatitis
import espamacs.type.patientData.HypertensiveType
import espamacs.type.patientData.IntravenouslyDrugsType
import espamacs.type.patientData.Leukemia
import espamacs.type.patientData.MalignantTumor
import espamacs.type.patientData.MalnutritionType
import espamacs.type.patientData.ObeseType
import espamacs.type.patientData.PeripheralVascularDisease
import espamacs.type.patientData.PreCardiacSurgery
import espamacs.type.patientData.PrimaryPulmonaryHypertension
import espamacs.type.patientData.PulmonaryEmbolism
import espamacs.type.patientData.RenalReplacementTherapy
import espamacs.type.patientData.SevereMentalRetardationType
import espamacs.type.patientData.SmokerType
import espamacs.type.patientData.SocialCareType
import espamacs.type.patientData.Stroke
import espamacs.type.patientData.ThyroidDisorders
import espamacs.type.patientData.TransientIschemicAttack

class BootStrap {

    def init = { servletContext ->
        Role roleUser = new Role("ROLE_USER").save()
        Role roleAdmin = new Role("ROLE_ADMIN").save()

        Centre ph = new Centre(name:"Puerta de hierro").save()
        Centre paz= new Centre(name: "La paz").save()

        new PatientStatus(code:"INCOMPLETE").save()
        new PatientStatus(code:"ACTIVE").save()
        new PatientStatus(code:"INACTIVE").save()

        new Gender(code:"MALE").save()
        new Gender(code:"FEMALE").save()

        new CardiacCareType(code: "SHORT").save()
        new CardiacCareType(code: "LONG").save()

        new SmokerType(code: "NO").save()
        new SmokerType(code: "YES").save()
        new SmokerType(code: "EX-SMOKER").save()
        new SmokerType(code: "UNKNOWN").save()

        new HypertensiveType(code: "NO").save()
        new HypertensiveType(code: "YES").save()
        new HypertensiveType(code: "UNKNOWN").save()

        new DiabeticType(code: "NO").save()
        new DiabeticType(code: "TYPE1").save()
        new DiabeticType(code: "TYPE2").save()
        new DiabeticType(code: "UNKNOWN").save()

        new DisplemiaType(code: "NO").save()
        new DisplemiaType(code: "YES").save()
        new DisplemiaType(code: "UNKNOWN").save()

        new ObeseType(code: "NO").save()
        new ObeseType(code: "YES").save()
        new ObeseType(code: "UNKNOWN").save()

        new MalnutritionType(code: "NO").save()
        new MalnutritionType(code: "YES").save()
        new MalnutritionType(code: "UNKNOWN").save()

        new DrinkerType(code: "NO_NEVER").save()
        new DrinkerType(code: "NO_NOW").save()
        new DrinkerType(code: "YES").save()

        new IntravenouslyDrugsType(code: "NO_NEVER").save()
        new IntravenouslyDrugsType(code: "NO_NOW").save()
        new IntravenouslyDrugsType(code: "YES").save()

        new SevereMentalRetardationType(code: "NO").save()
        new SevereMentalRetardationType(code: "YES").save()
        new SevereMentalRetardationType(code: "UNKNOWN").save()

        new SocialCareType(code: "NO").save()
        new SocialCareType(code: "YES").save()
        new SocialCareType(code: "UNKNOWN").save()

        new PreCardiacSurgery(code: "NO").save()
        new PreCardiacSurgery(code: "CABG").save()
        new PreCardiacSurgery(code: "VALVULAR").save()
        new PreCardiacSurgery(code: "VALVULAR_CORONARY").save()
        new PreCardiacSurgery(code: "CONGENITAL").save()
        new PreCardiacSurgery(code: "LVAD").save()
        new PreCardiacSurgery(code: "RVAD").save()
        new PreCardiacSurgery(code: "ECMO").save()
        new PreCardiacSurgery(code: "OTHER").save()


        new RenalReplacementTherapy(code:"NO").save()
        new RenalReplacementTherapy(code:"PERITONEAL_DIALYSIS").save()
        new RenalReplacementTherapy(code:"HEMODIALYSIS").save()
        new RenalReplacementTherapy(code:"KIDNEY_TRANSPLANT").save()

        new PrimaryPulmonaryHypertension(code:"NO").save()
        new PrimaryPulmonaryHypertension(code:"SOFT").save()
        new PrimaryPulmonaryHypertension(code:"MODERATE").save()
        new PrimaryPulmonaryHypertension(code:"SEVERE").save()

        new PulmonaryEmbolism(code: "NO").save()
        new PulmonaryEmbolism(code: "LESS_ONE_YEAR").save()
        new PulmonaryEmbolism(code: "MORE_ONE_YEAR").save()

        new Hepatitis(code:"NO").save()
        new Hepatitis(code:"VHB-HEALED").save()
        new Hepatitis(code:"VHC-HEALED").save()
        new Hepatitis(code:"VHB-CHRONIC").save()
        new Hepatitis(code:"VHC-CHRONIC").save()

        new AortaPathology(code: "NO").save()
        new AortaPathology(code: "THORACIC").save()
        new AortaPathology(code: "ABDOMINAL").save()
        new AortaPathology(code: "THORACIC_ABDOMINAL").save()

        new PeripheralVascularDisease(code:"NO").save()
        new PeripheralVascularDisease(code:"CAROTID_AXIS").save()
        new PeripheralVascularDisease(code:"ILIOFEMORAL_AXIS").save()
        new PeripheralVascularDisease(code:"MULTI_TERRITORY").save()

        new Stroke(code: "NO").save()
        new Stroke(code: "YES_AFTERMATH").save()
        new Stroke(code: "YES_HEALED").save()

        new TransientIschemicAttack(code: "NO").save()
        new TransientIschemicAttack(code: "LESS_ONE_YEAR").save()
        new TransientIschemicAttack(code: "MORE_ONE_YEAR").save()

        new BrainHemorrhage(code: "NO").save()
        new BrainHemorrhage(code: "LESS_SIX_MONTHS").save()
        new BrainHemorrhage(code: "MORE_SIX_MONTHS").save()

        new ThyroidDisorders(code: "NO").save()
        new ThyroidDisorders(code: "YES_HYPERTHYROIDISM").save()
        new ThyroidDisorders(code: "YES_HYPOTHYROIDISM").save()
        new ThyroidDisorders(code: "YES_OTHERS").save()

        new ChronicAnemia(code: "NO").save()
        new ChronicAnemia(code: "YES_NO_TREATEMENT").save()
        new ChronicAnemia(code: "YES_TREATEMENT").save()

        new MalignantTumor(code: "NO").save()
        new MalignantTumor(code: "YES_MORE_5_YEARS").save()
        new MalignantTumor(code: "YES_LESS_5_YEARS").save()

        new Leukemia(code: "NO").save()
        new Leukemia(code: "YES_MORE_5_YEARS").save()
        new Leukemia(code: "YES_LESS_5_YEARS").save()


        new PeripheralEdemaLevel(code: "NO").save()
        new PeripheralEdemaLevel(code: "MINOR").save()
        new PeripheralEdemaLevel(code: "MODERATE").save()
        new PeripheralEdemaLevel(code: "SEVERE").save()

        new Lvef(code: "PLUS_50").save()
        new Lvef(code: "40_50").save()
        new Lvef(code: "30_39").save()
        new Lvef(code: "20_29").save()
        new Lvef(code: "MINUS_20").save()

        new RightVentricleStatus(code: "NO").save()
        new RightVentricleStatus(code: "MINOR").save()
        new RightVentricleStatus(code: "MODERATE").save()
        new RightVentricleStatus(code: "SEVERE").save()

        new AorticValveStatus(code: "NORMAL").save()
        new AorticValveStatus(code: "PREVIOUS_AORTIC_VALVE_REPLACEMENT").save()
        new AorticValveStatus(code: "MINOR_AORTIC_INSUFFICIENCY").save()
        new AorticValveStatus(code: "MODERATE_AORTIC_INSUFFICIENCY").save()
        new AorticValveStatus(code: "SEVERE_AORTIC_INSUFFICIENCY").save()
        new AorticValveStatus(code: "MINOR_AORTIC_STENOSIS").save()
        new AorticValveStatus(code: "MODERATE_AORTIC_STENOSIS").save()
        new AorticValveStatus(code: "SEVERE_AORTIC_STENOSIS").save()

        /// TEST USERS

        EspamacsUser user = new EspamacsUser("user", "user")
        user.centre = ph
        user.save()
        EspamacsUser admin = new EspamacsUser("admin", "admin")
        admin.centre = paz
        admin.save()

        EspamacsUserRole.create(user, roleUser, true)
        EspamacsUserRole.create(admin, roleUser, true)
        EspamacsUserRole.create(admin, roleAdmin, true)

        // Test patient
        Patient patient = new Patient(
                [
                        patientStatus: PatientStatus.findByCode("INCOMPLETE"),
                        initials: "INC",
                        birthDate: new Date(),
                        weigh: 86.2D,
                        height: 156.3D,
                        gender: Gender.findByCode("FEMALE"),
                        centre:ph,
                        externalId:"ExternalId",
                        cardiacCareType: CardiacCareType.findByCode("LONG")
                ]
        )
        patient.save()

    }
    def destroy = {
    }
}
