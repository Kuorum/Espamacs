package espamacs

import espamacs.baselineConditions.BaselineCondition
import espamacs.diagnosis.DiagnosisAndImplantGoals
import espamacs.implantData.ImplantData
import espamacs.initialData.InitialData
import espamacs.patientData.PersonalHistory
import espamacs.preimplantSituation.PreimplantSituation
import grails.transaction.Transactional

import javax.servlet.ServletOutputStream

@Transactional(readOnly = true)
class ExportController {

    static allowedMethods = [save: "POST", update: "POST"]

    def index() {

    }

    def allCSV(){
        final String filename = 'patients.csv'

        ServletOutputStream out = response.outputStream
        response.status = org.springframework.http.HttpStatus.OK.value()
        response.contentType = "text/csv;charset=UTF-8";
        response.setHeader "Content-disposition", "attachment; filename=${filename}"

        String comma = ","
        headers(out, comma);
        out << "\n"
        Patient.findAll().each { Patient patient ->
            exportField(out, patient, "code","")
            exportField(out, patient, "birthDate",comma)
            exportField(out, patient, "weigh",comma)
            exportField(out, patient, "height",comma)
            exportField(out, patient, "gender",comma)
            exportField(out, patient, "centre",comma)
            exportField(out, patient, "externalId",comma)
            exportField(out, patient, "externalId",comma)
            exportField(out, patient, "cardiacCareType",comma)
            exportField(out, patient, "cardiacCareType",comma)
            exportField(out, patient, "bmi",comma)
            exportField(out, patient, "bloodType",comma)
            exportField(out, patient, "implantData",comma)
            exportField(out, patient, "patientAgeOnImplant",comma)
            personalHistory(out, patient.personalHistory, comma)
            baselineConditions(out, patient.baselineCondition, comma)
            preimplantSituation(out, patient.preimplantSituation, comma)
            diagnosis(out, patient.diagnosisAndImplantGoals, comma)
            implantData(out, patient.implantData, comma)
            initialData(out, patient.initialData, comma)

            out << "\n"
        }

        out.flush()
        out.close()
    }


    private void headers(ServletOutputStream out, String comma){
        headersPatient(out, comma)
        headersPersonalHistory(out, comma)
        headersBaselineConditions(out,comma)
        headersPreimplantSituation(out, comma)
        headersDiagnosis(out, comma)
        headersImplantData(out, comma)
        headersInitialData(out,comma)
    }

    private void exportField(ServletOutputStream out, def bean, String property, String comma){
        if (bean == null){
            out << "${comma} -"
        }else{
            def field = bean."$property"
            if (field == null){
                out << "$comma -"
            }else if (field instanceof Centre) {
                out << "${comma} \"${field.name.trim()}\""
            }else if(field instanceof List){
                String listText = field.findAll{it}.collect{message(code:"${it.class.name}.${it.code}")}.join("|")
                listText = listText.trim()?:"-"
                out << "${comma} \"${listText}\""
            }else{
                String showText = f.display(bean:bean, property:property);
                showText = showText.trim()?:"-"
                out << "${comma} \"${showText}\""
            }
        }
    }

    private void title(ServletOutputStream out, String code, String comma){
        out << "${comma}\"${message(code:code)}\"".replaceAll(/<.*?>/, '');
    }

    private void headersPatient(ServletOutputStream out, String comma){
        out << "" + message(code:"espamacs.Patient.code");
        title(out, "espamacs.Patient.birthDate", comma)
        title(out, "espamacs.Patient.weigh", comma)
        title(out, "espamacs.Patient.height", comma)
        title(out, "espamacs.Patient.gender", comma)
        title(out, "espamacs.Patient.centre", comma)
        title(out, "espamacs.Patient.externalId", comma)
        title(out, "espamacs.Patient.externalId", comma)
        title(out, "espamacs.Patient.cardiacCareType", comma)
        title(out, "espamacs.Patient.cardiacCareType", comma)
        title(out, "espamacs.Patient.bmi", comma)
        title(out, "espamacs.Patient.bloodType", comma)
        title(out, "espamacs.Patient.implantData", comma)
        title(out, "espamacs.Patient.patientAgeOnImplant", comma)
    }

