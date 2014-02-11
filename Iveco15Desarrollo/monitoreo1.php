<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
<title>monitoreo</title>     
<script src="javascript/prefixfree.js" type="text/javascript"></script>
       
 <script type="text/javascript" src="javascript/actualizacion.js"></script>
  <script type="text/javascript" src="javascript/jquery-1.7.2.js"></script>
          <script src="javascript/tooltip.js" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="noty/demo/buttons.css"/>
  		<script type="text/javascript" src="javascript/hora.js"></script>
  <link rel="stylesheet" href="css/style.css" />
  	<link rel="shortcut icon" href="image/icono.ico"> 
</head>
	 
      <body>
<div id="wrap2">
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
<br /><br />
            <div id="principal" align="center">
            		   <p> <h2>Si Deseas Volver Haz Click Aqui</h2><a id="pantallac" href="administrador.php" ><img  align="top" src="image/BOTON.png" /> </a></p>
                    <img src="image/loading2.gif" width="60%" height="60%">       
            </div>
</div>
</body>
</html>
