<?php
require("conexion.php");
//funcion para parsear el codigo
if (isset($_POST['ip'])){
		$ip=$_POST['ip'];
	}else{
	$ip1=$_POST['ip1'];
	$ip2=$_POST['ip2'];
	$ip3=$_POST['ip3'];
	$ip4=$_POST['ip4'];
	$ip=$ip1.".".$ip2.".".$ip3.".".$ip4;
	}
   		 	function sacar($TheStr, $sLeft, $sRight){ 
      	 	 $pleft = strpos($TheStr, $sLeft, 0); //se coloca los parametros de la derecha y de la izquierda
		
      			  if ($pleft !== false){ //se verifica si los datos ingresados esta bien.. en caso contrario no se imprime nada
           	     $pright = strpos($TheStr, $sRight, $pleft + strlen($sLeft)); 
             	   if ($pright !== false) { 
              	          return (substr($TheStr, $pleft + strlen($sLeft), ($pright - ($pleft + strlen($sLeft))))); 
              	  } 
      			  } 	
     		   return ''; //se retorna vacio
			}
			//funcion para verificar el estado por ping
		function ping ($texto1, $nombre, $numero, $tiempo){
		$texto=`ping $texto1 -n $numero -w $tiempo`;
		 // se llama a la funcion sacar para pasear la variable se coloca los parametros $texto = $TheStr es el texto que se desea pasear, Enviados = $sLeft es para ubicar el lado izquierdo del texto a imprimir y recibidos = $sRight es para ubicar el lado derecho del texto a imprimir
		$enviados= sacar($texto,"Received = ",", Lost"); //se iguala la funciona a una variable para luego verificar los datos recibidos del ping
			return $enviados;	
		} 
		//fin de funcion ping
		
		$dispositivos= mysql_query("SELECT * FROM dispositivos WHERE ip= '$ip'");
		$section=mysql_fetch_array($dispositivos);
	
	if (($section['ip']!=$ip)||(isset($_POST['ip']))){ 
		if (ping($ip,$section['nombre'],1,1000)==1){
			$nombreServidor=gethostbyaddr($ip);
		$response = "Disponible \n Direccion IP: $ip\n Nombre del Servidor: $nombreServidor";
			}else{
		$response = "Erronea";
		}
		echo json_encode($response);
	}else{
	  $response = "Ocupada";
    echo json_encode($response);

	}
		
		?>