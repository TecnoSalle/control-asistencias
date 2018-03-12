<!doctype html>
<html>
<head>
  <meta name="layout" content="adminLTE"/>
  <title>Perfil</title>

  <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
  <content tag="titulo">Mi perfil</content>
  <content tag="descripcion">Información de usuario</content>
  <content tag="breadcrumb">
    <li><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i>Inicio</a></li>
    <li><a href="${createLink(uri: '/perfil')}" class="active"><i class="fa fa-user"></i>Perfil</a></li>
  </content>

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="box box-info">
        <div class="box-header">
          <i class="fa fa-info"></i>
          <h3 class="box-title">Datos de usuario</h3>
        </div> <!-- /.box-header -->
        <div class="box-body">
      <div class="container">
      <div class="row">
      <div class="col-xs-12 col-sm-9 col-md-9 col-lg-10" >
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">(Numero de Empleado) Nombres ApellidoPaterno ApellidoMaterno</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                <asset:image src="shadow.jpg" height="130" width="130"/>
                <h5>Yu Ban Mena Zabala</h5>
                <h5><strong>Jefe de la Unidad Ultra</strong></h5>

                </div>
                <div class=" col-md-9 col-lg-9 ">
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Departmento:</td>
                        <td>Programación y Redes</td>
                      </tr>
                      <tr>
                        <td>Horario de Trabajo:</td>
                        <td>de 8:00 am a 12:00</td>
                      </tr>
                      <tr>
                        <td>Fecha de Nacimiento</td>
                        <td>01/24/1988</td>
                      </tr>

                         <tr>
                             <tr>
                        <td>Genero:</td>
                        <td>Masculino</td>
                      </tr>
                        <tr>
                        <td>Dirección</td>
                        <td>Kathmandu,Nepal 108 Colonia Los Papus</td>
                      </tr>
                      <tr>
                        <td>Correo Electrónico</td>
                        <td><a href="mailto:info@support.com">info@support.com</a></td>
                      </tr>
                        <td>Teléfono</td>
                        <td>123-4567-890(Casa)<br><br>555-4567-890(Celular)
                        </td>

                      </tr>

                    </tbody>
                  </table>
                  <a href="#" class="btn btn-warning">Editar Datos</a>
                  <a href="${createLink(uri: '/perfil/actualizarPassword')}" class="btn btn-primary">Actualizar Contraseña</a>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>





        </div> <!-- /.box-body -->
      </div> <!-- /.box -->
    </div>

</body>
</html>
