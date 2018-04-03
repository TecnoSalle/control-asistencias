package com.tecnosalle.sca

class Departamento {

    String codigo
    String nombre
    String descripcion

    Empleado jefe

    static constraints = {
        codigo (nullable: false, unique: true)
        nombre (nullable: false, blank: false)
        descripcion(nullable: true, blank: false)

        jefe (nullable: true)
    }

    @Override
    String toString() {
        return "(${codigo}) " + nombre
    }
}
