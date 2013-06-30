<?php
include ('funciones.php');
require('conexion.php');

	$modo=$_POST['modoa'];
	$ubicacion=$_POST['ubicacion'];
	$duracion=$_POST['duracion'];
	$ubicar=$_POST['ubicar'];

	$sqll= "UPDATE `database`.`pantalla` SET `modoa` = '$modo',`ubicacion` = '$ubicacion',`duracion` = '$duracion',`ubicar` = '$ubicar'";

	$sql=mysql_query($sqll);
	
	if ($sql==1){ 
			verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Configurar Pantalla', '".date("y/m/d")."', '".date("g:i:s a")."')"); 
	$response = "Configuración Exitosa";
    echo json_encode($response);
	}else{
	  $response = "Error al Configurar";
    echo json_encode($response);

	}
	?>