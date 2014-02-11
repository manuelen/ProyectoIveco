<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
        <script src="javascript/prefixfree.js" type="text/javascript"></script>
        <script type="text/javascript" src="javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="javascript/ddaccordion.js"></script>
		<script type="text/javascript" src="javascript/java.js"></script>
        <script type="text/javascript" src="javascript/actualizacion.js"></script>
        <script src="javascript/tooltip.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="noty/demo/buttons.css"/>
		<script type="text/javascript" src="javascript/hora.js"></script>
    </head>
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    <body>
    <div id="wrap">
    	
	  <header>
	    <p id="logo"><a href="http://monitoreoiveco.blogspot.com/"><img src="image/iveco-03.png"/></a>
        <br />
        <b>
		<?php setlocale(LC_ALL,'spanish');
			echo strftime("%A %d/%m/%y") 
		 ?>
			</b>
        <br />
          <span id="liveclock">
			</span>
		</p>
			<h1>Sistema de Alerta y Monitoreo de Servicios IVECO VENEZUELA </h1>   
	  </header>
      
      <nav id="linea">				
           <?php
		   $pagina=5;
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
                	include ('menu.php');
					require('conexion.php');
					session_start();
					$recordatorio=mysql_query("SELECT DATEDIFF(now(),fecha) as fecha FROM `auditoria` WHERE usuario ='".$_SESSION['usuario']."' and accion like '%Modificar Usuario%' ORDER BY  `auditoria`.`codigo` DESC ");
					$recordatorios=mysql_fetch_array($recordatorio);
					if($recordatorios['fecha']>=15){
						?>
                        <script>
                        alert('Se Recomienda Modificar tus Datos por seguridad');
                        </script>
				<?php		}
					
                 ?>
			</nav>
            
        	<section id="principal">
                    <img src="image/loading2.gif" width="60%" height="60%">   
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>