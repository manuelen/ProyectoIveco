<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="javascript/prefixfree.js" type="text/javascript"></script>
 <link rel="stylesheet" href="css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>monitoreo</title>
</head>

<body>
  <h2 align="center"> Monitoreando Servicios </h2>
            <br>
            <div class=centrar_tabla style="text-align:center;">
			<?php
			require("conexion.php");
			//comienzo de telnet
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
		//fin de telnet
			//funcion para parsear el codigo
   		 	function sacar($TheStr, $sLeft, $sRight){ 
      	 	 $pleft = strpos($TheStr, $sLeft, 0); //se coloca los parametros de la derecha y de la izquierda
		
      			  if ($pleft !== false){ //se verifica si los datos ingresados esta bien.. en caso contrario no se imprime nada
           	     $pright = strpos($TheStr, $sRight, $pleft + strlen($sLeft)); 
             	   If ($pright !== false) { 
              	          return (substr($TheStr, $pleft + strlen($sLeft), ($pright - ($pleft + strlen($sLeft))))); 
              	  } 
      			  } 	
     		   return ''; //se retorna vacio
			}
			//funcion para verificar el estado por ping
		function ping ($texto1, $nombre, $numero){
		$texto=`ping $texto1`;
		 // se llama a la funcion sacar para pasear la variable se coloca los parametros $texto = $TheStr es el texto que se desea pasear, Enviados = $sLeft es para ubicar el lado izquierdo del texto a imprimir y recibidos = $sRight es para ubicar el lado derecho del texto a imprimir
		$enviados= sacar($texto,"Received = ","Lost"); //se iguala la funciona a una variable para luego verificar los datos recibidos del ping
			if (($enviados==4)||($enviados==3)||($enviados==2)){
				$conexion="bien";
			}else{
				$conexion="mal";
			}
			return $conexion;
			
		} 
		//fin de funcion ping
		//busqueda de dispositivos en la base de datos
			$dispositivos=mysql_query("select * from dispositivos order by ip");
			$section=mysql_fetch_array($dispositivos);		
			for($i=0;$i<$section;$i++) 
			{
				$conecionip[$i]=ping($section['ip'],$section['nombre'],$section['ping']);
				if($conecionip[$i]=="bien"){
					$bloque="<section id='botones'><a href=''><p>$section[nombre]</p></a></section> ";
					$aplicaciones=mysql_query("select * from aplicaciones where ip='$ip'");
					$aplicacion=mysql_fetch_array($aplicaciones);		
					for($e=0;$e<$aplicacion;$e++) 
					{
						$conecionpuerto[$e]=telnet($aplicacion['ip'],$aplicacion['puerto']);
						if(($conecionpuerto[$e]=="bien")){
							
							}else{
								$bloque="<section id='botones1'><a href=''><p>$section[nombre]</p></a></section>";
							}
						
						$aplicacion=mysql_fetch_array($aplicaciones);
					}
					

					}else{
						$bloque="<section id='botones1'><a href=''><p>$section[nombre]</p></a></section>";
					}
				echo $bloque;
				$section=mysql_fetch_array($dispositivos);
			}
			?>
            
			
         
            </div>
            <a id="pantallac" href="#" onClick="window.open('monitoreo1.php','miventana','width=2000px,height=2000px,menubar=no');" value="Pantalla Completa" ><img  align="right" src="image/BOTON.png" /> </a>
</body>
</html>
