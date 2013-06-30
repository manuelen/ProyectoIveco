<!DOCTYPE html>

<html lang="es">

    <head> 
        <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
        <script src="javascript/prefixfree.js" type="text/javascript"></script>
        <script type="text/javascript" src="javascript/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="javascript/ddaccordion.js"></script>
		<script type="text/javascript" src="javascript/java.js"></script>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
    </head>
    
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
		   $pagina=$_REQUEST['ubicar'];
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
            
        	<section id="principal2">
            <?php
				$ubicar=$_REQUEST['ubicar'];
			 ?>
                 <object
					type="application/pdf" 
					data="manuales/Manual.pdf#page=<?php echo $ubicar ?>"
					style="width: 900px; height: 550px;" >
					ERROR (no puede mostrarse el objeto)
				</object>
            </section>
             
	   </section>
        
<footer>
<p><b>DISE�ADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>