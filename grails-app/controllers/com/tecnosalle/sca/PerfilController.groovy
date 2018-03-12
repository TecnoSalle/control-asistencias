package com.tecnosalle.sca

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class PerfilController {

    def index() {

    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def actualizarPassword() {

    }
}
