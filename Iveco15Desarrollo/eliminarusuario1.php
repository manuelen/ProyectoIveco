<?php
include ('funciones.php');
require('conexion.php');

	$cedula=$_REQUEST['cedula'];
	$nombre=$_REQUEST['nombre'];
	$correo=$_REQUEST['correo'];
	$sql= "delete from usuario where cedula='$cedula'";
	$sq=mysql_query($sql);
	
if ($sq==1){ 
	$response = "Eliminación Exitosa";
    echo json_encode($response);
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Eliminar Usuario de Cedula: ".$cedula."', '".date("y/m/d")."', '".date("g:i:s a")."')");
		mail($correo,"Cuenta Eliminada por el Administrador ".$_SESSION['nombre'],"Sr/a ".$nombre." su Usuario ha sido eliminado \nel dia ".strftime("%A %d de %B del %Y")." a las ".date("g:i:s a")); 
	}else{
	  $response = "Error al Eliminar";
    echo json_encode($response);

	}
	?>
	