<?php
//funcion para conectar a la base de datos y verificar la existencia del usuario
function conexiones($usuario, $clave) {
	//conexion con el servidor de base de datos MySQL
	$conectar = mysql_connect('localhost','root','123456');
	//seleccionar la base de datos para trabajar
	mysql_select_db('database',$conectar);
	//sentencia sql para consultar el nombre del usuario
	$sql = "SELECT * FROM `database`.`usuario` WHERE `usuario`='$usuario' AND `contrasena`=MD5('$clave')";
	//ejecucion de la sentencia anterior
	$ejecutar_sql=mysql_query($sql,$conectar);
	//si existe inicia una sesion y guarda el nombre del usuario
	if (mysql_num_rows($ejecutar_sql)!=0){
		//inicio de sesion
		session_start();
		$ing=mysql_fetch_array($ejecutar_sql);
		//configurar un elemento usuario dentro del arreglo global $_SESSION
		$_SESSION['usuario']=$usuario;
		$_SESSION['nombre']=$ing['nombre'];
		$_SESSION['nivel']=$ing['nivel'];
		$_SESSION['cedula']=$ing['cedula'];
		$_SESSION['repeticiones']=0;
		//retornar verdadero
		return true;
	} else {
		//retornar falso
		return false;
	}
}
//funcion para verificar que dentro del arreglo global $_SESSION existe el nombre del usuario
function verificar_usuario(){
error_reporting(0); 
	session_start();
	
	if ($_SESSION['usuario']){
		return true;
	}
}
?>
