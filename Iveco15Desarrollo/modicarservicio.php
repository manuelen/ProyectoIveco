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
        <script type="text/javascript" src="javascript/validaciones.js"></script>
        <script type="text/javascript" src="javascript/hora.js"></script>
		<script type="text/javascript"> 
        function mostrar(num) { 
          document.getElementById('hijo').style.display = (num==0) ? 'block' : 'none'; 
          document.getElementById('hijo1').style.display = (num==1) ? 'block' : 'none'; 
        } 
        </script> 
        
        <script>
		function prueba(){
			if($("#ip1").val()!=undefined){
			var tipe = "ip1=" +$("#ip").val()+"&ip="+$("#ip1").val()+"."+$("#ip2").val()+"."+$("#ip3").val()+"."+$("#ip4").val();
			}else{
				var tipe="ip=" +$("#ip").val()+"&ip1=" +$("#ip").val();;
				}
			$.post('buscador.php',tipe, function(result){
			if ((result=="Erronea")||(result=="Ocupada")){alert("Verifique Direccion IP");
			}else{
				var datos = tipe+"&nombre="+$("#nombre").val()+ "&tipo="+$("#tipo").val()+"&descripcion="+$("#descripcion").val()+"&estado="+$("#estado").val()+"&ping="+$("#ping").val()+ "&red="+$("#red").val()+"&sonido="+$("#sonido:checked").val()+"&pantalla="+$("#pantalla:checked").val()+"&correo="+$("#correo:checked").val();
				$.post('modificarservicio1.php',datos, function(result) {if (result!="Modificación Exitosa"){alert(result);}else{alert(result);$(location).attr('href',"modicarservicio.php");}},'json');
				}},'json');
        }
		$('#verificar').live('click',function(){
			var tipe = "ip1=" +$("#ip1").val()+ "&ip2="+$("#ip2").val()+"&ip3="+$("#ip3").val()+"&ip4="+$("#ip4").val();
			$.post('buscador.php',tipe, function(result){alert("Direccion IP "+result);},'json');
			});
        </script>
        <script>
$(document).ready(function() {
	$("#modificar").click(function(){
		$(this).attr("disabled", "disabled");
        $('#nuevaip').append("<br><input type='number' name='ip1' id='ip1' title='Dirección' IP size='5' maxlength='3' placeholder='127' required/><input type='number' name='ip2'  id='ip2' title='Dirección IP' size='5' maxlength='3' placeholder='0' required/>      <input type='number' name='ip3'  id='ip3' title='Dirección IP' size='5' maxlength='3' placeholder='0'  required/>       <input type='number' name='ip4'  id='ip4' title='Dirección IP' size='5' maxlength='3' placeholder='1'  required/><input type='button' id='verificar' value='Verificar' /><span style='color:red; padding:3px;'>*</span>");
    $("#ip1").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip2").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip3").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    });
	$("#ip4").keydown(function(event){
        if(!isNumeric(event)){ return false;}
    }); 
	$("#ip1").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
		$("#ip2").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
		$("#ip3").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
			$("#ip4").keyup(function(event){
        if( ($(this).val()>255)||($(this).val()<0)){
			$(this).css({
				"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"
				})
			}else{
				$(this).css({
				"box-shadow": "none"
				})
				}
		});
	
    });
    
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
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Buscar Dispositivos, Servicios o Aplicaciones </font></b></td>
</tr>

