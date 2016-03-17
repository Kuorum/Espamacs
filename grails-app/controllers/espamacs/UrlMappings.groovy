package espamacs

class UrlMappings {

    static mappings = {

        home: "/" (controller: "paciente")

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
