package com.tecnosalle.sca

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional

@Secured(["permitAll"])
class AsistenciaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Asistencia.list(params), model:[asistenciaCount: Asistencia.count()]
    }

    def show(Asistencia asistencia) {
        respond asistencia
    }

    def create() {
        respond new Asistencia(params)
    }

    @Transactional
    def save(Asistencia asistencia) {
        if (asistencia == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (asistencia.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond asistencia.errors, view:'create'
            return
        }

        asistencia.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'asistencia.label', default: 'Asistencia'), asistencia.id])
                redirect asistencia
            }
            '*' { respond asistencia, [status: CREATED] }
        }
    }

    def edit(Asistencia asistencia) {
        respond asistencia
    }

    @Transactional
    def update(Asistencia asistencia) {
        if (asistencia == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (asistencia.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond asistencia.errors, view:'edit'
            return
        }

        asistencia.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'asistencia.label', default: 'Asistencia'), asistencia.id])
                redirect asistencia
            }
            '*'{ respond asistencia, [status: OK] }
        }
    }

    @Transactional
    def delete(Asistencia asistencia) {

        if (asistencia == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        asistencia.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'asistencia.label', default: 'Asistencia'), asistencia.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'asistencia.label', default: 'Asistencia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
