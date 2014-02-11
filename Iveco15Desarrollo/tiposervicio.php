<?php
require('conexion.php');

	$tipo=$_POST['tipo'];
	
	$sql= "INSERT INTO `database`.`tipoaplicacion` (`tipo`) VALUES ('$tipo');";
	$sq=mysql_query($sql);
	
	if ($sq==1){ 
	$response = "Registro Exitoso";
    echo json_encode($response);
	}else{
	  $response = "Error al Registrar";
    echo json_encode($response);
	}

?>
