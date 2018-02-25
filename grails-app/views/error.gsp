<!doctype html>
<html>
<head>
  <title>Error</title>
  <meta name="layout" content="adminLte">
  <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
<body>
  <g:if env="development">
    <g:if test="${Throwable.isInstance(exception)}">
      <g:renderException exception="${exception}" />
    </g:if>
    <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
      <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
    </g:elseif>
    <g:else>
      <ul class="errors">
        <li>An error has occurred</li>
        <li>Exception: ${exception}</li>
        <li>Message: ${message}</li>
        <li>Path: ${path}</li>
      </ul>
    </g:else>
  </g:if>
  <g:else>
    <content tag="titulo">Error de servidor</content>
    <content tag="descripcion">(500)</content>
    <content tag="breadcrumb">
      <li><a href="${createLink(uri: '/')}" class="active"><i class="fa fa-home"></i>Inicio</a></li>
    </content>
    <div class="error-page">
      <h2 class="headline text-red">500</h2>
      <div class="error-content" style="padding-top: 10px;">
        <h3><i class="fa fa-warning text-red"></i> Ups! Algo salió mal</h3>
        <p>
          Trabajaremos para arreglarlo de la mejor forma.
          Mientras tanto, puede <a href="${createLink(uri: '/')}">regresar al inicio</a> o ponerse en contacto con nosotros.
        </p>
      </div>
    </div>
  </g:else>
</body>
</html>
