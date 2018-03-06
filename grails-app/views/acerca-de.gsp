<!doctype html>
<html>
<head>
  <meta name="layout" content="adminLTE"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <title>Inicio</title>

  <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
  <content tag="titulo">Acerca de</content>
  <content tag="descripcion">Información del sistema</content>
  <content tag="breadcrumb">
    <li><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i>Inicio</a></li>
    <li><a href="${createLink(uri: '/acerca-de')}" class="active"><i class="fa fa-question-circle"></i>Acerca de</a></li>
  </content>


    <div class="panel panel-default">
      <div class="w3-container w3-padding-32" id="projects">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Reloj checador</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint
          occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat.
        </p>
      </div>

      

      <!-- About Section -->
      <div class="w3-container w3-padding-32" id="about">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Equipo Tecno-Salle</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint
          occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat.
        </p>
      </div>

      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <asset:image src="user1.png" height="250" width="250"/>
          <h3>Luis Paulo</h3>
          <p class="w3-opacity">CEO & Founder</p>
          <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
          <asset:image src="user2.png" height="250" width="250"/>
          <h3>Rey Juan</h3>
          <p class="w3-opacity">Architect</p>
          <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
          <asset:image src="user3.png" height="250" width="250"/>
          <h3>Yu Ban</h3>
          <p class="w3-opacity">Architect</p>
          <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
          <asset:image src="user4.png" height="250" width="250"/>
          <h3>Vianey Andres</h3>
          <p class="w3-opacity">Architect</p>
          <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>

      <!-- Contact Section -->
      <div class="w3-container w3-padding-32" id="contact">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contacto</h3>
        <p>Lets get in touch and talk about your and our next project.</p>
        <form action="/action_page.php" target="_blank">
          <input class="w3-input" type="text" placeholder="Name" required name="Name">
          <input class="w3-input w3-section" type="text" placeholder="Email" required name="Email">
          <input class="w3-input w3-section" type="text" placeholder="Subject" required name="Subject">
          <input class="w3-input w3-section" type="text" placeholder="Comment" required name="Comment">
          <button class="w3-button w3-black w3-section" type="submit">
            <i class="fa fa-paper-plane"></i> SEND MESSAGE
          </button>
        </form>
      </div>

    </div>

    <!-- Project Section -->
    
  <!-- End page content -->
  </div>


  
</body>
</html>
