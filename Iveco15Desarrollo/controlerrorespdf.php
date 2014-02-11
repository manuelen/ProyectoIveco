

<html lang="es">

    <head> 
        <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
        <script src="javascript/prefixfree.js" type="text/javascript"></script>
        <script type="text/javascript" src="javascript/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="javascript/ddaccordion.js"></script>
		<script type="text/javascript" src="javascript/java.js"></script>
        <script type="text/javascript" src="javascript/popcalendar.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
        <style>
        label{
			text-align:center;
			}
        </style>
        <script type="text/javascript" src="javascript/hora.js"></script>
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
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
                	include ('menu.php');
                 ?>
			</nav>
            
        	<section id="principal">
            <br /><br /><br />
            <form action="javascript:controlerrorespdf();" method="post" id="modi_dispositivo" name="traslado1">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

                <tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Reporte de Control de Errores</font></b></td>
                </tr>
                
  				<tr valign="top">
					<td >
						<font >Ingrese Fecha de Inicio:&nbsp;</font></td>
                    <td>
					<input name="fechainicio" type="text" id="dateArrival" onClick="popUpCalendar(this, traslado1.dateArrival, 'yyyy-mm-dd');" size="10" ><font id="vfecha" style="display:none; font-size:9px" color="red">*Ingrese una fecha mayor a la Fecha de Culminación</font>
					</td>
                   
				</tr> 
                <tr valign="top">
					<td >
						<font >Ingrese Fecha de Culminación:&nbsp;</font></td>
                    <td>
					<input name="fechafin" type="text"  id="dateArrival1" onClick="popUpCalendar(this, traslado1.dateArrival1, 'yyyy-mm-dd');" size="10" required>
					</td>
                   
				</tr>
                <tr align="center">
                <td colspan="2">
                <input id="enviar" type="submit" value="Buscar" /><br>
                </td>
                </tr>
</table>
</form>
    	<script type="text/javascript">    
		 function controlerrorespdf(){
			 	if($('#dateArrival').val()>$('#dateArrival1').val()){
					alert("verifique La fecha de Inicio y Fin");
					}else{
						$(location).attr('href',"controlerrorespdf1.php?fechainicio="+$('#dateArrival').val()+"&fechafin="+$('#dateArrival1').val());
						}
			 }
	$('#content').mouseleave(function(){
		$('#vfecha').css({
				"display": "none"
				});
		$('#dateArrival').css({
				"box-shadow": "none"
				});
	if($('#dateArrival').val()>$('#dateArrival1').val()){
			$('#vfecha').css({
				"display": "block"
				});
			$('#dateArrival').css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				});
		}
	});  
	$('#dateArrival').keyup(function(){
		$('#vfecha').css({
				"display": "none"
				});
		$('#dateArrival').css({
				"box-shadow": "none"
				});
	if($('#dateArrival').val()>$('#dateArrival1').val()){
			$('#vfecha').css({
				"display": "block"
				});
			$('#dateArrival').css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				});
		}
	}); 
	$('#dateArrival1').keyup(function(){
		$('#vfecha').css({
				"display": "none"
				});
		$('#dateArrival').css({
				"box-shadow": "none"
				});

	if($('#dateArrival').val()>$('#dateArrival1').val()){
			$('#vfecha').css({
				"display": "block"
				});
			$('#dateArrival').css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				});
		}
	}); 
	
</script>
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>