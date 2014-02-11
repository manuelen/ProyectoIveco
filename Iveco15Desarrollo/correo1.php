<?php
include ('funciones.php');
require('conexion.php');

		$descripcion=$_POST['descripcion'];
		$correo=mysql_query("select * from usuario GROUP BY correo");
		$opcion=mysql_fetch_array($correo);

			
		for($i=0;$i<$opcion;$i++) 
		{		
		if ($_POST[$i]=="undefined"){
		$estado='no';}else{
		$estado= $_POST[$i];
		}
		$sql= "update correo set descripcion='$descripcion', estado='$estado' where correo='$opcion[correo]'";
		$sq=mysql_query($sql);
		
		$opcion=mysql_fetch_array($correo);
		}
	
	if ($sq==1){
	$response = "Configuración Exitosa";
    echo json_encode($response);
	verificar_usuario();
 	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Configurar Correo', '".date("y/m/d")."', '".date("g:i:s a")."')"); 
	}else{
	  $response = "Error al Configurar";
    echo json_encode($response);

	}
	?>

	