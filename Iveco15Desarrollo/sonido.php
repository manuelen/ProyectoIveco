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
		<script type="text/javascript" src="javascript/hora.js"></script>
        <?php	require('conexion.php'); ?>
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
		   $pagina=15;
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

             <br /> <br /> <br />

<form action="sonido1.php" method="post" id="sonidos">

<table align="center" cellpadding="7" bgcolor="#C1E0FF" border="1" bordercolor="#FFFFFF" frame="box" style="text-align:left;">  

<tr bgcolor="#000066">
<td colspan="2" align="center"><b><font color="#FFFFFF" size="+1"> Configurar Sonido  </font></b></td>
</tr>

<tr>
<td> <label for="sonido">Sonidos: </label> </td>  
<td><select name="sonido" required/> 
        <option value="">----------Sonidos---------</option>
			<?php

		$sonido=mysql_query("select * from sonidopredeterminados order by codigosonido");
		$opcion=mysql_fetch_array($sonido);
				
		for($i=0;$i<$opcion;$i++) 
		{

		echo "<option>";
		echo $opcion['Sonido'];
		$opcion=mysql_fetch_array($sonido);
		}
	

        ?>
</tr>    

<tr>
<td> <label for="repetir"> Repetir: </label> </td> 
<td> Si <input id="repetir" type="radio" name="repetir" Value="SI" /> No <input id="repetir" type="radio" name="repetir" Value="No" checked/></td>
</tr>
<script>
$(document).ready(function() {
$("#repetir").live('click',function(){
	var repetir = $("#repetir:checked").val();
	if(repetir=='SI'){
		$("#repeat").toggle();
		$("#repeat").css('display','');
		}else{
			$("#repeat").toggle('fast');
			$("#repeticiones").attr('value','1');
			$("#repeat").css('display','none');
			}
	});



});
</script>

<tr id="repeat" style="display:none">
<td> <label for="repeticiones">Repeticiones: </label> </td> 
<td>  <input type="text" name="repeticiones" id="repeticiones" title="repeticiones" placeholder="repeticiones" value="1" required/> </td>
</tr> 

<tr align="center">
<td colspan="2"> 
<input type="submit" value="Enviar" class="submit"/>
<input type="reset" value="Cancelar" /> </td>
</tr>

</table>
</form>
<?php
if (!isset($_GET['res'])){
	}else{
if($_GET['res']==1){ ?>
	<script>
	alert("Registro Exitoso");
	</script>
<?php
}else if ($_GET['res']==2){?> 	
	<script>
	alert("Error Al Registar Datos");
	</script>
	<?php
    }
	}
?>
 </section>
            
	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>