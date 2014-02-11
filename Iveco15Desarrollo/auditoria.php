

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
        <script type="text/javascript" src="javascript/hora.js"></script>
        <style>
        label{
			text-align:center;
			}
        </style>
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
            
            <form action="auditoria.php" method="get" id="modi_dispositivo" name="traslado1">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left">  

                <tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Consultar Acciones</font></b></td>
                </tr>
                
                <tr>
                		<td >
						<font >Busqueda:&nbsp;</font></td>
                <td>
                <input type="text" id="padre" name="busqueda" <?php if($b){ ?>value="<?php echo $b ?>" <?php } ?>/>
                </td>
                </tr>
  				<tr valign="top">
					<td >
						<font >Ingrese Fecha de Inicio:&nbsp;</font></td>
                    <td>
					<input name="fechaini" type="text" id="dateArrival" onClick="popUpCalendar(this, traslado1.dateArrival, 'yyyy-mm-dd');" size="10"><font id="vfecha" style="display:none; font-size:9px" color="red">*Ingrese una fecha mayor a la Fecha de Culminación</font>
					</td>
                   
				</tr> 
                <tr valign="top">
					<td >
						<font >Ingrese Fecha de Culminación:&nbsp;</font></td>
                    <td>
					<input name="fechafin" type="text" value="<?php echo date("Y-m-d"); ?>" id="dateArrival1" onClick="popUpCalendar(this, traslado1.dateArrival1, 'yyyy-mm-dd');" size="10">
					</td>
                   
				</tr>
                <tr align="center">
                <td colspan="2">
                <input type="submit" value="Buscar" /><br>
                </td>
                </tr>
</table>
</form>
<div id="recargar"><?php

		$time_start = microtime(true); // calcular tiempo de la consulta

		echo "<div id='hijo' style='display:block;'>"; ?>
            <h1>Auditoria de Usuarios</h1></br>
                    <table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="10" align="center"><b><font color="#FFFFFF" size="+1"> Auditoria  </font></b></td>
</tr>

<tr  bgcolor="#000066" align="center">
<td> <b><font color="#FFFFFF" size="-1"> Código </font></b> </td> 
<td> <b><font color="#FFFFFF" size="-1"> Usuario</font></b> </td> 
<td> <b><font color="#FFFFFF" size="-1"> Acción</font></b> </td> 
<td> <b><font color="#FFFFFF" size="-1"> Fecha</font></b> </td> 
<td> <b><font color="#FFFFFF" size="-1"> Hora</font></b> </td> 
</tr>  
<?php 

require('conexion.php');

				if (!isset($_REQUEST['busqueda'])){
					$b = "";		
					}else{
				$b = $_REQUEST['busqueda'];
				}
				if (!isset($_REQUEST['fechaini'])){
					$fechaini = "";		
					}else{
				$fechaini= $_REQUEST['fechaini'];
				}
				if (!isset($_REQUEST['fechafin'])){
					$fechafin = "";		
					}else{
				$fechafin = $_REQUEST['fechafin'];
				}


$resultado=mysql_query("select *, DATE_FORMAT(fecha, '%d/%m/%Y')as fecha from auditoria where (usuario LIKE '%$b%' or accion like '%$b%' or hora LIKE '%$b%') and (fecha between '$fechaini' and '$fechafin') order by codigo desc");
$fila=mysql_fetch_array($resultado);
for($i=0;$i<$fila;$i++) 
			{
?>
<tr align="center">
<td><font size="-1"> <label for="Codigo"><?php echo $fila['codigo']; ?></label> </font></td> 
<td><font size="-1"> <label for="IP"><?php echo $fila['usuario']; ?></label> </font></td> 
<td><font size="-1"> <textarea for="Puerto" readonly><?php echo $fila['accion']; ?></textarea> </font></td> 
<td><font size="-1"> <label for="Fecha"><?php echo $fila['fecha']; ?></label> </font></td> 
<td><font size="-1"> <label for="Hora"><?php echo $fila['hora']; ?></label> </font></td> 
</tr>
<?php $fila=mysql_fetch_array($resultado); }?>
</div>
</div>

    	<script type="text/javascript">     
	$('#content').mouseleave(function(){
		$('#vfecha').css({
				"display": "none"
				});
		$('#dateArrival').css({
				"box-shadow": "none"
				});
	$('#recargar').load('auditoria.php?busqueda='+$('#padre').val().replace(/ /g,"+")+'&fechaini='+$('#dateArrival').val().replace(/ /g,"+")+'&fechafin='+$('#dateArrival1').val().replace(/ /g,"+")+' #hijo');
	if($('#dateArrival').val()>$('#dateArrival1').val()){
			$('#vfecha').css({
				"display": "block"
				});
			$('#dateArrival').css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				});
		}
	});  
	$('#padre').keyup(function(){
		$('#vfecha').css({
				"display": "none"
				});
		$('#dateArrival').css({
				"box-shadow": "none"
				});
	$('#recargar').load('auditoria.php?busqueda='+$('#padre').val().replace(/ /g,"+")+'&fechaini='+$('#dateArrival').val().replace(/ /g,"+")+'&fechafin='+$('#dateArrival1').val().replace(/ /g,"+")+' #hijo');
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
	$('#recargar').load('auditoria.php?busqueda='+$('#padre').val().replace(/ /g,"+")+'&fechaini='+$('#dateArrival').val().replace(/ /g,"+")+'&fechafin='+$('#dateArrival1').val().replace(/ /g,"+")+' #hijo');
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
	$('#recargar').load('auditoria.php?busqueda='+$('#padre').val().replace(/ /g,"+")+'&fechaini='+$('#dateArrival').val().replace(/ /g,"+")+'&fechafin='+$('#dateArrival1').val().replace(/ /g,"+")+' #hijo');
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
</table>   
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>