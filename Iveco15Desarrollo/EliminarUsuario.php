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
        <script type="text/javascript" src="javascript/validaciones.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <script>
        function confirmar(){
			 $('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
			}
		function EliminarUser(){
			var tipe = "cedula="+$("#cedula1").val()+ "&usuario="+$("#usuario").val()+"&correo="+$("#correo").val()+"&contrasena="+$("#clave").val();
			$.post('buscador3.php',tipe, function(result){
				if (result!="Disponible"){
				alert(result);
			    $(location).attr('href',"EliminarUsuario.php");
				}else{
				var datos = "cedula="+$("#cedula1").val()+"&nombre="+$("#nombre").val()+"&correo="+$("#correo").val();
				$.post('eliminarusuario1.php',datos, function(result2){ if(result2!="Eliminación Exitosa"){alert(result2);}else{alert(result2);$(location).attr('href',"EliminarUsuario.php");}},'json');
			}},'json');}
        </script>
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
		   $pagina=13;
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
            <form action="EliminarUsuario.php" method="post" id="form_modiserver">

<table id="confirmar1" align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Buscar Usuario </font></b></td>
</tr>


<tr>
<td> <label for="cedula">Cédula: </label> </td> 
<td>  <input type="text" name="cedula" id="cedula" title="Cedula" maxlength="8" placeholder="Cedula" autocomplete="off" required/> </td>
</tr>

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Enviar" class="submit"/>
<input type="reset" value="Cancelar" /> 
</td>
</tr>

</table>
</form>
<?php
require("conexion.php");
$cedula=$_REQUEST['cedula'];

if(!isset ($_REQUEST['cedula'])){
							}else{
								$cedula=$_REQUEST['cedula'];
								
								
						$resultado=mysql_query("select * from usuario where cedula='$cedula'");
						if(!$resultado)
						{?>
						<script>
						alert("Por Favor, Ingrese Cedula");
						
						</script>
						<?php
                        }
						else
						{
											$fila=mysql_fetch_array($resultado);
										if (!$fila)
			{?>
						 <script>
						alert("Cedula no Existente");
						
						</script>
			<?php
            }
			else
			{?>
            
            <br>
            
<form action="javascript:confirmar();" method="post" id="registrousuario">

<table id="confirmar2" align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Eliminar Usuario  </font></b></td>
</tr>

<tr>
<td> <label for="cedula">Cédula: </label> </td> 
<td><font><?php echo $fila ['cedula']; ?></font></td>
</tr> 

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td> <font><?php echo $fila ['nombre']; ?></font></td>
</tr> 

<td> <label for="nivel">Nivel: </label> </td> 
<td><font><?php echo $fila ['nivel']; ?></font></td>
</tr>  

<tr>
<td> <label for="descripcion"> Descripción: </label> </td> 
<td><font><?php echo $fila ['descripcion']; ?></font></td>
</tr>

<tr>
<td> <label for="correo">Correo: </label> </td> 
<td>  <font><?php echo $fila ['correo']; ?></font>
<input style="display:none" id="correo" value="<?php echo $fila ['correo']; ?>"/>
</td>
</tr> 

<tr>
<td> <label for="usuario">Usuario: </label> </td> 
<td><font><?php echo $fila ['usuario']; ?></font></td>
</tr>

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Eliminar" class="submit"/>
</td>
</tr>

</table>
</form>
<input id="cedula1" style="display:none;" value="<? echo $fila ['cedula']; ?>">

<form action="javascript:EliminarUser()" method="post" id="registrousuario">

<table id="confirmar" style="display:none" align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Confirmación de Usuario </font></b></td>
</tr>

<tr>
<td> <label for="clave">Contraseña Actual: </label> </td> 
<td>  <input id="clave" type="password" name="clave" id="clave" title="clave" maxlength="16" size="40" autocomplete="off" required/>  <span style="color:red; padding:3px;">*</span></td>
</tr> 

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Eliminar" class="submit"/>
<input type="reset" value="Cancelar" /><br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span> </td>
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