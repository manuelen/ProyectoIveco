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
        <script src="javascript/tooltip.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="noty/demo/buttons.css"/>
        <script>
		$(document).ready(function(e) {
            $("#BACKUP").click(function(){
			 $('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			});
			$("#importar4").click(function(){
			 var tipe = "cedula="+$("#importar2").val()+ "&usuario="+$("#usuario").val()+"&correo="+$("#correo").val()+"&contrasena="+$("#importar2").val();;
			$.post('buscador3.php',tipe, function(result){
				if (result!="Disponible"){
				$("#importar1").css("display","none");
				alert(result);
				}else{
         	    $("#importar1").css("display","");}},'json');
			 });
        });
		      
		function backups(){
			var tipe = "cedula="+$("#cedula1").val()+ "&usuario="+$("#usuario").val()+"&correo="+$("#correo").val()+"&contrasena="+$("#clave").val();;
			$.post('buscador3.php',tipe, function(result){
				if (result!="Disponible"){
				alert(result);
			    $(location).attr('href',"backup.php");
				}else{
         	    $(location).attr('href',"backup1.php");}},'json');
				setInterval(function(){$(location).attr('href',"backup.php");}, 1000);
		}
        
        </script>
				<script type="text/javascript" src="javascript/hora.js"></script>
    </head>
    
    <body>
	
	<audio src="audio/123.wav">
</audio>
	
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
		   $pagina=5;
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
				  <table id="confirmar1" align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Administrador de Backup  </font></b></td>
</tr>
<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Exportar Base de Datos  </font></b></td>
</tr>
<tr align="center">
<td><label>Exportar Base de Datos </label> </td> 
<td><label><input id="BACKUP" type="button" value="BACKUP" /></label> </td> 
</tr>  
<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Importar Base de Datos </font></b></td>
</tr>
<form action="importar.php" enctype="multipart/form-data" method="post">
<tr  align="center">
<td> <label>Importar Base de Datos</label> </td> 
<td> <input type="file" value="" name="importar"> </td> 
</tr>
<tr>
<td> <label for="clave">Contraseña Actual: </label> </td> 
<td>  <input type="password" name="clave" id="importar2" /> <input type="button" value="Importar" id="importar4" />  <span style="color:red; padding:3px;">*</span></td>
</tr> 
<tr id="importar1" style="display:none" align="center">
<td colspan='2'> <input type="submit"  value="IMPORTAR"> </td> 
</tr>
</form>
</table>

</form>

<form action="javascript:backups()" method="post" id="registrousuario">

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
<input type="submit" value="Backup" class="submit"/>
<input type="reset" value="Cancelar" /><br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span> </td>
</tr>

</table>
</form>
<?php
if(isset($_GET['resul'])){
	?>
	<script>
    alert('<?php echo $_GET['resul']; ?>');
    </script>
	<?
	}
 ?>   
 <div id="cargar"></div>
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>