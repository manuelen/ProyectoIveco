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
        <script type="text/javascript" src="javascript/hora.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
		<link rel="shortcut icon" href="image/icono.ico"> 
        <script>
		setTimeout(function(){
								$(".submit").css("display","");
								},15000);
        function ingresar(){
			var datos = "usuario=" +$("#usuario").val()+ "&contrasena="+$("#contrasena").val();
				$.post('index2.php',datos, function(result) {
					if (result!="Bienvenido"){
						if($("#repeticiones").val()!=3){
						var intentos = parseInt($("#repeticiones").val())+parseInt(1);
						alert(result);
						$("#repeticiones").val(intentos);
						}else{
							alert("Espere un lapso de 15 segundos para volver a Intentarlo");
							var datos = "usuario="+$("#usuario").val();
							$.post('seguridad.php',datos, function(result2){},'json');
							$(".submit").css("display","none");
							$("#repetir").load("repeticiones.php");
							setTimeout(function(){
								$(".submit").css("display","");
								},15000);
							}
					}else{
					$(location).attr('href',"administrador.php");}},'json');
			}
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
      
      <nav id="linea" style="height:40px;">				
           <ul >
            	<li id="todo"></li>
               	<li id="linea"><a href="help2.php?ubicar=4"><img id="help" src="image/consulta.png" /></a></li>
           </ul>
      </nav>
	  <section id="contenedor">
            
        	<section id="principal2">
            <br/><br/><br/><br/><br/><br/><br/>
            <div id="repetir" style="display:none"></div>
            <form action="javascript:ingresar()"  id="form_modiserver">

				<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

				<tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Usuario </font></b></td>
                </tr>
                
                
                <tr>
                <td> <label for="usuario">Nombre de Usuario: </label> </td> 
                <td>  <input type="text" name="usuario" id="usuario" title="Ingrese su Nombre de Usuario" maxlength="60" placeholder="Nombre de Usuario" autocomplete="off" required/> </td>
                </tr>
               <tr>
                <td> <label for="contrasena">Ingrese Su Contraseña: </label> </td> 
                <td>  <input type="password" name="contrasena" id="contrasena" title="Ingrese su Contraseña" maxlength="60" placeholder="Contraseña" autocomplete="off" required/> </td>
                </tr>
                <tr align="center">
                <td colspan="2"> 
                Numero de Intentos <input id="repeticiones"  style="width:10px" value="<?php session_start();if(isset($_SESSION['repeticiones'])){echo $_SESSION['repeticiones'];}else{echo 0;} ?>"/> </td>
                </tr>
                <tr align="center">
                <td colspan="2"> 
                <input type="submit" <?php if(isset($_SESSION['repeticiones'])){ ?> style="display:none"<?php } ?> value="Enviar" class="submit"/>
                <input type="reset" value="Cancelar" />
                <input type="button" name="Recuperar Contraseña" value="Recuperar Contraseña" style="color:#000" onClick="location.href='recuperar.php';" />  </td>
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