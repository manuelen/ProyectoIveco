<?php
require("conexion.php");
include ('funciones.php');
//funcion para parsear el codigo
		verificar_usuario();
	$cedula=$_POST['cedula'];
	$contrasena=$_POST['contrasena'];

		$contrasenas=mysql_query("SELECT * FROM  `usuario` where `contrasena` = MD5('$contrasena') and usuario='$usuario'");
		$contrasenas1=mysql_fetch_array($contrasenas);
	
	 if ($contrasenas1==false){ 
	$response = "Error Contraseña Erronea";
	echo json_encode($response);
	}else{
	$response = "Disponible";
    echo json_encode($response);
		}
		
		?>