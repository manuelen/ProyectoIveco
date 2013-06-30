<!DOCTYPE html>

<html lang="es">

    <head> 
        <title>Sistema de Monitoreo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="Sistema de Monitoreo de Servicios" />
        <script src="javascript/prefixfree.js" type="text/javascript"></script>
        <script type="text/javascript" src="javascript/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="javascript/ddaccordion.js"></script>
		<script type="text/javascript" src="javascript/java.js"></script>
        <script type="text/javascript" src="javascript/registroip.js"></script>
        <script type="text/javascript" src="javascript/validaciones.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
        <script type="text/javascript" src="javascript/hora.js"></script>
        <?php require('conexion.php');
		?>
    </head>
    
    <body>
    
    <div id="wrap">
    	
	  <header>
        	<p id="logo"><a href="http://monitoreoiveco.blogspot.com/"><img src="image/iveco-03.png"/></a>
            <br />
        <b>
		<?php setlocale(LC_ALL,'spanish');
			echo strftime("%A %d/%m/%y") 
		 ?>
			</b>
        <br />
          <span id="liveclock">
			</span>
            </p>
			<h1>Sistema de Alerta y Monitoreo de Servicios IVECO VENEZUELA </h1>   
	  </header>
      
      <nav id="linea">				
           <?php
		   $pagina=7;
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
                	include ('menu.php');
                 ?>
			</nav>
            
        	<section id="principal" >

<form  action="javascript:registroip();" id="form_ip">

<table align="center" style="text-align:left;" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Registrar Dispositivos  </font></b></td>
</tr>

<tr>
<td> <label for="ip">Dirección IP: </label> </td> 
<td>  <input type="number" name="ip1"  id="ip1" title="Dirección IP" size="5" maxlength="3" placeholder="127" autocomplete="off" required/>
	  <input type="number" name="ip2"  id="ip2" title="Dirección IP" size="5" maxlength="3" placeholder="0" autocomplete="off" required/>
      <input type="number" name="ip3"  id="ip3" title="Dirección IP" size="5" maxlength="3" placeholder="0" autocomplete="off" required/> 
      <input type="number" name="ip4"  id="ip4" title="Dirección IP" size="5" maxlength="3" placeholder="1" autocomplete="off" required/>
      <input type="button" id="ip" value="Verificar" /><span style="color:red; padding:3px;">*</span></td>
</tr>

<tr>
<td> <label for="nombre">Nombre: </label> </td> 
<td>  <input type="text" name="nombre" id="nombre" title="Nombre" maxlength="20" size="40" placeholder="Nombre del servicio" autocomplete="off" required/><span style="color:red; padding:3px;">*</span> </td>
</tr>
<tr>
<td> <label for="tipo">Tipo: </label> </td> 
<td id="agregar"><select name="tipo" style="max-width:220px; width:100%;" id="tipo" required/> 
<option selected value="">--------------Ingrese Tipo-------------- </option> 
<?php
		$tipo=mysql_query("select * from tipodispositivo order by codigotipo");
		$opcion=mysql_fetch_array($tipo);
		for($i=0;$i<$opcion;$i++) 
		{?>
		
		<option value="<?php echo $opcion['tipo']; ?>"><?php echo $opcion['tipo']; ?> </option>
	
		<?php
		$opcion=mysql_fetch_array($tipo);
		}
 ?> </select> <input type="button" value="Otro" id="tipo1" /><span style="color:red; padding:3px;">*</span><br> <div id='add' style="display:none"><input type='text' id="text" /><input type='button' id='envi' value='Agregar' /><span style="color:red; padding:3px;">*</span></div> 
 </td>
</tr>   

<tr>
<td> <label for="descripcion"> Descripción: </label> </td> 
<td> <textarea name="descripcion" id="descripcion" title="descripcion" cols="30" rows="5" maxlength="100" 
 placeholder="Descripción..." > </textarea> </td>
</tr>

<tr>
<td> <label for="estado">Estado: </label></td> 
<td><select name="estado" style="max-width:250px; width:100%;"  id="estado"required/> 
		<option selected value="">----------------Seleccione Estado---------------</option>
		<option value="Conectado"> Conectado </option>
        <option value="Desconectado">Desconectado </option> 
	</select> <span style="color:red; padding:3px;">*</span></td>
</tr>  

<tr>
<td> <label for="ping">Números de Ping: </label> </td> 
<td>  <input type="number" name="ping" id="ping" title="Ping" maxlength="10" size="40" placeholder="mínimo de 4 ping" autocomplete="off" /> </td>
</tr>

<tr>
<td> <label for="red">Red: </label> </td> 
<td>  <select name="red" style="max-width:250px; width:100%;" id="red" required/> 
		<option selected value="">----------------Seleccione Red---------------</option>
		<option value="4"> Interno </option>
        <option value="1000">Externo </option> 
	</select> <span style="color:red; padding:3px;">*</span> </td>
</tr>

<tr>
<td> Tipo de Alertas:</td>
<td> Sonido <input name="sonido" id="sonido" type="checkbox" value="si" /> <br />
     Pantalla <input name="pantalla" id="pantalla" type="checkbox" value="si"> <br  />
     Correo Electrónico <input name="correo" id="correo" type="checkbox" value="si"/></td>
</tr>

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Enviar" id="submit"/>
<input type="reset" value="Cancelar" /> <br /> <span style="color:red; padding:3px;">(*) Datos obligatorios</span></td>
</tr>

</table>
</form>


 </section>
            
	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>