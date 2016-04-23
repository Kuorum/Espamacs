import espamacs.*
import espamacs.event.Event
import espamacs.event.MalfunctionDevice
import espamacs.type.*
import espamacs.type.baselineConditions.*
import espamacs.type.diagnosis.CurrentSituation
import espamacs.type.diagnosis.ImplantGoal
import espamacs.type.diagnosis.MainCardiacImplantCause
import espamacs.type.diagnosis.MainLungImplantCause
import espamacs.type.event.PatientHealthStatus
import espamacs.type.event.RemovedAssistance
import espamacs.type.event.RemovedAssistanceDeath
import espamacs.type.event.arrhythmia.ArrhythmiaType
import espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis
import espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace
import espamacs.type.event.hemolysis.HemolysisCause
import espamacs.type.event.hemorrhage.BleedingPlace
import espamacs.type.event.hemorrhage.HemorrhageCause
import espamacs.type.event.hemorrhage.HemorrhageTreatment
import espamacs.type.event.infection.InfectionPlace
import espamacs.type.event.infection.InfectionTreatment
import espamacs.type.event.malfunctionDevice.MalfunctionDeviceType
import espamacs.type.event.malfunctionDevice.UrgentSurgery
import espamacs.type.event.myocardialInfarction.MyocardialInfractionCause
import espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace
import espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment
import espamacs.type.event.neurologicalDysfunction.*
import espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod
import espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity
import espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType
import espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment
import espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds
import espamacs.type.event.rightHeartFailure.RightHeartFailureSignals
import espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace
import espamacs.type.event.woundDehiscence.WoundDehiscenceType
import espamacs.type.implantData.*
import espamacs.type.initialData.*
import espamacs.type.patientData.*
import espamacs.type.preimplantSituation.IntermacsSituation
import espamacs.type.preimplantSituation.IntropicMedication
import espamacs.type.preimplantSituation.PreimplantEvent

class BootStrap {

