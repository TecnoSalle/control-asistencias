package sca

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/perfil"(view: "/perfil")
        "/acerca-de"(view: "/acerca-de")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
