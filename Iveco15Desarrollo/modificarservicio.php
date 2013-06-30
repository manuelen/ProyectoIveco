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
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript" src="javascript/tooltip.js"></script>
        <script type="text/javascript" src="javascript/validacion.js"></script>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <script>
        function modificarpuerto(){
			var tipe = "ip="+$("#ip").val()+"&puerto=" +$("#puerto").val()+"&puerto1="+$("#puerto1").val();
			$.post('buscador1.php',tipe, function(result){
			if (result!="Disponible"){
				alert("Verifique Puerto y Servidor");
				}else{
		var datos = "ip1="+$("#ip1").val()+"&ip="+$("#ip").val()+"&puerto="+$("#puerto").val()+"&puerto1="+$("#puerto1").val()+"&nombre="+$("#nombre").val()+"&tipo="+$("#tipo").val()+"&descripcion="+$("#descripcion").val()+"&estado="+$("#estado").val()+"&sonido="+$("#sonido:checked").val()+"&pantalla="+$("#pantalla:checked").val()+"&correo="+$("#correo:checked").val();
				$.post('modicarservicio1.php',datos, function(result2) {if (result2!="Modificación Exitosa"){alert(result2);}else{alert(result2);$(location).attr('href',"modicarservicio.php");}},'json');
				}},'json');
        }
				$('#verificar').live('click',function(){
			if ($("#ip").val()==""){
				alert("Seleccione un Servidor Antes de Verificar");
				}else if ($("#puerto").val()==""){
					alert("Seleccione un Puerto Antes de Verificar");
					}else{
			var tipe = "ip="+$("#ip").val()+"&puerto=" +$("#puerto").val();
			$.post('buscador1.php',tipe, function(result){alert("Puerto "+result);},'json');
			}
			});
		</script>
                <?php require('conexion.php');
				// obtenemos la variable principal enviada por REQUEST
				if (!isset($_REQUEST['busqueda'])){
					$b = "";		
					}else{
				$b = $_REQUEST['busqueda'];
				}
		?>
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
		   $pagina=9;
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
 <?php if(isset ($_REQUEST['no'])){
	
							}else{ ?>
<form action="modicarservicio.php" method="post" id="modi_dispositivo">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Buscar Servicio de <?php echo $_REQUEST['nombre']; ?>  </font></b></td>
</tr>

<tr>
<td>
<input type="text" id="padre" name="busqueda" <?php if($b){ ?>value="<?php echo $b ?>" <?php } ?>/> <input type="submit" value="Buscar" /><a href="modicarservicio.php"><input type="button" value="Volver" /></a>
</td>
</tr>

</table>
</form>
<div id="aplicaciones">
	<div id="recargar1"><?php

		$time_start = microtime(true); // calcular tiempo de la consulta
		$ip=$_REQUEST['ip'];
		echo "<div id='hijo1' style='display:block;'>";
		// mi consulta para sacar 10 artículos de la base de datos 
		$dispositivos= mysql_query("SELECT * FROM aplicaciones WHERE ip = '$ip' and (nombre like '%$b%' or tipo LIKE '%$b%' or descripcion like '%$b%' or puerto like '%$b%' or ip like '%$b%') ORDER BY nombre");
		$section=mysql_fetch_array($dispositivos);
		for($i=0;$i<$section;$i++) 
			{
			// reunir los resultados
			
			$tabla="<table align=center cellpadding=7 bgcolor=#C1E0FF border=1 bordercolor=#FFFFFF frame=box style=text-align:left;>  

				<tr bgcolor=#000066>
				<td colspan=2 align=center><b><font color=#FFFFFF size=+1> $section[nombre]</font></b></td>
				</tr>
				
				<tr>
				<td> <label>ip: </label> </td> 
				<td> <label>  $section[ip] </label> </td>
				</tr> 
				
				<tr>
				<td> <label>Nombre Servidor: </label> </td> 
				<td> <label>  $section[nombreServidor] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Puerto: </label> </td> 
				<td><label> $section[puerto] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Tipo: </label> </td> 
				<td><label> $section[tipo] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Descripcion: </label> </td> 
				<td><label> $section[descripcion] </label> </td>
				</tr>  

				<tr>
				<td> <label > Estado: </label> </td> 
				<td><label> $section[estado] </label> </td>
				</tr>
				</table> ";
			
			$resultado[$i]= "<section id='botones2' mensaje='$tabla' ><a><p>$section[nombre]</p><a href='modificarservicio.php?puerto=".$section['puerto']."&ip=".$section['ip']."&no=no'><input type='button' value='Modificar' /></a><a href='eliminarservicio.php?puerto=".$section['puerto']."&ip=".$section['ip']."'><input type='button' value='Eliminar'  /></a></a></section>";
			$section=mysql_fetch_array($dispositivos);
			}
					echo "<h1>Todos los Servicios</h1>";
		$time_end = microtime(true);

		if(isset($resultado)){
		
			$time = number_format($time_end - $time_start,4,'.','');
			echo "<p>La consulta tardó ".$time." segundos.</p>";
		for($e=0;$e<$i;$e++) 
			{				
			echo $resultado[$e];
			}
		}else{

			echo "<p>No existen resultados</p>";

		}
		echo "</div>";
	?>

</div>
<script type="text/javascript"> 
	$('#padre').keyup(function(){
		var ip1 = "<?php echo $ip; ?>";
	$('#recargar1').load('modificarservicio.php?ip='+ip1+'&busqueda='+$('#padre').val().replace(/ /g,"+")+' #hijo1');
	});
</script>
</div>
<?php
							}

