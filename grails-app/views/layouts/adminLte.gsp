<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>
    <g:layoutTitle default="SCA"/>
  </title>
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
  <!-- AdminLTE Skins. Choose a skin from the css/skins
  folder instead of downloading all of them to reduce the load. -->
  <asset:stylesheet href="adminLTE/skins/_all-skins.min.css" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <g:layoutHead />

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-red-light sidebar-mini">
  <div class="wrapper">
    <header class="main-header">
      <!-- Logo -->
      <a href="${createLink(uri: '/')}" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">SCA</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">Control de asistencias</span>
      </a>

      <nav class="navbar navbar-static-top">
        <sec:ifLoggedIn>
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
        </sec:ifLoggedIn>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <sec:ifLoggedIn>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <asset:image src="user.png" class="user-image" alt="Imagen usuario" />
                <span class="hidden-xs">
                  <sec:loggedInUserInfo field="username"/>
                </span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <asset:image src="user.png" class="img-circle" alt="Imagen usuario" />
                  <p>
                    <sec:loggedInUserInfo field="username" />
                    <small>
                      <g:set var="springSecurityService" bean="springSecurityService" />
                      ${springSecurityService.getPrincipal().getAuthorities()}
                    </small>
                  </p>
                </li>
                <!-- Menu Body -->
                <li class="user-body">
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="${createLink(uri: '/perfil')}" class="btn btn-default btn-flat">
                      &nbsp;&nbsp;&nbsp;Mi perfil&nbsp;&nbsp;&nbsp;</a>
                  </div>
                  <div class="pull-right">
                    <g:form controller="logout">
                      <button type="submit" name="logout" class="btn btn-default btn-flat">Cerrar sesión</button>
                    </g:form>
                  </div>
                </li>
              </ul>
            </li>
            </sec:ifLoggedIn>
          </ul>
        </div>
      </nav>
    </header>
    <!-- =============================================== -->

    <sec:ifLoggedIn>
      <!-- Left side column. contains the sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" style="height: auto;">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <asset:image src="user.png" class="img-circle" alt="Imagen usuario" />
            </div>
            <div class="pull-left info">
              <p style="margin-top: 13px;">
                <sec:loggedInUserInfo field="username" />
              </p>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Buscar...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu tree" data-widget="tree">
            <li class="header">MENÚ DE OPCIONES</li>
            <li><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i><span>Inicio</span></a></li>
            <sec:access expression="hasRole('ROLE_SUPERADMIN')">
              <!-- Menús que pertenecen al usuario ROLE_SUPERADMIN -->
            </sec:access>
            <sec:access expression="hasRole('ROLE_ADMIN')">
              <!-- Menús que pertenecen al usuario ROLE_ADMIN -->
            </sec:access>
            <li><a href="${createLink(uri: '/acerca-de')}"><i class="fa fa-question-circle"></i><span>Acerca de</span></a></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
    </sec:ifLoggedIn>
    <!-- =============================================== -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="min-height: 1126px;">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          <g:pageProperty name="page.titulo" />
          <small>
            <g:pageProperty name="page.descripcion" />
          </small>
        </h1>
        <ol class="breadcrumb">
          <g:pageProperty name="page.breadcrumb" />
        </ol>
      </section>

      <section class="content">
        <g:layoutBody />
      </section>
    </div> <!-- /.content-wrapper -->

    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Powered by </b> <strong><a href="https://adminlte.io">Almsaeed Studio</a>.</strong>
      </div>
      <strong>
        Copyright &copy; ${Calendar.getInstance().get(Calendar.YEAR)} <span class="text-primary">Tecnosalle<span>.
      </strong>
      Todos los derechos reservados.
    </footer>
  </div> <!-- /.wrapper -->

  <!-- jQuery 3 -->
  <asset:javascript src="jquery.min.js" />
  <!-- Bootstrap 3.3.7 -->
  <asset:javascript src="bootstrap.min.js" />
  <!-- SlimScroll -->
  <asset:javascript src="jquery.slimscroll.min.js" />
  <!-- AdminLTE App -->
  <asset:javascript src="adminlte.min.js" />

  <script>
    $(document).ready(function () {
      $('.sidebar-menu').tree()
    })
  </script>
</body>
</html>
