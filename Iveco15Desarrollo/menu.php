<script>

setTimeout(function(){
	var uri = window.location.pathname;
		if(uri!='/dropbox/ProyectoIveco/iveco15Desarrollo/administrador.php'){
			$("#cerrar").load("salir1.php");
			}
	 }, 900000);
</script>
				<div id="cerrar" style="display:none"></div>
				
			<div class="glossymenu">
                 <?php if ($_SESSION['nivel']=="Administrador"){?>
                <a class="menuitem submenuheader" href="central.php" style="text-align:left">Dispositivos y Servicios</a>
			<div class="submenu">
				<ul>
					<li><a href="registrarip.php" target="mainFrame" style="text-align:left;;">&nbsp;&nbsp;- Registro Dispositivo</a></li>
                    <li><a href="registropuerto.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;- Registro Servicio</a></li>
                    <li><a href="modicarservicio.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Modificar, Eliminar, Buscar</a></li>
               </ul>
			</div>
             <a class="menuitem submenuheader" href="central.php" style="text-align:left">Usuarios</a>
			<div class="submenu">
				<ul>
					<li><a href="RegistroUsuario.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Registrar</a></li>
                    <li><a href="ModificarUsuario.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Modificar</a></li>
                    <li><a href="EliminarUsuario.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Eliminar</a></li>
                                 
               </ul>
			</div>
             <a class="menuitem submenuheader" href="central.php" style="text-align:left">Backup</a>
			<div class="submenu">
				<ul>
					<li><a href="Backup.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Administrador de Backup</a></li>
               </ul>
			</div>
            <?php }else{} ?>
               <a class="menuitem submenuheader" href="central.php" style="text-align:left">Configurar Alertas</a>
			<div class="submenu">
				<ul>
					<li><a href="correo.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Correo</a></li>
                    <li><a href="sonido.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Sonido</a></li>
                    <li><a href="pantalla.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Pantalla</a></li>
                                 
               </ul>
			</div>
             <a class="menuitem submenuheader" href="central.php" style="text-align:left">Consultas</a>
			<div class="submenu">
				<ul>
					<li><a href="Errores.php?fechafin=<?php echo date("Y/m/d");?>" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Control de Errores</a></li>
                    <li><a href="Errores1.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Servicios por Servidor</a></li>
                    <li><a href="auditoria.php?fechafin=<?php echo date("Y/m/d");?>" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Auditoria</a></li> 
                    <li><a href="TiempoInactivo.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Tiempo Inactivo Dispositivo</a></li>          		
					<li><a href="Servidores_Caidos.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Servidores Caidos</a></li>
                    <li><a href="consultausuarios.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;- Consulta Usuarios</a></li>
               </ul>
			</div>
                         <a class="menuitem submenuheader" href="central.php" style="text-align:left">Reportes</a>
			<div class="submenu">
				<ul>
					<li><a href="controlerrorespdf.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Control de Errores</a></li>
                    <li><a href="auditoriapdf.php" target="mainFrame" style="text-align:left;">&nbsp;&nbsp;-Auditoria</a></li> 
               </ul>
			</div>
            </div>
          