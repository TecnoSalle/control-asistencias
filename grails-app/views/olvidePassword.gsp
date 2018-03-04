
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Recuperar contraseña</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <asset:stylesheet href="bootstrap.min.css" />
  <!-- Font Awesome -->
  <asset:stylesheet href="font-awesome.min.css" />
  <!-- Ionicons -->
  <asset:stylesheet href="plugins/Ionicons/ionicons.min.css" />
  <!-- Theme style -->
  <asset:stylesheet href="adminLTE/adminLTE.min.css" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition lockscreen">
<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <a href="${createLink(uri: '/')}">Sistema de Control de Asistencias</a>
  </div>

  <div class="alert alert-warning alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h4><i class="icon fa fa-warning"></i>Módulo en construcción</h4>
    Estamos trabajando para construir esta funcionalidad
  </div>

  <!-- User name -->
  <div class="lockscreen-name">Recuperar contraseña</div>

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
      <asset:image src="user.png" alt="Imagen usuario"/>
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form class="lockscreen-credentials">
      <div class="input-group">
        <input type="email" class="form-control" placeholder="Correo electrónico">

        <div class="input-group-btn">
          <button type="button" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
        </div>
      </div>
    </form>
    <!-- /.lockscreen credentials -->

  </div>
  <!-- /.lockscreen-item -->
  <div class="help-block text-center">
    Ingrese su correo electrónico para recuperar su contraseña
  </div>
  <div class="text-center">
    Enviaremos un email con la información necesaria para recuperar su cuenta
  </div>
  <div class="lockscreen-footer text-center">
    Copyright &copy; ${Calendar.getInstance().get(Calendar.YEAR)} <b>Tecnosalle</b><br>
    Todos los derechos reservados
  </div>
</div>
<!-- /.center -->

<!-- jQuery 3 -->
<asset:javascript src="jquery.min.js" />
<!-- Bootstrap 3.3.7 -->
<asset:javascript src="bootstrap.min.js" />
</body>
</html>
