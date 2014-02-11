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
        <script type="text/javascript" src="javascript/validaciones.js"></script>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <script>
		function confirmar(){
			 $('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
			}
        function registrousuario(){
			if($("#contrasena").val().toString().length<8){
				alert('Minimo 8 Caracteres');
				$("#contrasena").css({"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"});
				$('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
				}else{
			if ($("#contrasena").val()!=$("#contrasena2").val()){
				alert("Contraseña y Confirmar Contraseña son Diferentes");
					$("#contrasena").css({"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"});
				$('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
				}else{
			var tipe = "cedula=" +$("#cedula").val()+ "&usuario="+$("#usuario").val()+"&correo="+$("#correo").val()+"&contrasena="+$("#clave").val();
			$.post('buscador2.php',tipe, function(result){
			if (result!="Disponible"){
				alert(result);
				$('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
			if (result=="Error Contraseña Erronea"){
				$(location).attr('href',"RegistroUsuario.php");
				}
				}else {
				var datos = "cedula=" +$("#cedula").val()+ "&nombre="+$("#nombre").val()+"&nivel="+$("#nivel").val()+"&descripcion="+$("#descripcion").val()+"&correo="+$("#correo").val()+ "&usuario="+$("#usuario").val()+"&contrasena="+$("#contrasena").val()+"&pregunta="+$("#pregunta").val()+"&respuesta="+$("#respuesta").val();
				$.post('RegistroUsuario1.php',datos, function(result2){ if(result2!="Registro Exitoso"){alert(result2);}else{alert(result2),$(location).attr('href',"RegistroUsuario.php");}},'json');
			}},'json');}
        }
		}
		$(document).ready(function() {
              $("#contrasena").keyup(function(){
			 if($("#contrasena").val().toString().length<8){
				 $("#contrasena").css({"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"});
				 if($("#contra").attr("style")=="display:none;color:red; padding:3px;"){
				 $("#contra").toggle('show');}
				 }else{
				 $("#contrasena").css({"box-shadow": "0px 0px 0px 0px rgba(0, 0, 0, 0)"});
				  $("#contra").css({"display":"none"});
				 }
			});
            });
        </script>
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
		   $pagina=11;
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
            
<form action="javascript:confirmar()" method="post" id="registrousuario">

<table  id="confirmar2" align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Registro de Usuario  </font></b></td>
</tr>

<tr>
<td> <label for="cedula">Cedula: </label> </td> 
<td>  <input type="text" name="cedula" id="cedula" title="Cedula" maxlength="8" size="40" placeholder="Cedula " autocomplete="off" required/>  <span style="color:red; padding:3px;">*</span></td>
</tr> 

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td>  <input type="text" name="nombre" id="nombre" title="Nombre" maxlength="50" size="40" placeholder="Nombre " autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span></td>
</tr> 

<tr>
<td> <label for="nivel">Nivel: </label> </td> 
<td><select  id="nivel" name="nivel" style="max-width:253px; width:100%;"  required/> 
		<option value="">--------------Seleccione Nivel------------- </option>
		<option value="Administrador"> Administrador </option>
        <option value="Encargado">Encargado </option> 
	</select> <span style="color:red;  padding:3px;">*</span></td>
</tr>  


<tr>
<td> <label for="descripcion"> Descripción: </label> </td> 
<td> <textarea name="descripcion" id="descripcion" title="descripcion" cols="30" rows="5" maxlength="100" 
 placeholder="Descripción"> </textarea> </td>
</tr>

<tr>
<td> <label for="correo">Correo: </label> </td> 
<td>  <input type="email" name="correo" id="correo" title="Correo" maxlength="60" size="40" placeholder="Correo" autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span></td>
</tr> 

<tr>
<td> <label for="usuario">Usuario: </label> </td> 
<td>  <input type="text" name="usuario" id="usuario" title="usario" maxlength="60" size="40" placeholder="usuario" autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span></td>
</tr>

<tr>
<td> <label for="contrasena">Contrase&ntilde;a: </label> </td> 
<td>  <input type="password" name="contrasena" id="contrasena" title="contrasena" maxlength="16" size="40" placeholder="Contraseña" autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span> <br/> <span id="contra" style="display:none;color:red; padding:3px;">Minimo 8 Carateres</span></td>
</tr> 

<tr>
<td> <label for="contrasena">Confirmar Contrase&ntilde;a: </label> </td> 
<td>  <input type="password" name="contrasena" id="contrasena2" title="contrasena" maxlength="16" size="40" placeholder="Confirmar Contraseña"autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span></td>
</tr> 

<tr>
<td> <label for="pregunta">Pregunta: </label> </td> 
<td>  <input type="text" name="pregunta" id="pregunta" title="pregunta" maxlength="60" size="40" placeholder="Pregunta" autocomplete="off" required/>  <span style="color:red;  padding:3px;">*</span></td>
</tr> 

<tr>
<td> <label for="nombre">Respuesta: </label> </td> 
<td>  <input type="text" name="respuesta" id="respuesta" title="respuesta" maxlength="60" size="40" placeholder="Respuesta" autocomplete="off" required/> <span style="color:red;  padding:3px;">*</span> </td>
</tr> 

<tr align="center">
<td colspan="2"> 
<input type="submit"  value="Registrar" id="submit"/>
<input type="reset" value="Cancelar" /><br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span> </td>
</tr>

</table>
</form>

<form action="javascript:registrousuario()" method="post" id="registrousuario">

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
<input type="submit" value="Modificar" class="submit"/>
<input type="reset" value="Cancelar" /><br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span> </td>
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