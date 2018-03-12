package sca

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/acerca-de"(view: "/acerca-de")
        "/olvidePassword"(view: "/olvidePassword")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
