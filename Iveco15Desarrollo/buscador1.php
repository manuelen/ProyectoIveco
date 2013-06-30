<?php
require("conexion.php");
//funcion para parsear el codigo
	$ip=$_POST['ip'];
	$puerto=$_POST['puerto'];
		//comienzo de telnet
		function telnet ($direction, $puerto){
		error_reporting(0); 
		$telnet= fsockopen($direction, $puerto,$errno,$errstr,30);
		
		if ($errno==0){
			$conexion="bien";
		}else{
			$conexion="mal";
			}
			
			return $conexion;
			fclose($telnet);
		}
		//fin de telnet
		
		$puertos=mysql_query("select * from aplicaciones where ip= '$ip' and puerto='$puerto'");
		$section=mysql_fetch_array($puertos);
	
	if (($section['puerto']!=$puerto)||(isset($_POST['puerto1']))){ 
		if (telnet($ip,$puerto)=="bien"){
		$response = "Disponible";
			}else{
		$response = "Inactivo";
		}
		echo json_encode($response);
	}else{
	  $response = "Ocupado";
    echo json_encode($response);

	}
		
		?>