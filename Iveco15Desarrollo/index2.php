<?php
include ('funciones.php');
//usuario y clave pasados por el formulario
$usuario = $_POST['usuario'];
$clave = $_POST['contrasena'];
//usa la funcion conexiones() que se ubica dentro de funciones.php
if (conexiones($usuario, $clave)){
	//si es valido accedemos a ingreso.php
	$response = "Bienvenido";
    echo json_encode($response);
	//mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$usuario', 'Ingreso de Usuario', '".date("y/m/d")."', '".date("g:i:s a")."')");
} else {
	
	$response = "Usuario o Clave Incorrecta";
    echo json_encode($response);

}
?>

