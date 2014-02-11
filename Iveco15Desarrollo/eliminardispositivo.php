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
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
        <script type="text/javascript" src="javascript/hora.js"></script>
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
		    $pagina=10;
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
<?php
require("conexion.php");
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

<form action="eliminardispositivo1.php?ip=<?php echo $fila['ip'];?>" method="post" id="form_ip">

<table align="center" style="text-align:left;" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Eliminar Dispositivos  </font></b></td>
</tr>

<tr>
<td> <label for="ip">Dirección IP: </label> </td> 
<td><font><?php echo $fila['ip']; ?></font> </td>
</tr>

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td>  <font><?php echo $fila['nombre']; ?></font></td>
</tr>
<tr>
<td> <label for="tipo">Tipo: </label> </td> 
<td><font><?php echo $fila['tipo']; ?></font></td>
</tr>   

<tr>
<td> <label for="descripcion"> Descripción: </label> </td> 
<td> <font><?php echo $fila['descripcion']; ?></font></td>
</tr>

<tr>
<td> <label for="estado">Estado: </label></td> 
<td><font><?php echo $fila['estado']; ?></font></td>
</tr>  

<tr>
<td> <label for="ping">Números de Ping: </label> </td> 
<td>  <font><?php echo $fila['ping']; ?></font></td>
</tr>

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Eliminar" class="submit"/>
<a href="modicarservicio.php"><input type="button" value="Volver" /></a> </td>
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