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
        <style>
        label{
			text-align:center;
			}
        </style>
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
		   include ('linea.php');
		   ?>
      </nav>
	  <section id="contenedor">
        	<nav id="menu">
				<?php
                	include ('menu.php');
                 ?>
			</nav>
            
        	<section id="principal">
            <br>
<?php

// archivos incluidos. Librerías PHP para poder graficar.
include "FusionCharts.php";
include "Functions.php";
// Gráfico de Barras. 4 Variables, 4 barras.
// Estas variables serán usadas para representar los valores de cada unas de las 4 barras.
// Inicializo las variables a utilizar.


require("conexion.php");
$fechaini= $_REQUEST['fechainicio']; 
$fechafin= $_REQUEST['fechafin']; 

$resultado=mysql_query("SELECT dispositivos.nombre, SUM( hour( TIMEDIFF( `horaa` , `horad` ) ) *60 + minute( TIMEDIFF( `horaa` , `horad` ) ) + second( TIMEDIFF( `horaa` , `horad` ) ) /60 ) AS tiempoinactivo
FROM `controldeerrores`
INNER JOIN dispositivos ON controldeerrores.ip = dispositivos.ip
WHERE puerto = ''
AND (
controldeerrores.fecha
BETWEEN '$fechaini'
AND '$fechafin'
) and falla='no'
GROUP BY controldeerrores.ip
ORDER BY tiempoinactivo DESC limit 5");
$fila=mysql_fetch_array($resultado);

						for($i=0;$i<$fila;$i++) 
		{                
$intTotalAnio1[$i] = $fila['tiempoinactivo'];

		$fila=mysql_fetch_array($resultado);
		}
// $strXML: Para concatenar los parámetros finales para el gráfico.
$strXML = "";
// Armo los parámetros para el gráfico. Todos estos datos se concatenan en una variable.
// Encabezado de la variable XML. Comienza con la etiqueta "Chart".
// caption: define el título del gráfico.
// bgColor: define el color de fondo que tendrá el gráfico.
// baseFontSize: Tamaño de la fuente que se usará en el gráfico.
// showValues: = 1 indica que se mostrarán los valores de cada barra. = 0 No mostrará los valores en el gráfico.
// xAxisName: define el texto que irá sobre el eje X. Abajo del gráfico. También está xAxisName.
$strXML = "<chart caption = 'Tiempo Inactivo en Minutos' bgColor='#CDDEE5' baseFontSize='10' showValues='1' xAxisName='Servidores' >";
// Armado de cada barra.
// set label: asigno el nombre de cada barra.
// value: asigno el valor para cada barra.
// color: color que tendrá cada barra. Si no lo defino, tomará colores por defecto.
	      $resultado=mysql_query("SELECT dispositivos.nombre, SUM( hour( TIMEDIFF( `horaa` , `horad` ) ) *60 + minute( TIMEDIFF( `horaa` , `horad` ) ) + second( TIMEDIFF( `horaa` , `horad` ) ) /60 ) AS tiempoinactivo
FROM `controldeerrores`
INNER JOIN dispositivos ON controldeerrores.ip = dispositivos.ip
WHERE puerto = ''
AND (
controldeerrores.fecha
BETWEEN '$fechaini'
AND '$fechafin'
)and falla='no'
GROUP BY controldeerrores.ip
ORDER BY tiempoinactivo DESC limit 5");
$fila=mysql_fetch_array($resultado);    
	for($e=0;$e<$fila;$e++) 
		{ 
$strXML .= "<set label = '$fila[nombre]' value ='".$intTotalAnio1[$e]."' color = '' />";

		$fila=mysql_fetch_array($resultado);
		}


// Cerramos la etiqueta "chart".
$strXML .= "</chart>";
// Por último imprimo el gráfico.
// renderChartHTML: función que se encuentra en el archivo FusionCharts.php
// Envía varios parámetros.
// 1er parámetro: indica la ruta y nombre del archivo "swf" que contiene el gráfico. En este caso Columnas ( barras) 3D
// 2do parámetro: indica el archivo "xml" a usarse para graficar. En este caso queda vacío "", ya que los parámetros lo pasamos por PHP.
// 3er parámetro: $strXML, es el archivo parámetro para el gráfico. 
// 4to parámetro: "ejemplo". Es el identificador del gráfico. Puede ser cualquier nombre.
// 5to y 6to parámetro: indica ancho y alto que tendrá el gráfico.
// 7mo parámetro: "false". Trata del "modo debug". No es im,portante en nuestro caso, pero pueden ponerlo a true ara probarlo.
echo renderChartHTML("Column3D.swf", "",$strXML, "ejemplo", 500, 400, false);
?>
            </section> 

	   </section>
        
<footer>
<p><b>DISEÑADO POR: MANUEL SOTOMAYOR, JOSELIN BERGARA, MIGUEL BRACHO</b></p>
</footer>
</div>
    </body>
</html>