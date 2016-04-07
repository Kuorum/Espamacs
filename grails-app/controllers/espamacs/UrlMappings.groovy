package espamacs

class UrlMappings {

    static mappings = {

        name home: "/" (controller: "patient")

        name centros: "/centros" (controller:"centre")
        name usuarios: "/usuarios" (controller:"espamacsUser")

        name patientList:               "/patients" (controller:"patient")
        name patientCreate:             "/patient/create" (controller:"patient") {action=[GET:"create", POST:"save"]}
        name patientShow:               "/patient/${patientId}" (controller:"patient", action:"show")
        name patientEdit:               "/patient/edit/$patientId" (controller:"patient") {action=[GET:"edit", POST:"update"]}
        name patientPersonalHistory:    "/patient/edit/$patientId/personalHistory" (controller:"patient") {action=[GET:"postGet", POST:"savePersonalHistory"]}
        name patientBaselineCondition:  "/patient/edit/$patientId/baselineConditions" (controller:"patient") {action=[GET:"postGet", POST:"saveBaselineCondition"]}
        name patientPreimplantSituation:"/patient/edit/$patientId/preimplantSituation" (controller:"patient") {action=[GET:"postGet", POST:"savePreimplantSituation"]}
        name patientDiagnosisAndImplantGoals:"/patient/edit/$patientId/diagnosisAndImplantGoals" (controller:"patient") {action=[GET:"postGet", POST:"saveDiagnosisAndImplantGoals"]}
        name patientImplantData:        "/patient/edit/$patientId/implantData" (controller:"patient") {action=[GET:"postGet", POST:"saveImplantData"]}

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
