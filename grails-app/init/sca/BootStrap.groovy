package sca

import com.tecnosalle.sca.Usuario
import com.tecnosalle.sca.Rol
import com.tecnosalle.sca.UsuarioRol

class BootStrap {

  def init = { servletContext ->
    def superRole = new Rol(authority: "ROLE_SUPERADMIN")
      .save(failOnError: true)
    def adminRole = new Rol(authority: "ROLE_ADMIN")
      .save(failOnError: true)

    def superUser = new Usuario(username: "super@tecnosalle.com", password: "super")
      .save(failOnError: true)

    def adminUser = new Usuario(username: "admin@tecnosalle.com", password: "admin")
      .save(failOnError: true)

    UsuarioRol.create superUser, superRole
    UsuarioRol.create adminUser, adminRole

    UsuarioRol.withSession {
      it.flush()
      it.clear()
    }

  }
  def destroy = {
  }
}
