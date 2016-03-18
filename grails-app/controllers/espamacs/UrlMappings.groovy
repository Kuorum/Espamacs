package espamacs

class UrlMappings {

    static mappings = {

        name home: "/" (controller: "paciente")

        name centros: "/centros" (controller:"centro")
        name usuarios: "/usuarios" (controller:"espamacsUser")

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