if(!isset ($_REQUEST['ip'])){	
							}else{
								if(!isset ($_REQUEST['puerto'])){
									}else{
						
								$ip=$_REQUEST['ip'];
								$puerto=$_REQUEST['puerto'];
								
						$resultado=mysql_query("select * from aplicaciones where ip= '$ip' and puerto='$puerto'");
						if(!$resultado)
						{?>
						<script>
						alert("Por Favor, Ingrese la Dirección ip o puerto");
						
						</script>
						<?php
                        }
						else
						{
											$fila=mysql_fetch_array($resultado);
										if (!$fila)
			{?>
						 <script>
						alert("Dirección IP o puerto no Existente");
						
						</script>
			<?php
            }
			else
			{?>
            <br>

<form action="javascript:modificarpuerto();" method="post" id="form_puerto">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Modificar Puerto  </font></b></td>
</tr>

<tr>
<td> <label for="ip">IP del Servidor: </label> </td> 
<td><input type="hidden" name="ip1" id="ip1" title="ip1"  value="<?php echo $fila['ip']; ?>"  readonly/>
<select id="ip" name="ip" style="max-width:250px; width:100%;" required/> 
<option selected><?php echo $fila['ip']; ?> </option>
<?php
		$tipo=mysql_query("select * from dispositivos where estado='Conectado' order by nombre ");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['ip']; ?>"><?php echo $opcion['ip']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select> <span style="color:red; padding:3px;">*</span> 
 </td>
</tr>  

<tr>
<td> <label for="puerto">Puerto: </label> </td> 
<td><input type="hidden" name="puerto1" id="puerto1" title="puerto1"  value="<?php echo $fila['puerto']; ?>"  readonly/>  
<input type="text" name="puerto" id="puerto" size="30" title="Puerto" maxlength="60" value="<?php echo $fila['puerto']; ?>" autocomplete="off" required/><input type="button" id="verificar" value="Verificar" /><span style="color:red; padding:3px;">*</span> </td>
</tr>

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td>  <input type="text" name="nombre" id="nombre" size="40" title="Nombre" maxlength="20" value="<?php echo $fila['nombre']; ?>" placeholder="Nombre del servicio" autocomplete="off" required/> <span style="color:red; padding:3px;">*</span></td>
</tr>

  

<tr>
<td> <label for="tipo">Tipo: </label> </td> 
<td><select id="tipo" name="tipo" style="max-width:250px; width:100%;" required/> 
<option selected><?php echo $fila['tipo']; ?> </option>
<?php
		$tipo=mysql_query("select * from tipoaplicacion where tipo != '$fila[tipo]' order by tipo");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['tipo']; ?>"><?php echo $opcion['tipo']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select> <span style="color:red; padding:3px;">*</span> 
 </td>
</tr> 

<tr>
<td> <label for="descripcion"> Descripción: </label> </td> 
<td> <textarea name="descripcion" id="descripcion" title="descripcion" cols="30" rows="5" maxlength="100" 
 placeholder="Descripción..."  required><?php echo $fila['descripcion']; ?></textarea>  <span style="color:red; padding:3px;">*</span></td>
</tr>

<tr>
<td> <label for="estado">Estado: </label></td> 
<td><select id="estado" name="estado" style="max-width:250px; width:100%;" required/> 
		<option selected value="<?php echo $fila['estado']; ?>"><?php echo $fila['estado']; ?></option>
        <?php if ($fila['estado']== "conectado"){?>
		<option value="Desconectado">Desconectado </option>
        <?php }else{ ?>
         <option value="conectado"> Conectado </option>
        <?php } ?>
	</select> <span style="color:red; padding:3px;">*</span></td>
</tr>   

<tr>
<td> Tipo de Alertas:</td>
<?php $sonido = mysql_query("SELECT * FROM sonido WHERE ip = '$ip' and puerto ='$puerto'"); 
		$sonidos= mysql_fetch_array($sonido);
		$pantalla = mysql_query("SELECT * FROM pantalla WHERE ip = '$ip' and puerto='$puerto'"); 
		$pantallas= mysql_fetch_array($pantalla);
		$correo = mysql_query("SELECT * FROM correo WHERE ip = '$ip' and puerto ='$puerto'"); 
		$correos= mysql_fetch_array($correo);
		?>

<td> <?php if($sonidos['estado']=='si'){$error='checked';}
			if($pantallas['estado']=='si'){$error1='checked';}
			if($correos['estado']=='si'){$error2='checked';}
			 ?>
	Sonido <input name="sonido" id="sonido" type="checkbox" value="si" <?php echo $error;?> /> <br />
     Pantalla <input name="pantalla" id="pantalla" type="checkbox" value="si" <?php echo $error1;?> /> <br  />
     Correo Electrónico <input name="correo" id="correo" type="checkbox" value="si" <?php echo $error2;?> /></td>
</tr>

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Modificar" class="submit"/>
<input type="reset" value="Cancelar" /> 
<a href="modicarservicio.php"><input type="button" value="Volver" /></a><br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span>
</td>
</tr>

</table>
</form>
<?php					}
						}
						}
					}
				
			?>
 </section>
            
	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>