    private void headersPersonalHistory(ServletOutputStream out, String comma){
        title(out, "espamacs.patientData.PersonalHistory.smoker", comma)
        title(out, "espamacs.patientData.PersonalHistory.hypertensive", comma)
        title(out, "espamacs.patientData.PersonalHistory.diabetic", comma)
        title(out, "espamacs.patientData.PersonalHistory.dyslipidemia", comma)
        title(out, "espamacs.patientData.PersonalHistory.obeseType", comma)
        title(out, "espamacs.patientData.PersonalHistory.malnutrition", comma)
        title(out, "espamacs.patientData.PersonalHistory.drinker", comma)
        title(out, "espamacs.patientData.PersonalHistory.intravenouslyDrugs", comma)
        title(out, "espamacs.patientData.PersonalHistory.severeMentalRetardation", comma)
        title(out, "espamacs.patientData.PersonalHistory.socialCareType", comma)
        title(out, "espamacs.patientData.PersonalHistory.preCardiacSurgery", comma)
        title(out, "espamacs.patientData.PersonalHistory.renal.baselineCreatinine", comma)
//        title(out, "espamacs.patientData.PersonalHistory.renal.creatinineClearance", comma)
        title(out, "espamacs.patientData.PersonalHistory.renal.renalReplacementTherapy", comma)
        title(out, "espamacs.patientData.PersonalHistory.respiratory.severeLungDisease", comma)
        title(out, "espamacs.patientData.PersonalHistory.respiratory.primaryPulmonaryHypertension", comma)
        title(out, "espamacs.patientData.PersonalHistory.respiratory.pulmonaryEmbolism", comma)
        title(out, "espamacs.patientData.PersonalHistory.gastric.gastricUlcer", comma)
        title(out, "espamacs.patientData.PersonalHistory.gastric.hepatitis", comma)
        title(out, "espamacs.patientData.PersonalHistory.gastric.cirrhosis", comma)
        title(out, "espamacs.patientData.PersonalHistory.vascular.aortaPathology", comma)
        title(out, "espamacs.patientData.PersonalHistory.vascular.peripheralVascularDisease", comma)
        title(out, "espamacs.patientData.PersonalHistory.centralNervousSystem.stroke", comma)
        title(out, "espamacs.patientData.PersonalHistory.centralNervousSystem.transientIschemicAttack", comma)
        title(out, "espamacs.patientData.PersonalHistory.centralNervousSystem.brainHemorrhage", comma)
        title(out, "espamacs.patientData.PersonalHistory.centralNervousSystem.severeNeurologicalDisease", comma)
        title(out, "espamacs.patientData.PersonalHistory.endocrineHematologicSystem.thyroidDisorders", comma)
        title(out, "espamacs.patientData.PersonalHistory.endocrineHematologicSystem.chronicAnemia", comma)
        title(out, "espamacs.patientData.PersonalHistory.endocrineHematologicSystem.heparinInducedThrombocytopenia", comma)
        title(out, "espamacs.patientData.PersonalHistory.endocrineHematologicSystem.chronicCoagulopathy", comma)
        title(out, "espamacs.patientData.PersonalHistory.oncologicInfectious.malignantTumor", comma)
        title(out, "espamacs.patientData.PersonalHistory.oncologicInfectious.leukemia", comma)
        title(out, "espamacs.patientData.PersonalHistory.oncologicInfectious.hiv", comma)
        title(out, "espamacs.patientData.PersonalHistory.oncologicInfectious.chronicInfectiousDiseases", comma)
    }

