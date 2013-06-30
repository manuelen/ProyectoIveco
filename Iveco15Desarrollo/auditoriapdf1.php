
<?php
require('fpdf/fpdf.php'); 
require('conexion.php');
require('funciones.php');

$fechaini=$_REQUEST['fechainicio'];
$fechafin=$_REQUEST['fechafin'];
class PDF extends FPDF{ 
//Cargar los datos 
var $widths;  
var $aligns;  

function SetWidths($w)  
{  
    $this->widths=$w;  
}  
  
function SetAligns($a)  
{  
    $this->aligns=$a;  
}  
  
function Row($data)  
{  
    $nb=0;  
    for($i=0;$i<count($data);$i++)  
        $nb=max($nb,$this->NbLines($this->widths[$i],$data[$i]));  
    $h=4*$nb;  
    $this->CheckPageBreak($h);  
    for($i=0;$i<count($data);$i++)  
    {  
        $w=$this->widths[$i];  
        $a=isset($this->aligns[$i]) ? $this->aligns[$i] : 'L';  
        $x=$this->GetX();  
        $y=$this->GetY();  
        $this->Rect($x,$y,$w,$h);  
        $this->MultiCell($w,4,$data[$i],0,$a);  
        $this->SetXY($x+$w,$y);  
    }  
    $this->Ln($h);  
}  
  
function CheckPageBreak($h)  
{  
    if($this->GetY()+$h>$this->PageBreakTrigger)  
        $this->AddPage($this->CurOrientation);  
}  
  
function NbLines($w,$txt)  
{  
    $cw=&$this->CurrentFont['cw'];  
    if($w==0)  
        $w=$this->w-$this->rMargin-$this->x;  
    $wmax=($w-2*$this->cMargin)*1000/$this->FontSize;  
    $s=str_replace("\r",'',$txt);  
    $nb=strlen($s);  
    if($nb>0 and $s[$nb-1]=="\n")  
        $nb--;  
    $sep=-1;  
    $i=0;  
    $j=0;  
    $l=0;  
    $nl=1;  
    while($i<$nb)  
    {  
        $c=$s[$i];  
        if($c=="\n")  
        {  
            $i++;  
            $sep=-1;  
            $j=$i;  
            $l=0;  
            $nl++;  
            continue;  
        }  
        if($c==' ')  
            $sep=$i;  
        $l+=$cw[$c];  
        if($l>$wmax)  
        {  
            if($sep==-1)  
            {  
                if($i==$j)  
                    $i++;  
            }  
            else  
                $i=$sep+1;  
            $sep=-1;  
            $j=$i;  
            $l=0;  
            $nl++;  
        }  
        else  
            $i++;  
    }  
    return $nl;  
}  
  
function Header()  
{  	
$this->Image('image/icono.jpg',10,8,23);
	$this->Image('image/iveco-03.jpg',40,8,50);
    $this->SetFont('Arial','',10);
    $this->SetFont('Arial','',10);
	$this->Cell(200,10,"Fecha:",0,0,'R');
	$this->Cell(20,10,''.date("d/m/yy"),0,0,'R');
	$this->Ln(10);
	$this->Cell(220,10,'Page '.$this->PageNo().'/{nb}',0,0,'R');
	$this->Ln(10);
	
	$this->Cell(250,10,'AUDITORIA DE USUARIOS',0,0,'C');
	$this->Ln(10);
	$this->Cell(20);

}  
  
function Footer()  
{  
    $this->SetY(-15);  
    $this->SetFont('Arial','B',8);  
    $this->Cell(100,10,'',0,0,'L');
	  
}  
}  
// creamos el objeto FPDF  
$pdf=new PDF('L','mm','Letter'); // vertical, milimetros y tamaño  
$pdf->Open();  
$pdf->AliasNbPages();
$pdf->AddPage(); // agregamos la pagina  
$pdf->SetMargins(20,20,20); // definimos los margenes en este caso estan en milimetros  
$pdf->Ln(10); // dejamos un pequeño espacio de 10 milimetros  
// Realizamos la consulta  
$con = new DB;  
	verificar_usuario();
	$pdf->Cell(250,5,'Dependecia: IVECO la Victoria',1,0,'L');
	$pdf->Ln(5);
	$pdf->Cell(250,5,'Solicitado Por: '.$_SESSION['nombre'],1,0,'L');
	$pdf->Ln(5);
	$pdf->Cell(20);
		$pdf->Ln(10);
	$pdf->Cell(20);
// Para realizar esto utilizaremos la funcion Row()  
$pdf->SetFont('Arial','',10); // tipo y tamaño de letra  
$pdf->SetWidths(array(20, 20, 100, 40,30)); // Definimos el tamaño de las columnas, tomando en cuenta que las declaramos en milimetros, ya que nuestra hoja esta en milimetros.  
$pdf->Row(array('Codigo', 'Usuario', utf8_decode('Acción'), 'Fecha','Hora')); // creamos nuestra fila con las columnas fecha(fecha de la visita al medico), medico(nombre del medico que nos atendio), consultorio y el diagnostico en esa visita.  
$historial = $con->conectar(); // Creamos nuestra conexión a la base de datos  
 // Realizamos nuestra consulta   
 	$consulta=mysql_query("select *,DATE_FORMAT(fecha, '%d/%m/%Y')as fecha from auditoria where fecha between '$fechaini' and '$fechafin'");
// ejecutamos la consulta  
// listamos la tabla de historial de visitas de cada paciente  
$numfilas = mysql_num_rows($consulta);  
for ($i=0; $i<$numfilas; $i++)   {  
	$pdf->Cell(20);
$fila = mysql_fetch_array($consulta);                  // los mostramos con la función Row  
$pdf->Row(array($fila['codigo'], $fila['usuario'], $fila['accion'], $fila['fecha'],$fila['hora']));  
}  
$pdf->Ln(5);
$pdf->Cell(250,5,'CONTROL DE ERRORES');
$pdf->Ln(5);
$pdf->Cell(50,5,'_________');
$pdf->Cell(50,5,'_________');
$pdf->Ln(5);
$pdf->Cell(50,5,'Elaborado por');
$pdf->Cell(50,5,'Verificado por');

//La ultima linea 
$pdf->Output();
// lo que hace es cerrar el archivo y enviarlo al navegador.  


?>