<tr>
<td>
<input type="text" id="padre" name="busqueda" <?php if($b){ ?>value="<?php echo $b ?>" <?php } ?>/> <input type="submit" value="Buscar" />
</td>
<td>
<script>mostrar(1);</script>
<select onchange="mostrar(this.value)">
<option value='0'>Dispositivos</option>
<option value='1'>Servicios</option>
</select>
</td>
</tr>
</table>
</form>
<div id="dispositivo">
	<div id="recargar"><?php

		$time_start = microtime(true); // calcular tiempo de la consulta

		echo "<div id='hijo' style='display:block;'>";
		// mi consulta para sacar 10 artículos de la base de datos 
		$dispositivos= mysql_query("SELECT * FROM dispositivos WHERE ip LIKE '%$b%' or nombre like '%$b%' or tipo LIKE '%$b%' or descripcion like '%$b%' or ping LIKE '%$b%' or nombre like '%$b%' ORDER BY nombre");
		$section=mysql_fetch_array($dispositivos);
		for($i=0;$i<$section;$i++) 
			{
				// reunir los resultados
				$tooltip=mysql_query("select count(*) as 'tooltip' from aplicaciones where ip='$section[ip]'");
				$tooltips=mysql_fetch_array($tooltip);
				$tabla="<table align=center cellpadding=7 bgcolor=#C1E0FF border=1 bordercolor=#FFFFFF frame=box style=text-align:left;>  

				<tr bgcolor=#000066>
				<td colspan=2 align=center><b><font color=#FFFFFF size=+1> $section[nombre]</font></b></td>
				</tr>
				
				<tr>
				<td> <label>ip: </label> </td> 
				<td> <label>  $section[ip] </label> </td>
				</tr> 
				
				<tr>
				<td> <label>Servidor: </label> </td> 
				<td> <label>  $section[nombreServidor] </label> </td>
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
				
				<tr>
				<td> <label >Paquetes Enviados: </label> </td> 
				<td><label>  $section[ping] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Numero de Servicios: </label> </td> 
				<td><label>  $tooltips[tooltip] </label> </td>
				</tr>
				 
				<tr>
				<td> <label >red: </label> </td> 
				<td><label> $section[red] </label> </td>
				</tr>
				</table> ";
			
			$resultados[$i]= "<section id='botones2' mensaje='$tabla'><a><p>$section[nombre]</p><a href='modicarservicio.php?ip=".$section['ip']."&no=no'><input type='button' value='Modificar' /></a><a href='modificarservicio.php?ip=".$section['ip']."&nombre=".$section['nombre']."'><input type='button' value='Servicios'  /></a><a href='eliminardispositivo.php?ip=".$section['ip']."'><input type='button' value='Eliminar'  /></a></a></section>";
			$section=mysql_fetch_array($dispositivos);
			}

		$time_end = microtime(true);

		if(isset($resultados)){
			echo "<h1>Todos los Dispositivos</h1>";
			$time = number_format($time_end - $time_start,4,'.','');
			echo "<p>La consulta tardó ".$time." segundos.</p>";
		for($e=0;$e<$i;$e++) 
			{				
			echo $resultados[$e];
			}
		}else{

			echo "<p>No existen resultados</p>";

		}
		echo "</div>";
	?></div> 
    	<script type="text/javascript">       

	$('#padre').keyup(function(){
	$('#recargar').load('modicarservicio.php?busqueda='+$('#padre').val().replace(/ /g,"+")+' #hijo');
	});
</script>
</div>

<div id="aplicaciones">
	<div id="recargar1"><?php

		$time_start = microtime(true); // calcular tiempo de la consulta

		echo "<div id='hijo1' style='display:block;'>";
		// mi consulta para sacar 10 artículos de la base de datos 
		$dispositivos= mysql_query("SELECT * FROM aplicaciones WHERE ip LIKE '%$b%' or puerto like '%$b%' or nombre like '%$b%' or tipo LIKE '%$b%' or descripcion like '%$b%' or nombre like '%$b%' ORDER BY nombre");
		$section=mysql_fetch_array($dispositivos);
		for($i=0;$i<$section;$i++) 
			{
				$tabla="<table align=center cellpadding=7 bgcolor=#C1E0FF border=1 bordercolor=#FFFFFF frame=box style=text-align:left;>  

				<tr bgcolor=#000066>
				<td colspan=2 align=center><b><font color=#FFFFFF size=+1> $section[nombre]</font></b></td>
				</tr>
				
				<tr>
				<td> <label>ip: </label> </td> 
				<td> <label>  $section[ip] </label> </td>
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
			// reunir los resultados
			$resultado[$i]= "<section id='botones2'  mensaje='$tabla'><a><p>$section[nombre]</p><a href='modificarservicio.php?puerto=".$section['puerto']."&ip=".$section['ip']."&no=no'><input type='button' value='Modificar' /></a><a href='eliminarservicio.php?puerto=".$section['puerto']."&ip=".$section['ip']."'><input type='button' value='Eliminar'  /></a></a></section>";
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
	$('#recargar1').load('modicarservicio.php?busqueda='+$('#padre').val().replace(/ /g,"+")+' #hijo1');
	});
