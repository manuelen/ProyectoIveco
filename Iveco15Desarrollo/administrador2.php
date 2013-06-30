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
        <script src="javascript/tooltip.js" type="text/javascript"></script>
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
            <br><br>
                   <?php
				   require("conexion.php");
				     function telnet ($direction, $puerto){
		error_reporting(0); 
		$telnet= fsockopen($direction, $puerto,$errno,$errstr,30);
		
		if ($errno==0){
			$conexion="bien";
		}else{
			$conexion="mal";
			}
			fclose($telnet);
			return $conexion;
		}
				    $ip=$_REQUEST['ip'];
					$aplicaciones=mysql_query("select * from aplicaciones where ip = '$ip' and estado='conectado'");
					$aplicacion=mysql_fetch_array($aplicaciones);		
					for($i=0; $i<$aplicacion; $i++) 
					{
				$conecionpuerto[$e]=telnet($ip,$aplicacion['puerto']);
				$torre="<table align=center cellpadding=7 bgcolor=#C1E0FF border=1 bordercolor=#FFFFFF frame=box style=text-align:left; >  

				<tr bgcolor=#000066 width=10px>
				<td colspan=2 align=center><b><font color=#FFFFFF size=+1> $aplicacion[nombre] </font></b></td>
				</tr>
				
				<tr>
				<td> <label>ip: </label> </td> 
				<td> <label>  $aplicacion[ip] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Tipo: </label> </td> 
				<td><label> $aplicacion[tipo] </label> </td>
				</tr> 
				
				<tr>
				<td> <label >Puerto: </label> </td> 
				<td><label>  $aplicacion[puerto] </label> </td>
				</tr> 
				<tr>
				<td> <label >Estado: </label> </td> 
				<td><label>  $conecionpuerto[$e]</label> </td>
				</tr> 
				</table> ";
					
						if(($conecionpuerto[$e]=="bien")){
							$bloque="<section id='botones' class='tooltip_elemento' mensaje='$torre'><a href=''><p>$aplicacion[nombre]</p></a></section> ";
							}else{
								$bloque="<section id='botones1' class='tooltip_elemento' mensaje='$torre'><a href=''><p>$aplicacion[nombre]</p></a></section>";
							}
						echo $bloque;
						
						$aplicacion=mysql_fetch_array($aplicaciones);
					}?>
                    <a href="administrador.php"><input type="button" value="Volver" /></a>
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>