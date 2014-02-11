<?php
include ('funciones.php');
require('conexion.php');

	$ip=$_REQUEST['ip'];
	
	$sql= "delete from dispositivos where ip='$ip'";
	$sq=mysql_query($sql);
	
	if ($sq==1){ $res=1;
	verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Eliminar Dispositivo de IP: ".$ip."', '".date("y/m/d")."', '".date("g:i:s a")."')");
	?>
    
	<script>
	alert("Eliminaci\u00f3n Exitosa");
	this.location.href='modicarservicio.php';
	</script>
	<?php
	}else{ $res=2;?>
	<script>
	alert("Error Al Registar Datos2");
	this.location.href='modicarservicio.php';
	</script>
	<?php
	}
	?>
	