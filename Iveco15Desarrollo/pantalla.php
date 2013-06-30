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
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
				<script type="text/javascript" src="javascript/hora.js"></script>
			<link rel="stylesheet" type="text/css" href="buttons.css"/>
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
		   $pagina=16;
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
                	include ('menu.php');
                 ?>
			</nav>
            
        	<section id="principal" >
			
				</style>
	

  

  <div class="container">

  	<div id="customContainer"></div>
  
  </div>
  
  <script src="jquery-1.7.2.min.js"></script>
  
  <!-- noty -->
  <script type="text/javascript" src="noty/jquery.noty.js"></script>
  

  <script type="text/javascript">
          function pantalla(){
				var datos = "modoa=" +$("#modoa").val()+ "&ubicacion="+$("#ubicacion").val()+"&duracion="+$("#duracion").val()+"&ubicar="+$("#ubicar:checked").val();
				$.post('pantalla1.php',datos, function(result2) {alert(result2);},'json');
			}
        </script>
        			
			<script type="text/javascript" src="noty/js/noty/jquery.noty.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/center.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/topCenter.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/bottomCenter.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/bottomRight.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/centerRight.js"></script>
			<script type="text/javascript" src="noty/js/noty/layouts/topRight.js"></script>
			 <script type="text/javascript" src="noty/js/noty/themes/default.js"></script>
			<script type="text/javascript">
			
		
			
    function generate(type, modo, ubicacion, duracion) {
  	var n = noty({
  		text: type,
  		type: modo,
        dismissQueue: true,
  		layout: ubicacion,
  		 theme: 'defaultTheme',
		 timeout: duracion 
		 		
  	});
	
	
	
  	  	console.log('html: '+n.options.id);
  }

$(document).ready(function() {
    $("#ver").click(function(){
		
   var texto="<img src='noty/notice.png' width='55' height='55' align='right'/>";
		
		
    generate("<table><tr align='top'><td>"+texto+"</td> <td ><h2 id='alert' style='text-align:left'>!ALERTA! </h2></td></tr> <tr><td colspan='2'><p style=' line-height: 1em;'>Existe un error en servidor prueba en la direcci\u00f3n 192.168.1.1 a las <?php echo date("g:i:s a");?></p></td></tr></table>",$("#modoa").val(),$("#ubicacion").val(),$("#duracion").val());
	});

	});
	
  	
 
  </script>

<form action="javascript:pantalla();" method="post" id="pantalla">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Configuración de Pantalla  </font></b></td>
</tr>

<tr>
<td> <label for="modo"> Estilos de alerta: </label> </td> 
<td><select id="modoa" name ="modoa" required/>
<option value="error"> Error </option>
<option value="alert"> Alerta </option>
<option value="success"> Peligro </option>
<option value="warning"> Iveco </option>
<option value="information"> Precaución </option>


</td>
</tr>

<tr>
<td> <label for="modo"> Ubicación: </label> </td> 
<td><select id="ubicacion" name ="ubicacion" required/>
<option value="topCenter"> Arriba </option>
<option value="bottomCenter"> Abajo </option>
<option value="center"> Centro </option>
<option value="topRight"> Esquina superior derecha </option>
<option value="bottomRight"> Esquina inferior derecha </option>
<option value="centerRight"> Centro y derecha </option>

</td>
</tr>


<tr>
<td> <label for="duracion">Duración: </label> </td> 
<td>  <input type="text" name="duracion" id="duracion" size="35" title="duracion" maxlength="60" placeholder="Tiempo de Cierre en Milisegundos" autocomplete="off" required/> </td>
</tr> 

<tr>
<td> <label for="Ubicar"> Ubicar Error: </label> </td> 
<td> Si <input id="ubicar" type="radio" name="ubicar" Value="SI" checked /> No <input  id="ubicar" type="radio" name="ubicar" Value="No"/></td>
</tr>



<tr align="center">
<td colspan="2"> 
<input type="submit" value="Enviar" class="submit"/>
<input type="reset" value="Cancelar" />
<input type="button" value="Vista Previa" id="ver" />
 </td>

</tr>

</table>
</form>

 </section>
            
	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>