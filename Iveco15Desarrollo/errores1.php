
<html lang="es">

    <head> 
        <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
        <script src="javascript/prefixfree.js" type="text/javascript"></script>
        <script type="text/javascript" src="javascript/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="javascript/ddaccordion.js"></script>
		<script type="text/javascript" src="javascript/java.js"></script>
		<script type="text/javascript" src="javascript/popcalendar.js"></script>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
		
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
					require('conexion.php');
                 ?>
			</nav>
            
        	<section id="principal">  <br>
			
<form action="Errores2.php" id="form_puerto" name="traslado1">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  
<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Seleccionar Servidores a Consultar  </font></b></td>
</tr>

<tr valign="top">
					<td >
						<font >Servidor 1:&nbsp;</font></td>
                    <td>
					<select name="servidor1" style="max-width:220px; width:100%;" id="servidor1" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from dispositivos where tipo = 'Servidor'");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['nombre']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>
					</td>
                   
				</tr> 
                <tr valign="top">
					<td >
						<font >Servidor 2:&nbsp;</font></td>
                    <td>
					<select name="servidor2" style="max-width:220px; width:100%;" id="servidor2" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from dispositivos where tipo = 'Servidor'");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['nombre']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>
					</td>
                   
				</tr> 
                <tr valign="top">
					<td >
						<font >Servidor 3:&nbsp;</font></td>
                    <td>
					<select name="servidor3" style="max-width:220px; width:100%;" id="servidor3" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from dispositivos where tipo = 'Servidor'");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['nombre']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>
					</td>
                   
				</tr> 
                <tr valign="top">
					<td >
						<font >Servidor 4:&nbsp;</font></td>
                    <td>
					<select name="servidor4" style="max-width:220px; width:100%;" id="servidor4" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from dispositivos where tipo = 'Servidor'");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['nombre']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>
					</td>
				</tr>
                <tr valign="top">
					<td >
						<font >Servidor 5:&nbsp;</font></td>
                    <td>
					<select name="servidor5" style="max-width:220px; width:100%;" id="servidor5" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from dispositivos where tipo = 'Servidor'");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['nombre']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>
					</td>
				</tr>
<tr align="center">
<td colspan="2"> 
<input type="submit" value="Buscar" id="submit"/>
<input type="reset" value="Cancelar" /></td>
</tr>

</table>
</form>  
	<script type="text/javascript">    
		 function servidorescaidos(){
			 	if($('#dateArrival').val()>$('#dateArrival1').val()){
					alert("verifique La fecha de Inicio y Fin");
					}else{
						$(location).attr('href',"Servidores_Caidos1.php?fechainicio="+$('#dateArrival').val()+"&fechafin="+$('#dateArrival1').val());
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
<br>	
<br>		
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>