    def init = { servletContext ->
        Role roleUser = new Role("ROLE_USER").save()
        Role roleAdmin = new Role("ROLE_ADMIN").save()

        Centre ph = new Centre(name:"Puerta de hierro").save()
        Centre paz= new Centre(name: "La paz").save()

        new BooleanDBType(code: "UNKNOWN").save()
        new BooleanDBType(code: "NO").save()
        new BooleanDBType(code: "YES").save()

        new PatientStatus(code:"INCOMPLETE").save()
        new PatientStatus(code:"ACTIVE").save()
        new PatientStatus(code:"INACTIVE").save()

        new Gender(code:"MALE").save()
        new Gender(code:"FEMALE").save()

        new CardiacCareType(code: "SHORT").save()
        new CardiacCareType(code: "LONG").save()

        new BloodType(code:"UNKNOWN").save() //Desconocido
        new BloodType(code:"BLOOD_A").save() //A
        new BloodType(code:"BLOOD_B").save() //B
        new BloodType(code:"BLOOD_B").save() //B
        new BloodType(code:"BLOOD_AB").save() //AB
        new BloodType(code:"BLOOD_0").save() //O

        new RHFactor(code: "UNKNOWN").save() //Desconocido
        new RHFactor(code: "RH_POSITIVE").save() // +
        new RHFactor(code: "RH_NEGATIVE").save() //-

        new SmokerType(code: "UNKNOWN").save()
        new SmokerType(code: "NO").save()
        new SmokerType(code: "YES").save()
        new SmokerType(code: "EX-SMOKER").save()

        new DiabeticType(code: "UNKNOWN").save()
        new DiabeticType(code: "NO").save()
        new DiabeticType(code: "TYPE1").save()
        new DiabeticType(code: "TYPE2").save()

        new DrinkerType(code: "UNKNOWN").save()
        new DrinkerType(code: "NO_NEVER").save()
        new DrinkerType(code: "NO_NOW").save()
        new DrinkerType(code: "YES").save()

        new IntravenouslyDrugsType(code: "UNKNOWN").save()
        new IntravenouslyDrugsType(code: "NO_NEVER").save()
        new IntravenouslyDrugsType(code: "NO_NOW").save()
        new IntravenouslyDrugsType(code: "YES").save()

        new PreCardiacSurgery(code: "NO").save()
        new PreCardiacSurgery(code: "CORONARY").save()
        new PreCardiacSurgery(code: "VALVULAR").save()
        new PreCardiacSurgery(code: "VALVULAR_CORONARY").save()
        new PreCardiacSurgery(code: "THORACIC_AORTA").save()
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

        new Lvef(code: "UNKNOWN").save()
        new Lvef(code: "PLUS_50").save()
        new Lvef(code: "40_50").save()
        new Lvef(code: "30_39").save()
        new Lvef(code: "20_29").save()
        new Lvef(code: "MINUS_20").save()

        new RightVentricleStatus(code: "NO").save()
        new RightVentricleStatus(code: "MINOR").save()
        new RightVentricleStatus(code: "MODERATE").save()
        new RightVentricleStatus(code: "SEVERE").save()

        new RightVentricleDilatation(code: "NO").save()
        new RightVentricleDilatation(code: "MINOR").save()
        new RightVentricleDilatation(code: "MODERATE").save()
        new RightVentricleDilatation(code: "SEVERE").save()


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
        new Medication(code: "OTHER_HYPERTENSION_MEDICINE").save()
        new Medication(code: "RESYNCHRONIZATION_THERAPIES").save()
        new Medication(code: "ICD").save()
        new Medication(code: "OXYGEN_THERAPY").save()


        new Nyha(code:"UNKNOWN").save()
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

        new IntropicMedication(code:"ADRENALINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"DOBUTAMINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"DOPAMINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"ISOPROTERENOL").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"LEVOSIMENDAN").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"MILRINONE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"NORADRENALINE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
        new IntropicMedication(code:"NITRIC_OXIDE").save() //Ventilación mecánica invasiva - invasive mechanical ventilation
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
		new MainLungImplantCause(code:"PRIMARY_GRAFT_FAILURE").save()//FPI postTXP
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
        new LvadBrand(code:"HEARTWARE_MVAD").save()
        new LvadBrand(code:"TERUMO_DURAHEART").save()
        new LvadBrand(code:"HEARTASSIST_5").save()
        new LvadBrand(code:"HEARTMATE_II").save()
        new LvadBrand(code:"HEARTMATE_III").save()
        new LvadBrand(code:"IMPELLA").save()
        new LvadBrand(code:"TANDEM_HEART").save()
        new LvadBrand(code:"BIOMEDICUS").save()
        new LvadBrand(code:"BVS_5000").save()
        new LvadBrand(code:"OTHER").save()

        new RvadBrand(code:"AB5000", defaultText: "Abiomed AB 5000").save()
        new RvadBrand(code:"THORATEC_PVAD", defaultText: "Thoratec pVAD").save()
        new RvadBrand(code:"LEVITRONIX_CENTRIMAG", defaultText: "Levitronix Centrimag").save()
	    new RvadBrand(code:"BERLIN_HEART_EXCOR", defaultText: "Berlin Heart Excor").save()
	    new RvadBrand(code:"HEARTWARE_HVAD", defaultText: "Heartware HVAD").save()
        new RvadBrand(code:"HEARTWARE_MVAD").save()
        new RvadBrand(code:"BIOMEDICUS", defaultText: "Biomedicus").save()
        new RvadBrand(code:"BVS5000", defaultText: "BVS 5000").save()
        new RvadBrand(code:"OTHER", defaultText: "Otra").save()

        new HeartTotalBrand(code:"ABIOCOR").save() //AbioCor Implantable
        new HeartTotalBrand(code:"SYNCARDIA").save() //SynCardia Cardiowest
        new HeartTotalBrand(code:"AKUTSU_III").save() //Akutsu III
        new HeartTotalBrand(code:"BIVACOR").save() //BiVacor
        new HeartTotalBrand(code:"JARVIC7").save() //Jarvic 7
        new HeartTotalBrand(code:"OTHER").save() //Otro

        new EcmoBrand(code:"ROTAFLOW_PLS").save() //Rotaflow PLS
        new EcmoBrand(code:"CARDIO_HELP").save() //Cardiohelp
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

        new CollateralSurgery(code:"AORTIC_VALVE_SURGERY").save() // Cirugía sobre la válvula aórtica
        new CollateralSurgery(code:"MITRAL_VALVE_SURGERY").save() // Cirugía sobre la válvula mitral
        new CollateralSurgery(code:"TRICUSPID_VALVE_SURGERY").save() // Cirugía sobre la válvula tricúspide
        new CollateralSurgery(code:"PULMONARY_VALVE_SURGERY").save() // Cirugía sobre la válvula pulmonar
        new CollateralSurgery(code:"CABG").save() // CABG
        new CollateralSurgery(code:"OTHER").save() // Otros

        new DischargedDestination(code:"HOME").save() //Casa o residencia permanente</option>
		new DischargedDestination(code:"INTERMEDIATE_CARE_UNIT").save() //Unidad de cuidados intermedios</option>
        new DischargedDestination(code:"REHABILIATATION").save() //Centro de rehabilitación</option>
		new DischargedDestination(code:"OTHER").save() //Otro</option>
        new DischargedDestination(code:"NONE_PATIENT_DEATH").save() //No aplicable (paciente fallecido)</option>

        new DischargedStatus(code:"ASSISTED").save() //Asistido
        new DischargedStatus(code:"UNASSISTED").save() //Sin asistencia

        new ExistusStatus(code:"DURING_ASSISTANCE").save() //Existus en asistencia
        new ExistusStatus(code:"POST_ASSISTANCE").save() //Exitus posretirada de asistencia

        new TimeWithoutIntropicIV(code:"1_7").save() //1-7 días</option>
		new TimeWithoutIntropicIV(code:"8_13").save() //8-13 días</option>
        new TimeWithoutIntropicIV(code:"14_27").save() //14-27 días</option>
		new TimeWithoutIntropicIV(code:"27_MORE").save() //Más de 27 días</option>

        new SurgicalProcedureAfterTransplant(code: "BLEEDING_BEFORE_48").save() //Reoperación por sangrado (hasta 48 horas postimplante)
        new SurgicalProcedureAfterTransplant(code: "BLEEDING_AFTER_48").save() //Drenaje del derrame pericárdico/ taponamiento/ reoperación por sangrado (tras 48 del implante)
        new SurgicalProcedureAfterTransplant(code: "CHEST_DRAINAGE").save() //Colocación de drenaje torácico
        new SurgicalProcedureAfterTransplant(code:"REINTUBATE").save() //Reintubación
        new SurgicalProcedureAfterTransplant(code:"HEMOFILTRATIOIN").save() //Hemofiltración
        new SurgicalProcedureAfterTransplant(code:"HEMODIALYSIS").save() //Hemodiálisis
        new RightVentricleFailureAfterImplant(code:"OTHER").save() //Otro


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
        new CardiologicalTreatmenAtDischarge(code:"OTHER").save() //Otros fármacos para la hipertensión pulmonar

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

        new PatientHealthStatus(code:"ICU").save() // Ingresado en UCI
		new PatientHealthStatus(code:"HOSPITAL_ADMISION").save() //Ingresado en planta de hospitalización
        new PatientHealthStatus(code:"OTHER_HOSPITAL_ADMISION").save() //Ingresado en otro centro hospitalario
		new PatientHealthStatus(code:"DISCHARGED").save() //Alta hospitalaria

        new RemovedAssistance(code:"NO").save() // No
		new RemovedAssistance(code:"YES_HEALED").save() // Sí, por recuperación
        new RemovedAssistance(code:"YES_TRNSPLANT").save() // Sí, por trasplante
		new RemovedAssistance(code:"YES_CHANGE_ASSISTANCE").save() // Sí, por cambio de tipo de asistencia
        new RemovedAssistance(code:"YES_DEAD").save() // Sí, por fallecimiento

        new RemovedAssistanceDeath(code:"NONE").save() //No aplica
        new RemovedAssistanceDeath(code:"CARDIOVASCULAR_CAUSE").save() //Causa cardiovascular
        new RemovedAssistanceDeath(code:"NO_CARDIOVASCULAR_CAUSE").save() //Causa no cardiovascular
        new RemovedAssistanceDeath(code:"OTHER").save() //Otras

        new MalfunctionDeviceType(code:"PUMP_ERROR").save() // Fallo de la bomba
		new MalfunctionDeviceType(code:"CONTROL_DEVICE_ERROR").save() // Fallo de los dispositivos de control
        new MalfunctionDeviceType(code:"BATERY_ERROR").save() // Fallo de la batería
		new MalfunctionDeviceType(code:"DEVICE_THROMBOSIS").save() // Trombosis del dispositivo
        new MalfunctionDeviceType(code:"MISPLACEMENT_INPUT_CANNULA").save() // Colocación inadecuada de cánula de entrada
		new MalfunctionDeviceType(code:"MISPLACEMENT_OUTPUT_CANNULA").save() // Colocación inadecuada de la cánula de salida
        new MalfunctionDeviceType(code:"THROMBOSIS_INPUT_VALVE").save() // Trombosis válvula de entrada
		new MalfunctionDeviceType(code:"THROMBOSIS_OUTPUT_VALVE").save() // Trombosis válvula de salida
        new MalfunctionDeviceType(code:"PATIENT_NEGLIGENCE").save() // Error del paciente en el cuidado del dispositivo
		new MalfunctionDeviceType(code:"OTHER").save() // Otro

        new HemorrhageCause(code:"TRANSFUSION").save() //Trasfusión
		new HemorrhageCause(code:"TRANSFUSION_ICU").save() //Trasfusión e ingreso en UCI
        new HemorrhageCause(code:"TRANSFUSION_ICU_SURGERY").save() //Trasfusión, ingreso en UCI y /reintervención
		new HemorrhageCause(code:"DEAD").save() //Muerte

        new UrgentSurgery(code:"YES_URGENT").save() // Sí, urgente
		new UrgentSurgery(code:"YES_NO_URGENT").save() // Sí, electiva
        new UrgentSurgery(code:"NO").save() // No

        new HemorrhageTreatment(code:"MEDICAL").save() //Médico
		new HemorrhageTreatment(code:"CARDIAC_SURGERY").save() //Reintervención cardiaca
        new HemorrhageTreatment(code:"NO_CARDIAC_SURGERY").save() //Intervención no cardiaca

        new BleedingPlace(code:"MEDIASINUM").save() // Mediastino
        new BleedingPlace(code:"SUTURES_DEVICE").save() // Suturas del dispositivo
        new BleedingPlace(code:"CANNULATION_PLACE").save() // Lugar de canulación venosa o arterial
        new BleedingPlace(code:"INTRAABDOMINAL").save() // Intraabdominal
        new BleedingPlace(code:"CHEST_WALL").save() // Pared torácica
        new BleedingPlace(code:"GASTROINTESTINAL").save() // Gastrointestinal
        new BleedingPlace(code:"RESPIRATORY").save() // Respiratorio
        new BleedingPlace(code:"POCKET_PUMP").save() // Bolsillo de la bomba
        new BleedingPlace(code:"IN_OUT_DUCT").save() // Conducto de entrada o de salida
        new BleedingPlace(code:"PLEURAL_SPACE").save() // Espacio pleural
        new BleedingPlace(code:"RETROPERITONEO").save() // Retroperitoneo
        new BleedingPlace(code:"OTHER").save() // Otro


        new InfectionPlace(code:"SEPSIS").save() // Sepsis con hemocultivos positivos
        new InfectionPlace(code:"RESPIRATORY").save() // Infección respiratoria
        new InfectionPlace(code:"URINARY").save() // Infección del tracto urinario
        new InfectionPlace(code:"GASTROINTESTINAL").save() // Infección gastrointestinal
        new InfectionPlace(code:"PERIPHERAL_WOUND").save() // Infección de herida periférica
        new InfectionPlace(code:"CATHETER").save() // Infección de catéter
        new InfectionPlace(code:"MEDIASTINITIS").save() // Mediastinitis
        new InfectionPlace(code:"CONTROL_LINE").save() // Infección de línea de control de la asistencia
        new InfectionPlace(code:"CANNULAS_OUT").save() // Infección de orificios de salida de las cánulas
        new InfectionPlace(code:"PUMP").save() // >Infección de la bomba

        new InfectionTreatment(code:"MEDICAL").save() //Médico
        new InfectionTreatment(code:"SURGERY").save() //Quirúrgico
        new InfectionTreatment(code:"MEDICAL_SURGERY").save() //Médico + quirúrgico

        new NeurologicalDysfunctionType(code:"ISCHEMIC").save() // Isquémico
        new NeurologicalDysfunctionType(code:"HEMORRHAGIC").save() // Hemorrágico
        new NeurologicalDysfunctionType(code:"ISCHEMIC_HEMORRHAGIC").save() // Isquémico con trasformación hemorrágica posterior
        new NeurologicalDysfunctionType(code:"OTHER").save() // Otro

        new NeurologicalDysfunctionEffect(code:"ISCHEMIC_STROKE_TEMPORAL").save() //AIT
        new NeurologicalDysfunctionEffect(code:"ISCHEMIC_STROKE_NO_EFFECT").save() //ACVA isquémico sin secuelas
        new NeurologicalDysfunctionEffect(code:"ISCHEMIC_STROKE_EFFECT").save() //ACVA isquémico con secuelas
        new NeurologicalDysfunctionEffect(code:"ISCHEMIC_STROKE_DEAD").save() //ACVA isquémico que causa la muerte del paciente
        new NeurologicalDysfunctionEffect(code:"HEMORRHAGIC_STROKE_NO_EFFECT").save() //ACVA hemorrágico sin secuelas
        new NeurologicalDysfunctionEffect(code:"HEMORRHAGIC_STROKE_EFFECT").save() //ACVA hemorrágico con secuelas
        new NeurologicalDysfunctionEffect(code:"HEMORRHAGIC_STROKE_DEAD").save() //ACVA hemorrágico que causa la muerte del paciente

        new NeurologicalDysfunctionCause(code:"DEVICE").save() //Complicación relacionada con el dispositivo</option>
        new NeurologicalDysfunctionCause(code:"MEDICATION").save() //Complicación relacionada con la toma inadecuada de la medicación</option>
        new NeurologicalDysfunctionCause(code:"COMPLEX_PATIENT").save() //Complicación relacionada con la complejidad del paciente</option>
        new NeurologicalDysfunctionCause(code:"OTHER").save() //Otra</option>

		new NeurologicalDysfunctionINR(code:"UNKNOWN").save() //Desconocido
		new NeurologicalDysfunctionINR(code:"INR_UP").save() //INR por encima del rango
		new NeurologicalDysfunctionINR(code:"INR_DOWN").save() //INR por debajo del rango

        new NeurologicalDysfunctionAPTT(code:"UNKNOWN").save() //Desconocido
        new NeurologicalDysfunctionAPTT(code:"APTT_UP").save() //APTT por encima del rango
        new NeurologicalDysfunctionAPTT(code:"APTT_DOWN").save() //APTT por debajo del rango

        new NeurologicalDysfunctionPlace(code:'RIGHT_HEMISPHERE').save() //Hemisferio derecho
        new NeurologicalDysfunctionPlace(code:'left_HEMISPHERE').save() //Hemisferio izquierdo
        new NeurologicalDysfunctionPlace(code:'OCCIPITAL').save() //Occipital
        new NeurologicalDysfunctionPlace(code:'BRAINSTEM').save() //Tronco del encéfalo
        new NeurologicalDysfunctionPlace(code:'OTHER').save() //Otro

        new NeurologicalDysfunctionDiagnosis(code:"TAC").save() //TAC
        new NeurologicalDysfunctionDiagnosis(code:"NUCLEAR_MAGNETIC_RESONANCE").save() //RNM
        new NeurologicalDysfunctionDiagnosis(code:"ANGIOGRAPHY").save() //Angiografía
        new NeurologicalDysfunctionDiagnosis(code:"CLINIC").save() //Clínico
        new NeurologicalDysfunctionDiagnosis(code:"OTHER").save() //Otro

        new NeurologicalDysfunctionTreatement(code:"NONE").save() //Ninguno
        new NeurologicalDysfunctionTreatement(code:"HEPARINE").save() //Heparina
        new NeurologicalDysfunctionTreatement(code:"FIBRINOLYSIS").save() //Fibrinolisis
        new NeurologicalDysfunctionTreatement(code:"ANTICONVULSANTS").save() //Anticonvulsivantes
        new NeurologicalDysfunctionTreatement(code:"OTHER").save() //Otro

        new ArrhythmiaType(code:"VENTRICULAR").save() // Arritmia ventricular sostenida que precisa desfibrilación / cardioversión
        new ArrhythmiaType(code:"SUPRAVENTRICULAR").save() // Arritmia supraventricular que precisa tratamiento médico o cardioversión

        new RenalDysfunctionTreatment(code:"HEMODIALYSIS").save() //Hemodiálisis
        new RenalDysfunctionTreatment(code:"HEMOFILTRATION").save() //Hemofiltración

        new ArterialThromboembolismPlace(code:"PULMONARY").save() // Pulmonar
        new ArterialThromboembolismPlace(code:"RENAL").save() // Renal
        new ArterialThromboembolismPlace(code:"HEPATIC").save() // Hepática
        new ArterialThromboembolismPlace(code:"SPLEN").save() // Esplénica
        new ArterialThromboembolismPlace(code:"EXTREMITIES").save() // Extremidades

        new ArterialThromboembolismDiagnosis(code:"CLINIC").save() //Clínico
        new ArterialThromboembolismDiagnosis(code:"INVASIVE_TECHNIQUES").save() //Técnicas invasivas
        new ArterialThromboembolismDiagnosis(code:"INTREAOPERATIVE_FINDING").save() //Hallazgo intraoperatorio
        new ArterialThromboembolismDiagnosis(code:"NECROPSY_FINDING").save() //Hallazgo en necropsia

        new WoundDehiscenceType(code:"WOUND").save() //Dehiscencia exclusiva de la herida
        new WoundDehiscenceType(code:"BREASTBONE").save() //Dehiscencia del esternón
        new WoundDehiscenceType(code:"WOUND_BREASTBONE").save() //Dehiscencia de la herida y el esternón

        new VenousThromboembolismPlace(code:"VENOUS_DEEP").save() //Trombosis venosa profunda
        new VenousThromboembolismPlace(code:"PULMONARY").save() //Trombosis pulmonar
        new VenousThromboembolismPlace(code:"OTHER").save() //Otra

        new MyocardialInfractionPlace(code:"DA").save() //Territorio de DA
        new MyocardialInfractionPlace(code:"CX").save() //Territorio Cx
        new MyocardialInfractionPlace(code:"DP").save() //Territorio DP
        new MyocardialInfractionPlace(code:"MULTIPLE").save() //Múltiples territorios

        new MyocardialInfractionCause(code:"UNKOWN").save() //Desconocida
        new MyocardialInfractionCause(code:"CORONARY_DISEASE").save() //Enfermedad coronaria previa
        new MyocardialInfractionCause(code:"DEVICE_CAUSE").save() //Relacionado con el dispositivo
        new MyocardialInfractionCause(code:"OTHER").save() //Otro

        new MyocardialInfractionTreatment(code:"MEDICAL").save() //Médico
        new MyocardialInfractionTreatment(code:"INTERVENTION").save() //Intervencionista
        new MyocardialInfractionTreatment(code:"SURGERY").save() //Quirúrgico

        new PericardialEffussionQuantity(code:"SOFT").save() //Suave
        new PericardialEffussionQuantity(code:"MODERATE").save() //Moderado
        new PericardialEffussionQuantity(code:"SEVERE").save() // Severo

        new PericardialEffussionDrainMethod(code:"NONE").save() //No precisa
        new PericardialEffussionDrainMethod(code:"PERCUTANEOUS").save() //Percutáneo
        new PericardialEffussionDrainMethod(code:"SURGICAL").save() //Quirúrgico
        new PericardialEffussionDrainMethod(code:"OTHER").save() //Otro

        new HemolysisCause(code:"UNKNOWN").save() //Desconocida
        new HemolysisCause(code:"DUETO_ASSISTANCE").save() //Relacionada con la asistencia
        new HemolysisCause(code:"HEMATOLOGIC").save() //Origen hematológico
        new HemolysisCause(code:"OTHER").save() //Otra

        new RightHeartFailureSignals(code:"ASCItES").save() //Ascitis
        new RightHeartFailureSignals(code:"EDEMAS").save() //Edemas
        new RightHeartFailureSignals(code:"IC").save() //IC &lt; 2 L/min/m2
        new RightHeartFailureSignals(code:"PVC").save() //PVC &gt; 18 mm

        new RightHeartFailureNeeds(code:"RIGHT_ASISTANCE").save() //Necesidad de implante de dispositivo de asistencia derecha
        new RightHeartFailureNeeds(code:"INOTROPICS").save() //Necesidad de inotrópicos tras 14 días del implante del dispositivo
        new RightHeartFailureNeeds(code:"OTHER").save() //Otra

        new PeripheralVascularAccessComplicationsType(code:"ISCHEMIC").save() // Isquémicas
        new PeripheralVascularAccessComplicationsType(code:"LYMPHORRHAGIA").save() // Linforragia
        new PeripheralVascularAccessComplicationsType(code:"OTHER").save() // Otra

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
                        cardiacCareType: CardiacCareType.findByCode("SHORT"),
                        patientAgeOnImplant:60,
                        implantDate: new Date() -60*365,
                        bloodType: BloodType.findAll().first(),
                        rhFactor: RHFactor.findAll().first(),
                        bmi: 15
                ]
        )
        patient.save()
        patient.events = new ArrayList<Event>()
        MalfunctionDevice event = new MalfunctionDevice()
        event.patient=patient
        event.eventDate=new Date()
        event.patientHealthStatus=PatientHealthStatus.findAll().first()
        event.patientDeath= true
        event.removedAssistance=RemovedAssistance.findAll().first()
        event.malfunctionDeviceType=MalfunctionDeviceType.findAll().first()
        event.urgentSurgery=UrgentSurgery.findAll().first()
        event.changeAssistanceComponents=true
        event.removedAssistanceDeath = RemovedAssistanceDeath.findAll().first()
        event.aliveDays = 2
        event.aliveAfterHospital = true
        patient.events.add(event)
        event.save()
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
                            cardiacCareType: CardiacCareType.findByCode("LONG"),
                            patientAgeOnImplant:60,
                            implantDate: new Date() -60*365,
                            bloodType: BloodType.findAll().first(),
                            rhFactor: RHFactor.findAll().first(),
                            bmi: 15
                    ]
            )
            patientPaz.save()
        }

    }
    def destroy = {
    }
}
