package com.tecnosalle.sca

class Empleado {

    String codigo
    String nombre
    String apellidos
    String telefonoCelular
    String telefonoCasa
    String email
    String cargo
    Boolean esJefeDepartamento

    Genero genero

    Departamento departamento
    Horario horario
    Domicilio domicilio

    static constraints = {
        codigo (unique: true, size: 4..19)
        nombre (shared: "personName")
        apellidos (shared: "personName")
        telefonoCasa (nullable: true)
        telefonoCelular (nullable: true)
        email (nullable: true, email: true, size: 6..50)
        cargo (size: 3..35)

        domicilio (nullable: true)
    }

    static mapping = {
        genero enumType: "identity"
    }

    @Override
    String toString() {
        return "${nombre} ${apellidos}"
    }
}
