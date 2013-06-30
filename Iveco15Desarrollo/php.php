<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="refresh" content="10" /> <!--esta parte actualiza la pagina cada 10 segundo -->
<title>JavaScript Ping</title>
<link rel="stylesheet" type="text/css" href="style1.css" />
<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="/load.php/css/ie7.css?v=1328167832" /><![endif]-->
<style type="text/css">
table, td, tr,{
  border-style: solid;
  border-width: 1px;
  padding: 3px;
  border-spacing: 1px;
  }
</style>
</head>
<body>

<?php
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
	function telnet ($direction, $puerto){
		error_reporting(0); 
		$telnet= fsockopen($direction, $puerto,$errno,$errstr,30);
		
		if ($errno==0){
				echo "<br>";
		echo "conexion perfecta";
		echo "<br>";
		echo $errno;
		echo "telnet";
		echo "<br>";
		echo $telnet;
		}else{
			echo "<br>";
			echo "ERROR";
			
			}
			
		}

 	//funcion para verificar el estado por ping
	function ping ($texto){
	echo "<br>";
	echo "enviados";
	echo sacar($texto,"enviados = ","recibidos"); // se llama a la funcion sacar para pasear la variable se coloca los parametros $texto = $TheStr es el texto que se desea pasear, Enviados = $sLeft es para ubicar el lado izquierdo del texto a imprimir y recibidos = $sRight es para ubicar el lado derecho del texto a imprimir
	echo "<br>";
	echo "recibidos";
	echo sacar($texto,"recibidos = ","perdidos"); 
	echo "<br>";
	echo "perdidos";
	echo sacar($texto,"perdidos = ","("); 
	$culo= sacar($texto,"recibidos = ","perdidos"); //se iguala la funciona a una variable para luego verificar los datos recibidos del ping
	if (($culo==4)||($culo==3)||($culo==2)){
		echo "<br>";
		echo "<img src='image/iveco-03.png' />"; // se coloca una imagen si los datos retornado son iguales a 4 , 3 , 2
		echo "<br>"
	?>
	<script> 
	alert ("buena señal"); //se utiliza alert para mostrar en pantalla el javascript
	
    </script>
	
	<?php
	}else{
		echo "<br>";
		echo "<img src='image/bandera.png' />";// se coloca una imagen si los datos retornado son diferentes a 4 , 3 , 2
		echo "<br>";
			}
	}

	//llamado de la funcion ping
	ping(`ping www.twitter.com`); //es importante resaltar que cuando se usan `` es para hacer que la funcion ejecute el ping sin ninguna funcion.. esto es propio del php... << es como el cmd por eso tambien se puede ejecutar tracert, telnet y otros =D
	ping(`ping www.google.co.ve`);
	//NOTA PODEMOS REDUCIR ESTE CODIGO MAS PERO COMO ES EL PRIMERO MEJOR LO DEJAMOS ASI.. AHORA NECESITAMOS CONOCER EL USO DE TELNET PARA VER SI AGREGAMOS LOS PUERTOS:..
	$direction="localhost";
	$puerto=3306;
	telnet ($direction, $puerto);

	
	
?>

</body>
</html>