</script>
</div>
<?php
							}
$ip=$_REQUEST['ip'];

if(!isset ($_REQUEST['ip'])){
	
							}else{
								$ip=$_REQUEST['ip'];
								
								
						$resultado=mysql_query("select * from dispositivos where ip= '$ip'");
						if(!$resultado)
						{?>
						<script>
						alert("Por Favor, Ingrese la Dirección ip");
						
						</script>
						<?php
                        }
						else
						{
											$fila=mysql_fetch_array($resultado);
										if (!$fila)
			{?>
						 <script>
						alert("Dirección IP no Existente");
						
						</script>
			<?php
            }
			else
			{?>
            <br>

<form action="javascript:prueba();" id="form_ip">

<table align="center" style="text-align:left;" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Modificar Dispositivos  </font></b></td>
</tr>
<tr>
<td > <label for="ip">Dirección IP: </label> </td> 
<td id="nuevaip">  <input type="text" value="<?php echo $fila['ip']; ?>" name="ip"  id="ip" title="Dirección IP" size="20" maxlength="15"   autocomplete="off" readonly /><input type="button" id="modificar" value="Modificar" /> </td>
</tr>

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td>  <input type="text" name="nombre" id="nombre" title="Nombre" placeholder="Nombre del servicio" maxlength="20" size="40" value="<?php echo $fila['nombre']; ?>" autocomplete="off" required/><span style="color:red; padding:3px;">*</span> </td>
</tr>
<tr>
<td> <label for="tipo">Tipo: </label> </td> 
<td><select name="tipo" id="tipo" style="max-width:250px; width:100%;" required/> 
<option selected value="<?php echo $fila['tipo']; ?>"><?php echo $fila['tipo']; ?></option>
<?php
		$tipo=mysql_query("select * from tipodispositivo where tipo != '$fila[tipo]' order by codigotipo ");
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
<td> <textarea name="descripcion" placeholder="Descripción..." id="descripcion" title="descripcion" cols="30" rows="5" maxlength="100" ><?php echo $fila['descripcion']; ?></textarea> </td>
</tr>

<tr>
<td> <label for="estado">Estado: </label></td> 
<td><select id="estado" name="estado" style="max-width:250px; width:100%;" required/> 
		<option selected value="<?php echo $fila['estado']; ?>"><?php echo $fila['estado']; ?></option>
        <?php if ($fila['estado']== "Conectado"){?>
		<option value="Desconectado">Desconectado </option>
        <?php }else{ ?>
         <option value="Conectado"> Conectado </option>
        <?php } ?>
	</select> <span style="color:red; padding:3px;">*</span></td>
</tr>  

<tr>
<td> <label for="ping">Números de Ping: </label> </td> 
<td>  <input type="text" placeholder="mínimo de 4 ping" value="<?php echo $fila['ping'];?>" name="ping" id="ping" title="Ping" maxlength="10" size="40" autocomplete="off" /> </td>
</tr>

<tr>
<td> <label for="red">Red: </label></td> 
<td><select id="red" name="red" style="max-width:250px; width:100%;" required/> 
		<option selected value="<?php echo $fila['red']; ?>"><?php if ($fila['red']==4){echo "Interno";}else{echo "Externo";} ?></option>
        <?php if ($fila['red']!= "4"){?>
		<option value="4">Interno </option>
        <?php }else{ ?>
         <option value="1000"> Externo </option>
        <?php } ?>
	</select> <span style="color:red; padding:3px;">*</span></td>
</tr> 

<tr>
<td> Tipo de Alertas:</td>
<?php $sonido = mysql_query("SELECT * FROM sonido WHERE ip = '$ip'"); 
		$sonidos= mysql_fetch_array($sonido);
		$pantalla = mysql_query("SELECT * FROM pantalla WHERE ip = '$ip'"); 
		$pantallas= mysql_fetch_array($pantalla);
		$correo = mysql_query("SELECT * FROM correo WHERE ip = '$ip' "); 
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
<?php
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