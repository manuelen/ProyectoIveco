
<select name="tipo" style="max-width:220px; width:100%;" id="tipo" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
require('conexion.php');
		$tipo=mysql_query("select * from tipoaplicacion order by tipo");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['tipo']; ?>"><?php echo $opcion['tipo']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select>