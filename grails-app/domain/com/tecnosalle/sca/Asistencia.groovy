package com.tecnosalle.sca

import java.time.LocalDateTime

class Asistencia {

    LocalDateTime fecha
    Empleado empleado

    static constraints = {
        fecha (max: LocalDateTime.now())
    }

    @Override
    String toString() {
        return empleado + " (${fecha?.format("dd/MM/yyyy hh:mm:ss")})"
    }
}
