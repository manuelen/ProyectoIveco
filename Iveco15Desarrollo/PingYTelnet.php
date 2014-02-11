<?php
//funcion correo
		function correo($NombrePuerto,$NroPuerto,$NombreIP,$NrIP,$estado,$descripcion,$texto){
		$sheader="";
		$sheader=$sheader."X-Mailer:PHP/".phpversion()."\n";
		$sheader=$sheader."Mime-Version: 1.0\n";
		$sheader=$sheader."Content-Type: text/html";
		$correos=mysql_query("select * from correo inner join usuario on correo.correo = usuario.correo where ip='$NrIP' and puerto='$NroPuerto' and estado='$estado'");
		$correo=mysql_fetch_array($correos);
		if ($estado=="si"){
			$estado="error";
			$error="Existe un error en el";
		}else if ($estado=="error"){
			$estado="si";
			$error="Fue solventado el error en el";
		}
		if($descripcion=='si'){
			$texto2="Descripcion: \n".$texto;
			}else{
				$texto2="";
				}
		
		
		for($e=0;$e<$correo;$e++) 
								{	
								if($NroPuerto==''){
								
								mail("$correo[correo]","".$error." dispositivo ".$NombreIP,"Sr/a ".$correo['nombre']." ".$error."  <b>dispositivo: ".$NombreIP."</b> con la  <b>IP: ".$NrIP." </b> el dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a")."<br />".$texto2,$sheader); 	
									}else{
								mail("$correo[correo]","".$error." servicio ".$NombrePuerto,"Sr/a ".$correo['nombre']." ".$error."  <b>servicio ".$NombrePuerto." </b> cuyo numero de puerto es:  <b>".$NroPuerto."</b> del servidor:  <b>".$NombreIP." </b> IP:  <b>".$NrIP." </b> el dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a")."<br />".$texto2,$sheader); 
								}
								mysql_query("UPDATE  `database`.`correo` SET `estado` =  '".$estado."' WHERE  `correo`.`ip` =  '".$NrIP."' AND  `correo`.`puerto` =  '".$NroPuerto."' AND  `correo`.`correo` =  '$correo[correo]' ");
								$correo=mysql_fetch_array($correos);
								}
	}
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
			//funcion para parsear el codigo
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
		
			return array ($enviados,$texto);		
		} 
		//fin de funcion ping 
        ?>

