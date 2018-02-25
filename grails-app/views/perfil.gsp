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
    <div class="col-xs-12 col-md-6">
      <div class="box box-info">
        <div class="box-header">
          <i class="fa fa-info"></i>
          <h3 class="box-title">Datos de usuario</h3>
        </div> <!-- /.box-header -->
        <div class="box-body">
          En construcción
        </div> <!-- /.box-body -->
      </div> <!-- /.box -->
    </div>
    <div class="col-xs-12 col-md-6">
      <div class="box box-info">
        <div class="box-header">
          <i class="fa fa-upload"></i>
          <h3 class="box-title">Actualizar contraseña</h3>
        </div> <!-- /.box-header -->
        <div class="box-body">
          En construcción
        </div> <!-- /.box-body -->
      </div> <!-- /.box -->
    </div>
  </div> <!-- /.row -->
</body>
</html>
