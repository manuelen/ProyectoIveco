<?php
require('conexion.php');
include ('funciones.php');
if (verificar_usuario()){
	//si el usuario es verificado, se elimina los valores,se destruye la sesion y volvemos al formulario de ingreso
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Desconectar Usuario', '".date("y/m/d")."', '".date("g:i:s a")."')");
	session_unset();
	session_destroy();

} else {
	//si el usuario no es verificado vuelve al formulario de ingreso
	header ('Location:index.php');
}
?>
