<?php 
require('conexion.php');
include('funciones.php');
verificar_usuario();
$todo="/xampp/mysql/bin/mysqldump -u root -p123456 database > C:/xampp/htdocs/dropbox/ProyectoIveco/iveco15Desarrollo/basededatos/backup".date('y-m-d').".sql";
$pin = `$todo`;
$enlace="C:/xampp/htdocs/dropbox/ProyectoIveco/iveco15Desarrollo/basededatos/backup".date('y-m-d').".sql";
header ("Content-Disposition: attachment; filename=Backup".date('y-m-d').".sql ");
header ("Content-Type: application/force-download");
header ("Content-Length: ".filesize($enlace));
readfile($enlace);
//header("Location: backup.php");
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Realizo Backup', '".date("y/m/d")."', '".date("g:i:s a")."')");
?>

	
    
    