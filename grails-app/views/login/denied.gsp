<!doctype html>
<html>
<head>
  <title>Acceso denegado</title>
  <meta name="layout" content="adminLte">
  <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
<body>
  <content tag="titulo">Página denegada</content>
  <content tag="descripcion">Sin permisos</content>
  <content tag="breadcrumb">
    <li><a href="${createLink(uri: '/')}" class="active"><i class="fa fa-home"></i>Inicio</a></li>
  </content>
  <div class="error-page">
    <h2 class="headline text-yellow"> 403</h2>
    <div class="error-content" style="padding-top: 10px;">
      <h3><i class="fa fa-warning text-yellow"></i> Ups! Acceso denegado</h3>
      <p>
        No tiene permisos para acceder a la página (${request.forwardURI}).
        Mientras tanto, puedes <a href="${createLink(uri: '/')}">regresar al inicio</a>.
      </p>
    </div>
    <!-- /.error-content -->
  </div>
</body>
</html>
