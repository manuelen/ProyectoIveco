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
        <script>
        $('#personal').live('click',function(){
			 $('#add').toggle('show');
			});
		 $('#correo').live('click',function(){
			 $('#add1').toggle('show');
			});
		function recuperarCorreo(){
				var datos = "correo="+$("#correo1").val();
				$.post('recuperar3.php',datos, function(result2){alert(result2);},'json');
				}
		
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
            </br></br></br></br></br>
            <table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

            <tr bgcolor="#000066">
            <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Administrador de Contraseña  </font></b></td>
            </tr>
            
            <tr bgcolor="#000066">
            <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Recuperar Por Correo  </font></b></td>
            </tr>
            
            <tr align="center">
            <td><label>Recuperar por Correo </label> </td> 
            <td><label><input id="correo" type="button" value="Recuperar" /></label> </td> 
            </tr>  
            
            <tr bgcolor="#000066">
            <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Recuperar por Datos Personales </font></b></td>
            </tr>
            
            <tr align="center">
            <td> <label>Recuperar por Datos Personales</label> </td> 
            <td> <input type="submit" id="personal" value="Recuperar" /> </td> 
            </tr>

            <tr align="center" >
            <td colspan="2"> <input type="button" name="Volver" value="Volver" style="color:#000" onClick="location.href='index.php';" /> </td> 
            </tr>

            </table>
             
             <div id="add1" style="display:none">
            <form action="javascript:recuperarCorreo();" id="form_recuperar">

				<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

				<tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Recuperar Por Correo </font></b></td>
                </tr>
                
                <tr>
                <td> <label for="Correo">Ingrese su Correo: </label> </td> 
                <td>  <input type="text" name="Correo" id="correo1" title="Ingrese su Correo" placeholder="Ingrese su Correo" autocomplete="off" required/> </td>
                </tr>
                
                <tr align="center">
                <td colspan="2"> 
                <input type="submit" value="Enviar" class="submit"/>
                </td>
                </tr>
                
                </table>
			</form>
            </div>
             
            <div id="add" style="display:none">
            <form action="recuperar.php" method="post" id="form_recuperar">

				<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

				<tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Recuperar Por Datos Personales </font></b></td>
                </tr>
                
                <tr>
                <td> <label for="cedula">Ingrese su Cedula: </label> </td> 
                <td>  <input type="text" name="cedula" id="cedula" title="Ingrese su Cedula" maxlength="8" placeholder="Ingrese su Cedula" autocomplete="off" required/> </td>
                </tr>
                
                <tr align="center">
                <td colspan="2"> 
                <input type="submit" value="Enviar" class="submit"/>
                </td>
                </tr>
                
                </table>
			</form>
            </div>
            <br />
             <br />
            <?php 
				require('conexion.php');
				if(!isset($_REQUEST['cedula'])){
					}else{
						$cedula=$_REQUEST['cedula'];
						$resultado=mysql_query("select * from usuario where cedula= $cedula");
						if(!$resultado)
						{?>
							<script>
					alert("Ingrese la cedula con datos numericos");
					</script>
						<?
                        }
						else
						{
											$fila=mysql_fetch_array($resultado);
										if (!$fila)
			{?>
			 <script>
					alert("Datos no Encontrados");
					</script>
			<?
            }
			else
			{	?>
                <?php echo "<form action='recuperar1.php?cedula=$cedula' method='post' id='form_recuperar1'>";?>

				<table align="center" cellpadding="7" style="text-align:left;" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

				<tr bgcolor="#000066">
                <td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"><?php echo "Bienvenido ".$fila['nombre']; ?> </font></b></td>
                </tr>
                
                <tr>
                <td> <label for="pregunta">Pregunta Secreta: </label> </td> 
                <td>  <input type="text" name="pregunta" id="pregunta" title="Ingrese su Pregunta"  placeholder="Ingrese su Pregunta" autocomplete="off" required/> </td>               </tr>
                <tr>
                <td> <label for="respuesta">Respuesta Secreta: </label> </td> 
                <td>  <input type="text" name="respuesta" id="respuesta" title="Ingrese su Respuesta" placeholder="Ingrese su Respuesta" autocomplete="off" required/> </td>               </tr>
                
                <tr align="center">
                <td colspan="2"> 
                <input type="submit" value="Enviar" class="submit"/>
                <input type="reset" value="Cancelar" />
                </td>
                </tr>
                
                </table>
				</form>
                
                <?php						}
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