package com.tecnosalle.sca

class Horario {

    String nombre
    Integer horaEntrada
    Integer horaSalida
    Boolean esPlantilla

    List dias
    static hasMany = [dias: String]

    static constraints = {
        nombre (nullable: true, blank: false, size: 2..25)
        horaEntrada (validator: { entrada, obj -> entrada < obj.horaSalida })
        horaSalida (validator:  { salida, obj -> salida > obj.horaEntrada })

        //dias (inList: ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes"])
    }

    @Override
    String toString() {
        return nombre ?: "${horaEntrada} a ${horaSalida}"
    }
}
