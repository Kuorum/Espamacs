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
import espamacs.type.baselineConditions.Medication
import espamacs.type.baselineConditions.MitralValveStatus
import espamacs.type.baselineConditions.Nyha
import espamacs.type.baselineConditions.PeripheralEdemaLevel
import espamacs.type.baselineConditions.RightVentricleStatus
import espamacs.type.baselineConditions.TricuspidValveStatus
import espamacs.type.diagnosis.Contraindication
import espamacs.type.diagnosis.CurrentSituation
import espamacs.type.diagnosis.ImplantGoal
import espamacs.type.diagnosis.MainCardiacImplantCause
import espamacs.type.diagnosis.MainLungImplantCause
import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.EcmoBrand
import espamacs.type.implantData.HeartTotalBrand
import espamacs.type.implantData.ImplantEcmoIn
import espamacs.type.implantData.ImplantEcmoOut
import espamacs.type.implantData.ImplantLvadIn
import espamacs.type.implantData.ImplantLvadOut
import espamacs.type.implantData.ImplantRvadIn
import espamacs.type.implantData.ImplantRvadOut
import espamacs.type.implantData.ImplantTotalIn
import espamacs.type.implantData.ImplantTotalOut
import espamacs.type.implantData.ImplantType
import espamacs.type.implantData.LvadBrand
import espamacs.type.implantData.RvadBrand
import espamacs.type.initialData.AntiheparineAntibodies
import espamacs.type.initialData.BloodMedication
import espamacs.type.initialData.CardiacSurgicalProcedure
import espamacs.type.initialData.CardiologicalTreatmenAtDischarge
import espamacs.type.initialData.DischargedDestination
import espamacs.type.initialData.OtherSurgicalProcedure
import espamacs.type.initialData.SurgicalProcedureAfterTransplant
import espamacs.type.initialData.TimeWithoutIntropicIV
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
import espamacs.type.preimplantSituation.IntermacsSituation
import espamacs.type.preimplantSituation.IntropicMedication
import espamacs.type.preimplantSituation.PreimplantEvent

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

        new SmokerType(code: "UNKNOWN").save()
        new SmokerType(code: "NO").save()
        new SmokerType(code: "YES").save()
        new SmokerType(code: "EX-SMOKER").save()

        new HypertensiveType(code: "UNKNOWN").save()
        new HypertensiveType(code: "NO").save()
        new HypertensiveType(code: "YES").save()

        new DiabeticType(code: "UNKNOWN").save()
        new DiabeticType(code: "NO").save()
        new DiabeticType(code: "TYPE1").save()
        new DiabeticType(code: "TYPE2").save()

        new DisplemiaType(code: "UNKNOWN").save()
        new DisplemiaType(code: "NO").save()
        new DisplemiaType(code: "YES").save()

        new ObeseType(code: "UNKNOWN").save()
        new ObeseType(code: "NO").save()
        new ObeseType(code: "YES").save()

        new MalnutritionType(code: "UNKNOWN").save()
        new MalnutritionType(code: "NO").save()
        new MalnutritionType(code: "YES").save()

        new DrinkerType(code: "NO_NEVER").save()
        new DrinkerType(code: "NO_NOW").save()
        new DrinkerType(code: "YES").save()

        new IntravenouslyDrugsType(code: "NO_NEVER").save()
        new IntravenouslyDrugsType(code: "NO_NOW").save()
        new IntravenouslyDrugsType(code: "YES").save()

        new SevereMentalRetardationType(code: "UNKNOWN").save()
        new SevereMentalRetardationType(code: "NO").save()
        new SevereMentalRetardationType(code: "YES").save()

        new SocialCareType(code: "UNKNOWN").save()
        new SocialCareType(code: "NO").save()
        new SocialCareType(code: "YES").save()

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

        new MitralValveStatus(code: "NORMAL").save()
        new MitralValveStatus(code: "PREVIOUS_MITRAL_VALVE_REPLACEMENT").save()
        new MitralValveStatus(code: "MINOR_MITRAL_INSUFFICIENCY").save()
        new MitralValveStatus(code: "MODERATE_MITRAL_INSUFFICIENCY").save()
        new MitralValveStatus(code: "SEVERE_MITRAL_INSUFFICIENCY").save()
        new MitralValveStatus(code: "MINOR_MITRAL_STENOSIS").save()
        new MitralValveStatus(code: "MODERATE_MITRAL_STENOSIS").save()
        new MitralValveStatus(code: "SEVERE_MITRAL_STENOSIS").save()

        new TricuspidValveStatus(code: "NORMAL").save()
        new TricuspidValveStatus(code: "PREVIOUS_TRICUSPID_VALVE_REPLACEMENT").save()
        new TricuspidValveStatus(code: "MINOR_TRICUSPID_INSUFFICIENCY").save()
        new TricuspidValveStatus(code: "MODERATE_TRICUSPID_INSUFFICIENCY").save()
        new TricuspidValveStatus(code: "SEVERE_TRICUSPID_INSUFFICIENCY").save()
        new TricuspidValveStatus(code: "MINOR_TRICUSPID_STENOSIS").save()
        new TricuspidValveStatus(code: "MODERATE_TRICUSPID_STENOSIS").save()
        new TricuspidValveStatus(code: "SEVERE_TRICUSPID_STENOSIS").save()


        new Medication(code: "ACE_INHIBITORS").save()
        new Medication(code: "ARBS_II").save()
        new Medication(code: "CALCIUM_BLOCKERS").save()
        new Medication(code: "BETA_BLOCKERS").save()
        new Medication(code: "ALDOSTERONE_BLOCKERS").save()
        new Medication(code: "LOOP_DIURETICS").save()
        new Medication(code: "AMIODARONE").save()
        new Medication(code: "DIGOXIN").save()
        new Medication(code: "OTHER_ANTIARRYTHMICS").save()
        new Medication(code: "WARFARIN").save()
        new Medication(code: "HEPARIN").save()
        new Medication(code: "ANTIAGGREGANT").save()
        new Medication(code: "NITRIC_OXIDE").save()
        new Medication(code: "SILDENAFIL").save()
        new Medication(code: "ILOPROST").save()
        new Medication(code: "BOSENTAN").save()
        new Medication(code: "NESERITIDE").save()
        new Medication(code: "RESYNCHRONIZATION_THERAPIES").save()

        new Nyha(code:"TYPE_I").save()
        new Nyha(code:"TYPE_II").save()
        new Nyha(code:"TYPE_III").save()
        new Nyha(code:"TYPE_IV").save()

        new PreimplantEvent(code:"IABP").save() //Intra-aortic balloon pump
        new PreimplantEvent(code:"VAD").save() //ventricular assist device,
        new PreimplantEvent(code:"ECMO").save() //ventricular assist device,
        new PreimplantEvent(code:"DIALYSIS").save() //Intra-aortic balloon pump
        new PreimplantEvent(code:"ULTRAFILTRATION").save() //Intra-aortic balloon pump
        new PreimplantEvent(code:"INVASIVE_MV").save() //Ventilación mecánica invasiva - invasive mechanical ventilation

        new IntropicMedication(code:"DOBUTAMINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"DOPAMINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"NORADRENALINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"ADRENALINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"NITRIC_OXIDE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"MILRINONE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"LEVOSIMENDAN").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"ISOPROTERENOL").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"OTHERS").save() //Ventilación mecánica invasiva - invasive mechanical ventilation

        new IntermacsSituation(code:"INTERMACS_1").save()
		new IntermacsSituation(code:"INTERMACS_2").save()
        new IntermacsSituation(code:"INTERMACS_3").save()
		new IntermacsSituation(code:"INTERMACS_4").save()
        new IntermacsSituation(code:"INTERMACS_5").save()
		new IntermacsSituation(code:"INTERMACS_6").save()
        new IntermacsSituation(code:"INTERMACS_7").save()

        new ImplantGoal(code:"TRANSITION_RECOVERY").save()
        new ImplantGoal(code:"TRANSITION_TRANSPLANT").save()
        new ImplantGoal(code:"POSSIBLE_TRANSITION_TRANSPLANT").save()
        new ImplantGoal(code:"TARGET_THERAPY").save()
        new ImplantGoal(code:"OTHER").save()

        new Contraindication(code: "UNKNOWN").save()
        new Contraindication(code: "NO").save()
        new Contraindication(code: "YES").save()

        new CurrentSituation(code: "ELECTIVE_IMPLANT").save() // Implante electivo
        new CurrentSituation(code: "URGENT_IMPLANT").save() // Implante urgente
        new CurrentSituation(code: "EMERGING_IMPLANT").save() // Implante emergente
        new CurrentSituation(code: "POSTCARDIOTOMY").save() // Postcardiotomía
        new CurrentSituation(code: "OTHERS").save() // Otros

        new MainCardiacImplantCause(code:"NONE").save() //Ninguna
		new MainCardiacImplantCause(code:"CANCER").save() //Cáncer
        new MainCardiacImplantCause(code:"CONGENITAL_DISEASE").save() //Enfermedad congénita
		new MainCardiacImplantCause(code:"CORONARY_DISEASE").save() //Enfermedad coronaria
        new MainCardiacImplantCause(code:"VALVE_DISEASE").save() //Enfermedad valvular
		new MainCardiacImplantCause(code:"PATHOLOGY_AORTA").save() //Patología de la aorta
        new MainCardiacImplantCause(code:"VALVULAR_HEAR_DISEASE").save() //Enfermedad valvular y coronaria
		new MainCardiacImplantCause(code:"FAMILY_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada familiar
        new MainCardiacImplantCause(code:"IDIOPATHIC_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada idiopática
		new MainCardiacImplantCause(code:"ISCHEMIC_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada isquémica
        new MainCardiacImplantCause(code:"MYOCARDITIS_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada miocarditis
		new MainCardiacImplantCause(code:"POSTPARTUM_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada postparto
        new MainCardiacImplantCause(code:"VIRAL_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada viral
		new MainCardiacImplantCause(code:"OTHER_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada por otra causa
        new MainCardiacImplantCause(code:"TOXIC_DILATED_CARDIOMYOPATHY").save() //Miocardiopatía dilatada de origen tóxico (Alcohol, quimioterapia, fármacos, etc.)
		new MainCardiacImplantCause(code:"HYPERTROPHIC_CARDIOMYOPATHY").save() //Miocardiopatía hipertrófica
        new MainCardiacImplantCause(code:"AMYLOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva por amiloidosis
		new MainCardiacImplantCause(code:"FIBROSIS_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva por fibrosis
        new MainCardiacImplantCause(code:"SARCOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva por sarcoidosis
		new MainCardiacImplantCause(code:"QUIMIO_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva secundaria a quimio o radioterapia
        new MainCardiacImplantCause(code:"IDIOPATHIC_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva idiopática
		new MainCardiacImplantCause(code:"OTHER_RESTRICTIVE_CARDIOMYOPATHY").save() //Miocardiopatía restrictiva de otra causa
        new MainCardiacImplantCause(code:"OTHER").save() //Otra

        new MainLungImplantCause(code:"NONE").save()//Ninguna
		new MainLungImplantCause(code:"IDIOPATHIC_PULMONART_FIBROSIS").save()//FPI postTXP
        new MainLungImplantCause(code:"MASSIVE_PULMONARY_EMBOLISM").save()//TEP masivo
		new MainLungImplantCause(code:"PNEUMONIA").save()//Neumonía/infección respiratoria
		new MainLungImplantCause(code:"ACUTE_RESPIRATORY_DISTRESS_SYNDROME").save()//SDRA
        new MainLungImplantCause(code:"PRE_LUNG_TRANSPLANT").save()//Pretrasplante pulmonar
		new MainLungImplantCause(code:"OTHER").save()//Otra

        new ImplantType(code:"LVAD").save()
        new ImplantType(code:"RVAD").save()
        new ImplantType(code:"LVAD_RVAD").save()
        new ImplantType(code:"TOTAL").save()
        new ImplantType(code:"ECMO").save()


        new LvadBrand(code:"AB5000").save()
        new LvadBrand(code:"THORATEX_PVAD").save()
        new LvadBrand(code:"LEVITRONIX_CENTRIMAG").save()
        new LvadBrand(code:"BERLIN_HEART_EXCOR").save()
        new LvadBrand(code:"BERLIN_HEART_INCOR").save()
        new LvadBrand(code:"JARVIC_2000").save()
        new LvadBrand(code:"HEARTWARE_HVAD").save()
        new LvadBrand(code:"TERUMO_DURAHEART").save()
        new LvadBrand(code:"HEARTASSIST_5").save()
        new LvadBrand(code:"HEARTMATE_II").save()
        new LvadBrand(code:"HEARTMATE_III").save()
        new LvadBrand(code:"VENTRACOR_VENTRASSIST").save()
        new LvadBrand(code:"CIRCULITE_SYNERGY").save()
        new LvadBrand(code:"HEARTWARE_MVAD").save()
        new LvadBrand(code:"IMPELLA").save()
        new LvadBrand(code:"TANDEM_HEART").save()
        new LvadBrand(code:"BIOMEDICUS").save()
        new LvadBrand(code:"BVS_5000").save()
        new LvadBrand(code:"JOSTRA_ROTAFLOW").save()
        new LvadBrand(code:"OTHER").save()

        new RvadBrand(code:"THORATEC_PVAD", defaultText: "Thoratec pVAD").save()
	    new RvadBrand(code:"BERLIN_HEART_EXCOR", defaultText: "Berlin Heart Excor").save()
        new RvadBrand(code:"LEVITRONIX_CENTRIMAG", defaultText: "Levitronix Centrimag").save()
	    new RvadBrand(code:"HEARTWARE_HVAD", defaultText: "Heartware HVAD").save()
        new RvadBrand(code:"BIOMEDICUS", defaultText: "Biomedicus").save()
	    new RvadBrand(code:"AB_5000", defaultText: "AB 5000").save()
        new RvadBrand(code:"BVS_5000", defaultText: "BVS 5000").save()
    	new RvadBrand(code:"JOSTRA_ROTAFLOW", defaultText: "Jostra Rotaflow").save()
        new RvadBrand(code:"OTHER", defaultText: "Otra").save()

        new HeartTotalBrand(code:"CARDIOWEST").save() //CardioWest
    	new HeartTotalBrand(code:"THORATEX").save() //Thoratec
        new HeartTotalBrand(code:"HEARTWARE").save() //HeartWare
	    new HeartTotalBrand(code:"BERLIN").save() //Berlin
        new HeartTotalBrand(code:"OTHER").save() //Otra

        new EcmoBrand(code:"ROTAFLOW_PLS").save() //Rotaflow PLS
        new EcmoBrand(code:"CARDIO_HELP").save() //Cardiohelp
        new EcmoBrand(code:"MEDOS").save() //Medos
        new EcmoBrand(code:"CENTRIFUGAL_OXIGENATOR").save() //Centrifuga + oxigenador
        new EcmoBrand(code:"OTHERS").save() //Otros


        new BloodFlowType(code:"PULSATILE").save()
        new BloodFlowType(code:"CONTINUOUS").save()

        new ImplantLvadIn(code:"LEFT_ATRIUM").save() //Aurícula izquierda
        new ImplantLvadIn(code:"LEFT_ATRIAL_APPENDAGE").save() //Orejuela izquierda
        new ImplantLvadIn(code:"APEX_VI").save() //Apex VI
        new ImplantLvadIn(code:"OTHER").save() //Otro


        new ImplantLvadOut(code:"ASCENDING_AORTA").save() //Aorta ascendente
        new ImplantLvadOut(code:"DESCENDING_THORACIC_AORTA").save() //Aorta torácica descendente
        new ImplantLvadOut(code:"ABDOMINAL_AORTA").save() //Aorta abdominal
        new ImplantLvadOut(code:"OTHER").save() //Otra

        new ImplantRvadIn(code:"RIGHT_ATRIUM").save() //Aurícula derecha
        new ImplantRvadIn(code:"RIGHT_ATRIAL_APPENDAGE").save() //Orejuela derecha
        new ImplantRvadIn(code:"APEX_VD").save() //Apex VD
        new ImplantRvadIn(code:"OTHER").save() //Otro

        new ImplantRvadOut(code:"PULMONARY_ARTERY").save() //Arteria pulmonar
        new ImplantRvadOut(code:"OTHER").save() //Otra

        new ImplantTotalIn(code:"RIGHT_ATRIUM").save() //Aurícula derecha
        new ImplantTotalIn(code:"RIGHT_ATRIAL_APPENDAGE").save() //Orejuela derecha
        new ImplantTotalIn(code:"APEX_VD").save() //Apex VD
        new ImplantTotalIn(code:"OTHER").save() //Otro

        new ImplantTotalOut(code:"ASCENDING_AORTA").save() //Aorta ascendente
        new ImplantTotalOut(code:"DESCENDING_THORACIC_AORTA").save() //Aorta torácica descendente
        new ImplantTotalOut(code:"ABDOMINAL_AORTA").save() //Aorta abdominal
        new ImplantTotalOut(code:"OTHER").save() //Otra

        new ImplantEcmoIn(code:"FEMORAL_VEIN").save() //Vena femoral
        new ImplantEcmoIn(code:"JUGULAR_VEIN").save() //Vena yugular/subclavia
        new ImplantEcmoIn(code:"RIGHT_ATRIUM").save() //Aurícula derecha
        new ImplantEcmoIn(code:"OTHER").save() //Otro


        new ImplantEcmoOut(code:"FEMORAL_VEIN").save() //Vena femoral
        new ImplantEcmoOut(code:"JUGULAR_VEIN").save() //Vena yugular
        new ImplantEcmoOut(code:"FEMORAL_ARTERY").save() //Arteria femoral
        new ImplantEcmoOut(code:"SUBCLAVIAN_ARTERY").save() //Arteria subclavia/axilar
        new ImplantEcmoOut(code:"CAROTID_ARTERY").save() //Arteria carótida
        new ImplantEcmoOut(code:"AORTA").save() //Aorta
        new ImplantEcmoOut(code:"PULMONARY_ARTERY").save() //Arteria pulmonar
        new ImplantEcmoOut(code:"OTHER").save() //Otra


        new DischargedDestination(code:"HOME").save() //Casa o residencia permanente</option>
		new DischargedDestination(code:"INTERMEDIATE_CARE_UNIT").save() //Unidad de cuidados intermedios</option>
        new DischargedDestination(code:"REHABILIATATION").save() //Centro de rehabilitación</option>
		new DischargedDestination(code:"OTHER").save() //Otro</option>
        new DischargedDestination(code:"NONE_PATIENT_DEATH").save() //No aplicable (paciente fallecido)</option>

        new TimeWithoutIntropicIV(code:"1_7").save() //1-7 días</option>
		new TimeWithoutIntropicIV(code:"8_13").save() //8-13 días</option>
        new TimeWithoutIntropicIV(code:"14_27").save() //14-27 días</option>
		new TimeWithoutIntropicIV(code:"27_MORE").save() //Más de 27 días</option>

        new SurgicalProcedureAfterTransplant(code:"NONE").save() //Ninguno
        new SurgicalProcedureAfterTransplant(code:"NO_CARDIAC_SURGERY_PROCEUDRE").save() //Procedimiento quirúrgico no cardíaco
        new SurgicalProcedureAfterTransplant(code:"INVASIVE_CARDIAC_PROCEDURE").save() //Procedimiento cardíaco invasivo
        new SurgicalProcedureAfterTransplant(code:"CARDIAC_SURGERY_PROCEUDRE").save() //Procedimiento quirúrgico cardíaco
        new SurgicalProcedureAfterTransplant(code:"OTHER").save() //Otro

        new CardiacSurgicalProcedure(code: "BLEEDING_BEFORE_48").save() //Reoperación por sangrado (hasta 48 horas postimplante)
        new CardiacSurgicalProcedure(code: "BLEEDING_AFTER_48").save() //Drenaje del derrame pericárdico/ taponamiento/ reoperación por sangrado (tras 48 del implante)
        new CardiacSurgicalProcedure(code: "CHEST_DRAINAGE").save() //Colocación de drenaje torácico
        new CardiacSurgicalProcedure(code: "AORTIC_VALVE_SURGERY").save() //Cirugía valvular aórtica
        new CardiacSurgicalProcedure(code: "MITRAL_VALVE_SURGERY").save() //Cirugía valvular mitral
        new CardiacSurgicalProcedure(code: "TRICUSPID_VALVE_SURGERY").save() //Cirugía valvular tricúspide
        new CardiacSurgicalProcedure(code: "PULMONARY_VALVE_SURGERY").save() //Cirugía valvular pulmonar


        new OtherSurgicalProcedure(code:"REINTUBATE").save() //Reintubación
        new OtherSurgicalProcedure(code:"HEMOFILTRATIOIN").save() //Hemofiltración
        new OtherSurgicalProcedure(code:"HEMODIALYSIS").save() //Hemodiálisis


        new CardiologicalTreatmenAtDischarge(code:"ACE_INHIBITORS").save() //IECA, Inhibidor de la enzima convertidora de angiotensina
        new CardiologicalTreatmenAtDischarge(code:"AIIRAS").save() //ARA II, Antagonistas de los Receptores de la Angiotensina II
        new CardiologicalTreatmenAtDischarge(code:"CALCIUM_BLOCKERS").save() //Antagonistas del Calcio
        new CardiologicalTreatmenAtDischarge(code:"BETA_BLOCKERS").save() //Betabloqueantes
        new CardiologicalTreatmenAtDischarge(code:"ALDOSTERONE_BLOCKERS").save() //Antagonistas de la aldosterona
        new CardiologicalTreatmenAtDischarge(code:"LOOP_DIURETICS").save() //Diuréticos de asa
        new CardiologicalTreatmenAtDischarge(code:"AMIODARONE").save() //Amiodarona
        new CardiologicalTreatmenAtDischarge(code:"DIGOXIN").save() //Digoxina
        new CardiologicalTreatmenAtDischarge(code:"OTHER_ANTIARRYTHMICS").save() //Otros antiarrítmicos
        new CardiologicalTreatmenAtDischarge(code:"NITRIC_OXIDE").save() //Óxido nítrico
        new CardiologicalTreatmenAtDischarge(code:"SILDENAFIL").save() //Sildenafilo
        new CardiologicalTreatmenAtDischarge(code:"ILOPROST").save() //Iloprost
        new CardiologicalTreatmenAtDischarge(code:"BOSENTAN").save() //Bosentan
        new CardiologicalTreatmenAtDischarge(code:"NESERITIDE").save() //Neseritide

        new AntiheparineAntibodies(code: "UNKNOWN").save() //Desconocido
        new AntiheparineAntibodies(code: "NO").save() // Sí
        new AntiheparineAntibodies(code: "YES").save() // No

        new BloodMedication(code:"WARFARIN").save() //Warfarina o derivados
        new BloodMedication(code:"ACETYLSALICYLIC_ACID").save() //AAS
        new BloodMedication(code:"DIPYRIDAMOLE").save() //Dipiridamol
        new BloodMedication(code:"CLOPIDOGREL").save() //Clopidogrel
        new BloodMedication(code:"TICLOPIDINE").save() //Ticlopidina
        new BloodMedication(code:"HEPARIN").save() //Heparina
        new BloodMedication(code:"ENOXAPARIN").save() //Enoxaparina
        new BloodMedication(code:"BIVALIRUDIN").save() //Bivalirudina
        new BloodMedication(code:"ARGOTRAVAN").save() //Argatrovan
        new BloodMedication(code:"HIRUDIN").save() //Hirudina
        new BloodMedication(code:"LEPIRUDIN").save() //Lepirudina

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
                        code: "INC",
                        birthDate: new Date(),
                        weigh: 86.2D,
                        height: 156.3D,
                        gender: Gender.findByCode("FEMALE"),
                        centre:ph,
                        externalId:"ExternalId",
                        cardiacCareType: CardiacCareType.findByCode("SHORT")
                ]
        )
        patient.save()

        (1..35).each{
            Patient patientPaz = new Patient(
                    [
                            patientStatus: PatientStatus.findByCode("INCOMPLETE"),
                            code: "Paz-$it",
                            birthDate: new Date(),
                            weigh: it*10,
                            height: it*100,
                            gender: Gender.findByCode("MALE"),
                            centre:paz,
                            externalId:"External-${it}",
                            cardiacCareType: CardiacCareType.findByCode("LONG")
                    ]
            )
            patientPaz.save()
        }

    }
    def destroy = {
    }
}
