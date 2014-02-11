<?php
require("conexion.php");
include ('funciones.php');
//funcion para parsear el codigo
	verificar_usuario();
	
	$cedula=$_POST['cedula'];
	$usuario=$_POST['usuario'];
	$correo=$_POST['correo'];
	$contrasena=$_POST['contrasena'];
	$usuario1 = $_SESSION['usuario'];
		$cedulas=mysql_query("SELECT * FROM  `usuario` where cedula='$cedula'");
		$cedulas1=mysql_fetch_array($cedulas);
		$usuarios=mysql_query("SELECT * FROM  `usuario` where usuario='$usuario'");
		$usuarios1=mysql_fetch_array($usuarios);
		$correos=mysql_query("SELECT * FROM  `usuario` where correo='$correo'");
		$correos1=mysql_fetch_array($correos);
		$contrasenas=mysql_query("SELECT * FROM  `usuario` where `contrasena` = MD5('$contrasena') and usuario='$usuario1'");
		$contrasenas1=mysql_fetch_array($contrasenas);
	
	if ($cedulas1['cedula']==$cedula){ 
	$response = "Error Ingrese Otra Cedula";
	echo json_encode($response);
	}else if ($usuarios1['usuario']==$usuario){
	$response = "Error Ingrese Otro  Usuario";
    echo json_encode($response);
	}else if($correos1['correo']==$correo){
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