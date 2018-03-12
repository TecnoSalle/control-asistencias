<!doctype html>
<html>
<head>
  <meta name="layout" content="adminLTE"/>
  <title>Actualizar contraseña</title>

  <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
  <content tag="titulo">Actualizar contraseña</content>
  <content tag="descripcion">Cambiar credenciales de usuario</content>
  <content tag="breadcrumb">
    <li><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i>Inicio</a></li>
    <li><a href="${createLink(uri: '/perfil')}"><i class="fa fa-user"></i>Perfil</a></li>
    <li><a href="${createLink(uri: '/perfil/actualizarPassword')}" class="active"><i class="fa fa-lock"></i>Actualizar contraseña</a></li>
  </content>

  <div class="box box-info">
    <div class="box-header with-border">
      <i class="fa fa-lock"></i>
      <h3 class="box-title">Cambio de contraseña</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form class="form-horizontal">
      <div class="box-body">
        <div class="form-group">
          <label for="actual" class="col-sm-2 control-label">Contraseña actual</label>

          <div class="col-sm-10">
            <input type="password" class="form-control" id="actual" placeholder="Contraseña actual">
          </div>
        </div>
        <div class="form-group">
          <label for="nueva" class="col-sm-2 control-label">Nueva contraseña</label>

          <div class="col-sm-10">
            <input type="password" class="form-control" id="nueva" placeholder="Nueva contraseña">
          </div>
        </div>
        <div class="form-group">
          <label for="confirmar" class="col-sm-2 control-label">Confirmar contraseña</label>

          <div class="col-sm-10">
            <input type="password" class="form-control" id="confirmar" placeholder="Confirmar contraseña">
          </div>
        </div>
      </div>
      <!-- /.box-body -->
      <div class="box-footer">
        <a href="${createLink(uri: '/perfil')}" class="btn btn-default">Cancelar</a>
        <button type="submit" class="btn btn-info pull-right">Confirmar</button>
      </div>
      <!-- /.box-footer -->
    </form>
  </div>
</body>
</html>
