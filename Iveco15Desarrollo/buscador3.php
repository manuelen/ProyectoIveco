<?php
require("conexion.php");
include ('funciones.php');
//funcion para parsear el codigo
	verificar_usuario();
	$cedula=$_POST['cedula'];
	$correo=$_POST['correo'];
	$contrasena=$_POST['contrasena'];
	$usuario = $_SESSION['usuario'];
		$correos=mysql_query("SELECT * FROM  `usuario` where correo='$correo' and cedula!='$cedula'");
		$correos1=mysql_fetch_array($correos);
		$contrasenas=mysql_query("SELECT * FROM  `usuario` where `contrasena` = MD5('$contrasena') and usuario='$usuario'");
		$contrasenas1=mysql_fetch_array($contrasenas);
	
	if($correos1['correo']==$correo){
	$response = "Error Ingrese Otro Correo";
    echo json_encode($response);
	}else if ($contrasenas1==false){ 
	$response = "Error Contraseña Erronea";
	echo json_encode($response);
	}else{
	$response = "Disponible";
    echo json_encode($response);
		}
		
		?>