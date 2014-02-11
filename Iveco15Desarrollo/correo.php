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
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/azul.css" type="text/css"/>
		<?php	require('conexion.php'); ?>
        <script languaje="javascript">
		function correo(){
			<?php
			$cantidad=mysql_query("select count(correo) from usuario ");
			$cant=mysql_fetch_array($cantidad);
			?>
       		var total = <?php echo $cant[0]; ?>;
		 	var i;
			var tiper2="";
			for(i=0;i<total;i++){
			var correo=$("."+i+":checked").val();
			var tipe = i+"="+correo;
			var tiper2=tipe+"&"+tiper2;	
			}
				var datos = tiper2+"descripcion="+$("#descripcion:checked").val() ;
				$.post('correo1.php',datos, function(result) {alert(result);},'json');
			}
		function habilitarCondicion(){
			<?php
			$cantidad=mysql_query("select count(correo) from usuario ");
			$cant=mysql_fetch_array($cantidad);
			?>
       		var total = <?php echo $cant[0]; ?>;
		 	var i;
		 
				if(document.form_puerto.correo.checked == false){
		 		
					for(i=0;i<total;i++){
  						 document.form_puerto.correo1[i].checked = false;
					}
				
				}else{

   					for(i=0;i<total;i++){
  						 document.form_puerto.correo1[i].checked = true;
   					}
				}
   	    }
			function habilitarCondicion1(){
		 
				if(document.form_puerto.correo1.checked == false){	
					 						
  						 document.form_puerto.correo.checked = true;									
				}else{	
  						 document.form_puerto.correo.checked = false;
				}
   	    }
		</script>
        <script type="text/javascript" src="javascript/hora.js"></script>
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
		   $pagina=14;
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
				include('menu.php');
				?>
			</nav>
                     
        	<section id="principal" >




<form action="javascript:correo();" method="post" name="form_puerto">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

	<tr bgcolor="#000066">
		<td colspan="4" align="center"><b><font color="#FFFFFF" size="+1"> Configurar Correo  </font></b></td>
	</tr>

	<tr>
		<td rowspan="<?php echo $cant[0]+2; ?>"> <label for="correo">Correo: </label> </td> 
		<td colspan="2">Todos</td>
		<td > <input type="checkbox" id="correo" title="correo"   onClick="habilitarCondicion();" /> </td>
	</tr>
    
 	 <tr>
		<td colspan="3" style="text-align:center;">Seleccionar Específicos:</td>
 	</tr>
    
		<?php
		$correo=mysql_query("select * from usuario GROUP BY correo");
		$opcion=mysql_fetch_array($correo);
		for($i=0;$i<$opcion;$i++) 
		{
		echo" <tr>";
			echo "<td>";
			echo $opcion['nombre']."</td>";
		    echo "<td>";
			echo $opcion['correo']; ?>
        	</td>
        <td>
		<input type="checkbox" class="<?php echo $i; ?>"   name="<?php echo $i; ?>" id="correo1" title="correo" value="si" onClick="habilitarCondicion1();"  >
        </td>
        </tr>
        <br/>
		<?php
		$opcion=mysql_fetch_array($correo);
		}
 ?> 
</tr>

<tr>
<td> Enviar Descripción:</td>
<td colspan="3" align="center"> SI
<input id="descripcion" type="radio" value="si" name="descripcion" checked /> 
     NO <input id="descripcion" type="radio" value="no" name="descripcion" /> 
     </td>
</tr>

<tr align="center">
<td colspan="4"> 
<input type="submit" value="Enviar" class="submit"/>
<input type="reset" value="Cancelar" /> </td>
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