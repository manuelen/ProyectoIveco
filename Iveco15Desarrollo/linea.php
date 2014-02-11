	<link rel="shortcut icon" href="image/icono.ico"> 
	<link rel="stylesheet" href="css/style3.css" />  
    <script src="javascript/login.js"></script>
    <script src="javascript/jquery-1.7.2.js"></script>

         	<ul >
            	<li id="todo"></li>
        	    <li id="linea"><a href="administrador.php" title="Inicio"><img id="inicio" src="image/Sin título-1.png" /></a></li>
               	<li id="linea"><a href="mapa.php" title="Mapa de Sitio"><img id="mapa" src="image/mapa1.png" /></a></li>
               	<li id="linea"><a href="help.php?ubicar=<?php echo $pagina; ?>" title="Ayuda"><img id="help" src="image/consulta.png" /></a></li>
                <?php if ($_SERVER['REQUEST_URI']=="/dropbox/ProyectoIveco/iveco15Desarrollo/administrador.php"){?>
                <li id="linea"><a href="monitoreo1.php" title="Pantalla Completa"><img id="Pantallass" src="image/BOTON.png" /> </a></li>
                <?php } ?>
                <li id="linea" class="usuario"><?php
				include('funciones.php');
			//uso de la funcion verificar_usuario()
			if (verificar_usuario()){
			error_reporting(0); 
			//si el usuario es verificado puede acceder al contenido permitido a el
		     echo "     <!-- Login Starts Here -->
            <div id='loginContainer'>
                <a href='#' id='loginButton' title='Usuario del Sistema'><img id='user' src='image/Users.png' /></a>
                <div id='loginBox'>                
                    <div id='loginForm'>
					<h2>Bienvenido $_SESSION[nombre]</h2>
                        <fieldset id='body'>
						
                  <ul class='session' style='text-align:left;'>
                  	<li><a href='ModificarUsuario.php?cedula=".$_SESSION['cedula']."' target='mainFrame'  font-size:12;'><p>Modificar</p></a></li>
					<li><a href='salir.php?usuario=".$_SESSION['usuario']."' target='mainFrame'  font-size:12;'><p>Desconectarse</p></a></li>
				  </ul>
                        </fieldset>
                    </div>
                </div>
            </div>
            <!-- Login Ends Here -->";
			
			} else {
				//si el usuario no es verificado volvera al formulario de ingreso
			header('Location:index.php');
			}
			?> </a></li>
       		</ul>
