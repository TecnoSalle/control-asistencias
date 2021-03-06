<!doctype html>
<html>
<head>
  <title>Página no encontrada</title>
  <meta name="layout" content="adminLte">
  <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
<body>
  <content tag="breadcrumb">
    <li><a href="${createLink(uri: '/')}" class="active"><i class="fa fa-home"></i>Inicio</a></li>
  </content>
  <div class="error-page">
    <h2 class="headline text-yellow"> 404</h2>
    <div class="error-content" style="padding-top: 10px;">
      <h3><i class="fa fa-warning text-yellow"></i> Ups! Página no encontrada.</h3>
      <p>
        No pudimos encontrar la página que deseas buscar (${request.forwardURI}).
        Mientras tanto, puedes <a href="${createLink(uri: '/')}">regresar al inicio</a>.
      </p>
    </div>
    <!-- /.error-content -->
  </div>
</body>
</html>
