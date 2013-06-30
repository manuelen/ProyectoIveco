<?php
require('conexion.php');

	$cedula=$_POST['cedula'];
	$contrasena=$_POST['contrasena'];
	 
	$cedulas=mysql_query("select * from usuario where cedula='$cedula'");
	$cedulas1=mysql_fetch_array($cedulas);
	$sql= "UPDATE  `database`.`usuario` SET `contrasena` = MD5('$contrasena') WHERE  `usuario`.`cedula` ='$cedula'";

	$sq=mysql_query($sql);
	
	if ($sq==1){ 
	$response = "Modificación Exitosa";
    echo json_encode($response);
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$cedulas1[usuario]', 'Recuperación de contraseña: Datos personales', '".date("y/m/d")."', '".date("g:i:s a")."')");
	
	}else{
	  $response = "Error al Modificar";
    echo json_encode($response);
	}
	?>
	