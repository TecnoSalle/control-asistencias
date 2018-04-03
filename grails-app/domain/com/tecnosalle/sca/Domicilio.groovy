package com.tecnosalle.sca

class Domicilio {

    String calle
    String colonia
    String municipio
    String entidadFederativa
    String numeroExterior
    String numeroInterior
    String codigoPostal

    static belongsTo = [empleado: Empleado]

    static constraints = {
        calle (shared: "domicilio")
        colonia (shared: "domicilio")
        municipio (shared: "domicilio")
        entidadFederativa (shared: "domicilio")
        numeroExterior (size: 1..6)
        numeroInterior (nullable: true, blank: true, maxSize: 6)
        codigoPostal (size: 3..6)
    }

    @Override
    String toString() {
        return "${calle} ${colonia}"
    }
}
