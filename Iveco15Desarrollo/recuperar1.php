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
                <script>
		function modificaruser(){
			if($("#contrasena").val().toString().length<8){
				alert('Minimo 8 Caracteres');
				$("#contrasena").css({"box-shadow": "0px 0px 1px 1px rgba(255, 0, 0, 0.9)"});
				$('#confirmar').toggle('slow');
			 $('#confirmar1').toggle('fast');
			  $('#confirmar2').toggle('fast');
				}else{
        	if ($("#contrasena").val()!=$("#contrasena2").val()){
				alert("Nueva Contraseña y Confirmar Contraseña son Diferentes");
				}else{
				var datos = "contrasena="+$("#contrasena").val()+"&cedula="+$("#cedula").val();
				
				$.post('recuperar2.php',datos, function(result2){if (result2!="Modificación Exitosa"){alert(result2);}else{alert(result2);$(location).attr('href',"index.php");}},'json');
				}
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
        	<p id="logo"><a href="http://monitoreoiveco.blogspot.com/"><img src="image/iveco-03.png"/></a></p>
			<h1>Sistema de Alerta y Monitoreo de Servicios IVECO VENEZUELA </h1>   
	  </header>
      
      <nav id="linea" style="height:40px;">				
           
      </nav>
	  <section id="contenedor">
            
        	<section id="principal2">
            <br/><br/><br/><br/><br/><br/><br/>
            <?php 
				require('conexion.php');
		
				
						$cedula=$_REQUEST['cedula'];
						$pregunta=$_REQUEST['pregunta'];
						$respuesta=$_REQUEST['respuesta'];
						$resultado=mysql_query("select * from usuario where pregunta= '$pregunta' and respuesta='$respuesta' and cedula='$cedula'");
						if(!$resultado)
						{
							echo 'No se pudo ejecutar la consulta';
						}
						else
						{
											$fila=mysql_fetch_array($resultado);
										if (!$fila)
			{?>
				  <script>
					alert("Pregunta o Respuesta secreta no encontrada");
					this.location.href='recuperar.php';
					</script>
			<?php 
			}
			else
			{ ?>
           
<form action="javascript:modificaruser();" method="post" id="form_modiserver">

				<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

				<tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"><?php echo "Bienvenido ".$fila['nombre']; ?>  </font></b></td>
                </tr>
                
                 <tr style="display:none">
                <td>  <input name="cedula" id="cedula" title="cedula" value="<?php echo $fila['cedula'];?>"  autocomplete="off" required/> </td>
                </tr>
                <tr>
                <td> <label for="contrasena">Ingrese Nueva Contraseña: </label> </td> 
                <td>  <input type="password" name="usuario" id="contrasena"  maxlength="16" title="Usuario"  autocomplete="off" required/><br/> <span id="contra" style="display:none;color:red; padding:3px;">Minimo 8 Carateres</span> </td>
                </tr>
               <tr>
                <td> <label for="contrasena">Confirmar Nueva Contraseña: </label> </td> 
                <td>  <input type="password" name="contrasena" id="contrasena2" maxlength="16" title="Contraseña" autocomplete="off" required/> </td>
                </tr>
                
                <tr align="center">
                <td colspan="2"> 
                <input type="submit" value="Entrar" class="submit"/>
                <input type="button" name="Volver" value="Volver" style="color:#000" onClick="location.href='index.php';" />  </td>
                </tr>
                
                </table>
</form>
                
                <?php 
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