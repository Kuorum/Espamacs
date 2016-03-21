package espamacs

class UrlMappings {

    static mappings = {

        name home: "/" (controller: "patient")

        name centros: "/centros" (controller:"centre")
        name usuarios: "/usuarios" (controller:"espamacsUser")

        name patientCreate:             "/patient/create" (controller:"patient") {action=[GET:"create", POST:"save"]}
        name patientEdit:               "/patient/edit/$id" (controller:"patient") {action=[GET:"edit", POST:"update"]}
        name patientPersonalHistory:    "/patient/edit/$id/personalHistory" (controller:"patient") {action=[GET:"editPersonalHistory", POST:"savePersonalHistory"]}

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
