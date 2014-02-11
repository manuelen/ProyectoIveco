<?php
include ('funciones.php');
require('conexion.php');

	$ip=$_REQUEST['ip'];
	$puerto=$_REQUEST['puerto'];
	
	$sql= "delete from aplicaciones where ip='$ip' and puerto='$puerto'";
	$sq=mysql_query($sql);
	
	$insertsonido= "delete from sonido where ip='$ip' and puerto='$puerto'";
	$sq=mysql_query($insertsonido);	
	
	$insertpantalla= "delete from pantalla where ip='$ip' and puerto='$puerto'";
	$sq=mysql_query($insertpantalla);
	
	$insertcorreo= "delete from correo where ip='$ip' and puerto='$puerto' ";
	$sq=mysql_query($insertcorreo);
	
	if ($sq==1){ $res=1;
		verificar_usuario();
	mysql_query("INSERT INTO `database`.`auditoria` (`usuario`, `accion`, `fecha`, `hora`) VALUES ('$_SESSION[usuario]', 'Eliminar Servicio de IP: ".$ip." y puerto $puerto', '".date("y/m/d")."', '".date("g:i:s a")."')");
	?>
	<script>
	alert("Eliminaci\u00f3n Exitosa");
	this.location.href='modicarservicio.php';
	</script>
	<?php
	}else{ $res=2;?>
	<script>
	alert("Error al Eliminar Datos");
	alert('<?php echo $ip."".$puerto;?>');
	this.location.href='modicarservicio.php';
	</script>
	<?php
	}
	?>
	