    private void personalHistory(ServletOutputStream out, PersonalHistory personalHistory, String comma){
        exportField(out, personalHistory, "smoker", comma)
        exportField(out, personalHistory, "hypertensive", comma)
        exportField(out, personalHistory, "diabetic", comma)
        exportField(out, personalHistory, "dyslipidemia", comma)
        exportField(out, personalHistory, "obeseType", comma)
        exportField(out, personalHistory, "malnutrition", comma)
        exportField(out, personalHistory, "drinker", comma)
        exportField(out, personalHistory, "intravenouslyDrugs", comma)
        exportField(out, personalHistory, "severeMentalRetardation", comma)
        exportField(out, personalHistory, "socialCareType", comma)
        exportField(out, personalHistory, "preCardiacSurgery", comma)
        exportField(out, personalHistory?.renal, "baselineCreatinine", comma)
//        exportField(out, personalHistory?.renal, "creatinineClearance", comma)
        exportField(out, personalHistory?.renal, "renalReplacementTherapy", comma)
        exportField(out, personalHistory?.respiratory, "severeLungDisease", comma)
        exportField(out, personalHistory?.respiratory, "primaryPulmonaryHypertension", comma)
        exportField(out, personalHistory?.respiratory, "pulmonaryEmbolism", comma)
        exportField(out, personalHistory?.gastric, "gastricUlcer", comma)
        exportField(out, personalHistory?.gastric, "hepatitis", comma)
        exportField(out, personalHistory?.gastric, "cirrhosis", comma)
        exportField(out, personalHistory?.vascular, "aortaPathology", comma)
        exportField(out, personalHistory?.vascular, "peripheralVascularDisease", comma)
        exportField(out, personalHistory?.centralNervousSystem, "stroke", comma)
        exportField(out, personalHistory?.centralNervousSystem, "transientIschemicAttack", comma)
        exportField(out, personalHistory?.centralNervousSystem, "brainHemorrhage", comma)
        exportField(out, personalHistory?.centralNervousSystem, "severeNeurologicalDisease", comma)
        exportField(out, personalHistory?.endocrineHematologicSystem, "thyroidDisorders", comma)
        exportField(out, personalHistory?.endocrineHematologicSystem, "chronicAnemia", comma)
        exportField(out, personalHistory?.endocrineHematologicSystem, "heparinInducedThrombocytopenia", comma)
        exportField(out, personalHistory?.endocrineHematologicSystem, "chronicCoagulopathy", comma)
        exportField(out, personalHistory?.oncologicInfectious, "malignantTumor", comma)
        exportField(out, personalHistory?.oncologicInfectious, "leukemia", comma)
        exportField(out, personalHistory?.oncologicInfectious, "hiv", comma)
        exportField(out, personalHistory?.oncologicInfectious, "chronicInfectiousDiseases", comma)
    }


