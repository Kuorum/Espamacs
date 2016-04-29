package espamacs

import org.springframework.security.access.AccessDeniedException

class UrlMappings {

    static mappings = {

        name home: "/" (controller: "patient")

        name users: "/usuarios" (controller:"espamacsUser")
        name userCreate: "/usuarios/create" (controller:"espamacsUser"){action=[GET:"create", POST:"save"]}
        name userShow: "/usuarios/${id}" (controller:"espamacsUser", action:"show")
        name userEdit: "/usuarios/${id}/edit" (controller:"espamacsUser"){action=[GET:"edit", POST:"update"]}

        name patientList:               "/patients" (controller:"patient")
        name patientCreate:             "/patient/create" (controller:"patient") {action=[GET:"create", POST:"save"]}
        name patientShow:               "/patient/${patientId}" (controller:"patient", action:"show")
        name patientDelete:             "/patient/$patientId/delete" (controller:"patient", action:"delete")
        name patientEdit:               "/patient/edit/$patientId" (controller:"patient") {action=[GET:"edit", POST:"update"]}
        name patientPersonalHistory:    "/patient/edit/$patientId/personalHistory" (controller:"patient") {action=[GET:"postGet", POST:"savePersonalHistory"]}
        name patientBaselineCondition:  "/patient/edit/$patientId/baselineConditions" (controller:"patient") {action=[GET:"postGet", POST:"saveBaselineCondition"]}
        name patientPreimplantSituation:"/patient/edit/$patientId/preimplantSituation" (controller:"patient") {action=[GET:"postGet", POST:"savePreimplantSituation"]}
        name patientDiagnosisAndImplantGoals:"/patient/edit/$patientId/diagnosisAndImplantGoals" (controller:"patient") {action=[GET:"postGet", POST:"saveDiagnosisAndImplantGoals"]}
        name patientImplantData:        "/patient/edit/$patientId/implantData" (controller:"patient") {action=[GET:"postGet", POST:"saveImplantData"]}
        name patientInitialData:        "/patient/edit/$patientId/initialData" (controller:"patient") {action=[GET:"postGet", POST:"saveInitialData"]}

        name patientEvent:        "/patient/$patientId/event/${eventId}" (controller:"event"){action=[GET:"edit", POST:"update"]}
        name patientEventEdit:    "/patient/$patientId/event/${eventId}/edit" (controller:"event"){action=[GET:"edit", POST:"update"]}

        name patientEventCreateHemorrhage:               "/patient/${patientId}/add-event/Hemorrhage"               (controller:"event"){action=[GET:'createHemorrhage', POST:'saveHemorrhage']}
        name patientEventCreateInfection:                "/patient/${patientId}/add-event/Infection"                (controller:"event"){action=[GET:'createInfection', POST:'saveInfection']}
        name patientEventCreateNeurologicalDysfunction:  "/patient/${patientId}/add-event/NeurologicalDysfunction"  (controller:"event"){action=[GET:'createNeurologicalDysfunction', POST:'saveNeurologicalDysfunction']}
        name patientEventCreateArrhythmia:               "/patient/${patientId}/add-event/Arrhythmia"               (controller:"event"){action=[GET:'createArrhythmia', POST:'saveArrhythmia']}
        name patientEventCreateHepaticDysfunction:       "/patient/${patientId}/add-event/HepaticDysfunction"       (controller:"event"){action=[GET:'createHepaticDysfunction', POST:'saveHepaticDysfunction']}
        name patientEventCreateRenalDysfunction:         "/patient/${patientId}/add-event/RenalDysfunction"         (controller:"event"){action=[GET:'createRenalDysfunction', POST:'saveRenalDysfunction']}
        name patientEventCreateRespiratoryFailure:       "/patient/${patientId}/add-event/RespiratoryFailure"       (controller:"event"){action=[GET:'createRespiratoryFailure', POST:'saveRespiratoryFailure']}
        name patientEventCreateArterialThromboembolism:  "/patient/${patientId}/add-event/ArterialThromboembolism"  (controller:"event"){action=[GET:'createArterialThromboembolism', POST:'saveArterialThromboembolism']}
        name patientEventCreateWoundDehiscence:          "/patient/${patientId}/add-event/WoundDehiscence"          (controller:"event"){action=[GET:'createWoundDehiscence', POST:'saveWoundDehiscence']}
        name patientEventCreateVenousThromboembolism:    "/patient/${patientId}/add-event/VenousThromboembolism"    (controller:"event"){action=[GET:'createVenousThromboembolism', POST:'saveVenousThromboembolism']}
        name patientEventCreateMyocardialInfarction:     "/patient/${patientId}/add-event/MyocardialInfarction"     (controller:"event"){action=[GET:'createMyocardialInfarction', POST:'saveMyocardialInfarction']}
        name patientEventCreatePericardialEffusion:      "/patient/${patientId}/add-event/PericardialEffusion"      (controller:"event"){action=[GET:'createPericardialEffusion', POST:'savePericardialEffusion']}
        name patientEventCreateHemolysis:                "/patient/${patientId}/add-event/Hemolysis"                (controller:"event"){action=[GET:'createHemolysis', POST:'saveHemolysis']}
        name patientEventCreateRightHeartFailure:        "/patient/${patientId}/add-event/RightHeartFailure"        (controller:"event"){action=[GET:'createRightHeartFailure', POST:'saveRightHeartFailure']}
        name patientEventCreateOtherEvent:               "/patient/${patientId}/add-event/OtherEvent"               (controller:"event"){action=[GET:'createOtherEvent', POST:'saveOtherEvent']}
        name patientEventCreateMalfunctionDevice:        "/patient/${patientId}/add-event/MalfunctionDevice"        (controller:"event"){action=[GET:'createMalfunctionDevice', POST:'saveMalfunctionDevice']}
        name patientEventCreatePeripheralVascularAccessComplications:        "/patient/${patientId}/add-event/PeripheralVascularAccessComplications"        (controller:"event"){action=[GET:'createPeripheralVascularAccessComplications', POST:'savePeripheralVascularAccessComplications']}

        name centreList:                                 "/centros"         (controller:"centre", action:"index")
        name centreShow:                                 "/centros/${id}"   (controller:"centre", action:"show")
        name centreEdit:                                 "/centros/${id}/edit"   (controller:"centre"){action=[GET:'edit', POST:'update']}

        name profile:                                    "/profile"   (controller:"profile"){action=[GET:'edit', POST:'update']}

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/error" (view:'/error')

        "403" (controller: "error", action: "notAuthorized")
        "401" (controller: "error", action: "notAuthorized")
        "500" (controller: "error", action: "notAuthorized", exception: AccessDeniedException)
        "500" (controller: "error", action: "error")
        "404"(view:'/notFound')
    }
}