    private void baselineConditions(ServletOutputStream out, BaselineCondition baselineCondition, String comma){
        exportField(out, baselineCondition, "peripheralEdemaLevel", comma)
        exportField(out, baselineCondition, "ascites", comma)
        exportField(out, baselineCondition, "echocardiogramDate", comma)
        exportField(out, baselineCondition, "lvef", comma)
        exportField(out, baselineCondition, "rightVentricleStatus", comma)
        exportField(out, baselineCondition, "tapse", comma)
        exportField(out, baselineCondition, "rightVentricleDilatation", comma)
        exportField(out, baselineCondition, "aorticValveStatuses", comma)
        exportField(out, baselineCondition, "mitralValveStatuses", comma)
        exportField(out, baselineCondition, "tricuspidValveStatuses", comma)
        exportField(out, baselineCondition, "lvdtdd", comma)
        exportField(out, baselineCondition, "lvesd", comma)
        exportField(out, baselineCondition, "volumeEndSistole", comma)
        exportField(out, baselineCondition, "volumeEndDiastole", comma)
        exportField(out, baselineCondition?.hemodynamicData, "catheterizationDate", comma)
        exportField(out, baselineCondition?.hemodynamicData, "systolicArterialPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "diastolicArterialPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "averageArterialPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "hearRate", comma)
        exportField(out, baselineCondition?.hemodynamicData, "systolicArterialPulmonaryPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "diastolicArterialPulmonaryPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "averageArterialPulmonaryPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "pulmonaryCapillaryPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "transpulmonaryGradient", comma)
        exportField(out, baselineCondition?.hemodynamicData, "centralVenousPressure", comma)
        exportField(out, baselineCondition?.hemodynamicData, "pulmonaryVascularResistance", comma)
        exportField(out, baselineCondition?.hemodynamicData, "pulmonaryVascularResistanceWoodUnits", comma)
        exportField(out, baselineCondition?.hemodynamicData, "systemicVascularResistance", comma)
        exportField(out, baselineCondition?.hemodynamicData, "systolicEffortIndex", comma)
        exportField(out, baselineCondition?.hemodynamicData, "cardiacOutput", comma)
        exportField(out, baselineCondition?.hemodynamicData, "cardiacIndex", comma)
        exportField(out, baselineCondition, "sixMinutesDate", comma)
        exportField(out, baselineCondition, "sixMinutesTestDistanceMetres", comma)
        exportField(out, baselineCondition, "sixMinutesTestDistanceV02", comma)
        exportField(out, baselineCondition, "medications", comma)
        exportField(out, baselineCondition, "analyticDate", comma)
        exportField(out, baselineCondition, "sodium", comma)
        exportField(out, baselineCondition, "potassium", comma)
        exportField(out, baselineCondition, "creatinine", comma)
        exportField(out, baselineCondition, "urea", comma)
        exportField(out, baselineCondition, "alt", comma)
        exportField(out, baselineCondition, "ast", comma)
        exportField(out, baselineCondition, "ldh", comma)
        exportField(out, baselineCondition, "cpk", comma)
        exportField(out, baselineCondition, "bilirubin", comma)
        exportField(out, baselineCondition, "leukocytes", comma)
        exportField(out, baselineCondition, "hemoglobin", comma)
        exportField(out, baselineCondition, "platelets", comma)
        exportField(out, baselineCondition, "inr", comma)
        exportField(out, baselineCondition, "nTproBNP", comma)
        exportField(out, baselineCondition, "crp", comma)
        exportField(out, baselineCondition, "albumin", comma)
        exportField(out, baselineCondition, "lactate", comma)
        exportField(out, baselineCondition, "nyha", comma)
    }

    private void headersBaselineConditions(ServletOutputStream out, String comma){
        title(out, "espamacs.baselineConditions.BaselineCondition.peripheralEdemaLevel", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.ascites", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.echocardiogramDate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.lvef", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.rightVentricleStatus", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.tapse", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.rightVentricleDilatation", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.aorticValveStatuses", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.mitralValveStatuses", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.tricuspidValveStatuses", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.lvdtdd", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.lvesd", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.volumeEndSistole", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.volumeEndDiastole", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.catheterizationDate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.systolicArterialPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.diastolicArterialPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.averageArterialPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.hearRate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.systolicArterialPulmonaryPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.diastolicArterialPulmonaryPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.averageArterialPulmonaryPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.pulmonaryCapillaryPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.transpulmonaryGradient", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.centralVenousPressure", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.pulmonaryVascularResistance", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.pulmonaryVascularResistanceWoodUnits", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.systemicVascularResistance", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.systolicEffortIndex", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.cardiacOutput", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemodynamicData.cardiacIndex", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.sixMinutesDate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.sixMinutesTestDistanceMetres", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.sixMinutesTestDistanceV02", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.medications", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.analyticDate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.sodium", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.potassium", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.creatinine", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.urea", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.alt", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.ast", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.ldh", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.cpk", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.bilirubin", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.leukocytes", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.hemoglobin", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.platelets", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.inr", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.nTproBNP", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.crp", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.albumin", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.lactate", comma)
        title(out, "espamacs.baselineConditions.BaselineCondition.nyha", comma)
    }

    private void headersPreimplantSituation(ServletOutputStream out, String comma) {
        title(out, "espamacs.preimplantSituation.PreimplantSituation.preimplantEvents", comma)
        title(out, "espamacs.preimplantSituation.PreimplantSituation.intropicMedications", comma)
        title(out, "espamacs.preimplantSituation.PreimplantSituation.heartAttack", comma)
        title(out, "espamacs.preimplantSituation.PreimplantSituation.intermacsSituation", comma)
    }

    private void preimplantSituation(ServletOutputStream out, PreimplantSituation preimplantSituation, String comma){
        exportField(out, preimplantSituation, "preimplantEvents", comma)
        exportField(out, preimplantSituation, "intropicMedications", comma)
        exportField(out, preimplantSituation, "heartAttack", comma)
        exportField(out, preimplantSituation, "intermacsSituation", comma)
    }

    private void headersDiagnosis(ServletOutputStream out, String comma){
        title(out, "espamacs.diagnosis.DiagnosisAndImplantGoals.implantGoal", comma)
        title(out, "espamacs.diagnosis.DiagnosisAndImplantGoals.contraindication", comma)
        title(out, "espamacs.diagnosis.DiagnosisAndImplantGoals.implantCause", comma)
        title(out, "espamacs.diagnosis.DiagnosisAndImplantGoals.cardiacImplantCause", comma)
        title(out, "espamacs.diagnosis.DiagnosisAndImplantGoals.mainLungImplantCause", comma)
    }

    private void diagnosis(ServletOutputStream out, DiagnosisAndImplantGoals diagnosisAndImplantGoals, String comma){
        exportField(out, diagnosisAndImplantGoals, "implantGoal", comma)
        exportField(out, diagnosisAndImplantGoals, "contraindication", comma)
        exportField(out, diagnosisAndImplantGoals, "implantCause", comma)
        exportField(out, diagnosisAndImplantGoals, "cardiacImplantCause", comma)
        exportField(out, diagnosisAndImplantGoals, "mainLungImplantCause", comma)
    }

    private void headersImplantData(ServletOutputStream out, String comma){
        title(out, "espamacs.implantData.ImplantData.implantType", comma)
        title(out, "espamacs.implantData.ImplantData.lengthBypassMinutes", comma)
        title(out, "espamacs.implantData.ImplantData.collateralSurgery", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.brand", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.bloodFlowType", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.initialFlow", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.lvadData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.brand", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.bloodFlowType", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.initialFlow", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.rvadData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.brand", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.bloodFlowType", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.initialFlow", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.totalHeartData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.brand", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.bloodFlowType", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.initialFlow", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.implantIn", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.implantOut", comma)
        title(out, "espamacs.implantData.ImplantData.ecmoData.implantOut", comma)
    }

    private void implantData(ServletOutputStream out, ImplantData implantData, String comma){
        exportField(out, implantData, "implantType", comma)
        exportField(out, implantData, "lengthBypassMinutes", comma)
        exportField(out, implantData, "collateralSurgery", comma)
        exportField(out, implantData?.lvadData,"brand", comma)
        exportField(out, implantData?.lvadData,"bloodFlowType", comma)
        exportField(out, implantData?.lvadData,"initialFlow", comma)
        exportField(out, implantData?.lvadData,"implantIn", comma)
        exportField(out, implantData?.lvadData,"implantIn", comma)
        exportField(out, implantData?.lvadData,"implantOut", comma)
        exportField(out, implantData?.lvadData,"implantOut", comma)
        exportField(out, implantData?.rvadData,"brand", comma)
        exportField(out, implantData?.rvadData,"bloodFlowType", comma)
        exportField(out, implantData?.rvadData,"initialFlow", comma)
        exportField(out, implantData?.rvadData,"implantIn", comma)
        exportField(out, implantData?.rvadData,"implantOut", comma)
        exportField(out, implantData?.rvadData,"implantOut", comma)
        exportField(out, implantData?.totalHeartData,"brand", comma)
        exportField(out, implantData?.totalHeartData,"bloodFlowType", comma)
        exportField(out, implantData?.totalHeartData,"initialFlow", comma)
        exportField(out, implantData?.totalHeartData,"implantIn", comma)
        exportField(out, implantData?.totalHeartData,"implantIn", comma)
        exportField(out, implantData?.totalHeartData,"implantOut", comma)
        exportField(out, implantData?.totalHeartData,"implantOut", comma)
        exportField(out, implantData?.ecmoData,"brand", comma)
        exportField(out, implantData?.ecmoData,"bloodFlowType", comma)
        exportField(out, implantData?.ecmoData,"initialFlow", comma)
        exportField(out, implantData?.ecmoData,"implantIn", comma)
        exportField(out, implantData?.ecmoData,"implantIn", comma)
        exportField(out, implantData?.ecmoData,"implantOut", comma)
        exportField(out, implantData?.ecmoData,"implantOut", comma)
    }

    private void headersInitialData(ServletOutputStream out, String comma) {
        title(out, "espamacs.initialData.InitialData.patientDischarged", comma)
        title(out, "espamacs.initialData.InitialData.dischargedData.dischargedDate", comma)
        title(out, "espamacs.initialData.InitialData.dischargedData.dischargedDestination", comma)
        title(out, "espamacs.initialData.InitialData.dischargedData.dischargedStatus", comma)
        title(out, "espamacs.initialData.InitialData.exitusData.exitusDate", comma)
        title(out, "espamacs.initialData.InitialData.exitusData.existusStatus", comma)
        title(out, "espamacs.initialData.InitialData.uciTime", comma)
        title(out, "espamacs.initialData.InitialData.hospitalizedTime", comma)
        title(out, "espamacs.initialData.InitialData.timeWithoutIntropicIV", comma)
        title(out, "espamacs.initialData.InitialData.ventilationTime", comma)
        title(out, "espamacs.initialData.InitialData.rightVentricleFailureAfterImplant", comma)
        title(out, "espamacs.initialData.InitialData.surgicalProceduresAfterTransplant", comma)
        title(out, "espamacs.initialData.InitialData.cardiologicalTreatmensAtDischarge", comma)
        title(out, "espamacs.initialData.InitialData.antiheparineAntibodies", comma)
        title(out, "espamacs.initialData.InitialData.bloodMedications", comma)
    }

    private void initialData(ServletOutputStream out, InitialData initialData, String comma) {
        exportField(out, initialData,"patientDischarged", comma)
        exportField(out, initialData?.dischargedData,"dischargedDate", comma)
        exportField(out, initialData?.dischargedData,"dischargedDestination", comma)
        exportField(out, initialData?.dischargedData,"dischargedStatus", comma)
        exportField(out, initialData?.exitusData,"exitusDate", comma)
        exportField(out, initialData?.exitusData,"existusStatus", comma)
        exportField(out, initialData,"uciTime", comma)
        exportField(out, initialData,"hospitalizedTime", comma)
        exportField(out, initialData,"timeWithoutIntropicIV", comma)
        exportField(out, initialData,"ventilationTime", comma)
        exportField(out, initialData,"rightVentricleFailureAfterImplant", comma)
        exportField(out, initialData,"surgicalProceduresAfterTransplant", comma)
        exportField(out, initialData,"cardiologicalTreatmensAtDischarge", comma)
        exportField(out, initialData,"antiheparineAntibodies", comma)
        exportField(out, initialData,"bloodMedications", comma)
    }

}
