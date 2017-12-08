<?php 
    header('Content-Type: text/html; charset=UTF-8');     
    header('<link rel="stylesheet" href="../css/styles.css">');
	include_once '../database/connection.php';
	$conn = Connect();	

	$code = $_GET['codeR'];
	$stmSelect = "SELECT * FROM registry WHERE code='$code'";
	$execSelect = $conn->query($stmSelect);

	
if(isset($_GET['codeR'])){
	require_once('tcpdf/tcpdf.php');
	
	$pdf = new TCPDF('P', 'mm', 'LETTER', true, 'UTF-8', false);
	
	$pdf->SetCreator(PDF_CREATOR);
	$pdf->SetAuthor('César Valenciano');
	
	$pdf->setPrintHeader(false); 
	$pdf->setPrintFooter(false);
	$pdf->SetMargins(20, 20, 20, false); 
	$pdf->SetAutoPageBreak(true, 20); 
	$pdf->SetFont('Helvetica', '', 10);
	$pdf->addPage();

	$content = 	'
				<table id="theader" border="2" cellpadding="5">
					<thead>
						<tr>
							<th>LOGO</th>
							<th>LEYENDA</th>
							<th>QR</th>
						</tr>
					</thead>
				</table>
				<br><br>
				<h1>Datos del responsable</h1>
				<table border="1" cellpadding="2">
					<tr>
						<td>Número de nomina: 68041</td>
						<td>Nombres: Hitomi Laine</td>
					</tr>
					<tr>
						<td>Puesto: Ejecutiva de cunta y presupuestos</td>
						<td>Correo: hlaine@midominio.com</td>
					</tr>
					<tr>
						<td>Sucursal: Aguascalientes</td>
						<td>Departamento / Planta: Ventas</td>
					</tr>
					<tr>
						<td>Telefono: 449-123-45-67</td>
						<td>Fecha: 25 de Febrero del 2015</td>
					</tr>
				</table>
				<p></p>
				<h1>Datos del equipo</h1>
				<table border="1" cellpadding="2">
					<tr>
						<td>Tipo: Laptop</td>
						<td>Marca: HP</td>
						<td>Modelo: 240 G2</td>
					</tr>
					<tr>
						<td colspan="2">Factura: G0481</td>
						<td colspan="1">Fecha factura: 23/11/1992</td>
					</tr>
					<tr>
						<td colspan="3">Comentarios: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus modi maiores officia, voluptatum suscipit alias quidem iusto quaerat aliquam, consequatur a in dolore illo dolorum eaque cumque cupiditate consectetur odio?</td>
					</tr>
				</table>
				<p></p>
				<p></p>
				<p></p>
				<h3>Politicas de uso</h3>
				<h4>Equipo de Computo Propiedad de Servicios de Aseguramiento de Calidad Muñing S.C.</h4>

				<p>
				Me hago responsable del equipo, el cual me fue asignado como herramienta de trabajo para el desempeño
				de mis funciones. Me comprometo a respetar, aplicar y cumplir las políticas de uso,manejo de información,
				seguridad, asignación y recuperación de equipo así como todas aquellas que MEXQ establezca.
				Al no requerir el equipo y/o programas instalados por razón de termino de mi relación laboral con la
				empresa Servicios de Aseguramiento de Calidad Muñing S.C., reasignación de actividades, etc. 
				</p>
				<p>
				Soy	responsable de regresar el equipo al Departamento de TI para la cancelación de estedocumento. 
				</p>
				<p>
				En caso	de no devolverlo total o parcialmente se me descontara de mi sueldo el costode reposición según la factura
				de compra, en caso de robo es mi responsabilidad levantar una denuncia ante el Ministerio Publico y
				entregar una copia e informar al Departamento de TI para que se hagan los tramites correspondientes.
				</p>
				<p></p>
				<p></p>
				<p></p>
				<p></p>
				<p></p>
				<p>______________________________________
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				______________________________________</p>
				<p>Nombre y Firma de Usuario
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Nombre y Firma de entrega</p>
				<p></p>
				<p></p>
				<p></p>

				
				
				';
	
	// $content .= '
 //      <table border="1" cellpadding="5">
 //        <thead>
 //          <tr>
 //            <th>DNI</th>
 //            <th>A. PATERNO</th>
 //            <th>A. MATERNO</th>
 //            <th>NOMBRES</th>
 //            <th>AREA</th>
 //            <th>SUELDO</th>
 //          </tr>
 //        </thead>
	// ';
	
	
	// while ($user=$execSelect->fetch()) { 
	// $content .= '
	// 	<tr>
 //            <td>'.$user['code'].'</td>
 //            <td>'.$user['name'].'</td>
 //            <td>'.$user['lastname'].'</td>
 //            <td>'.$user['branch'].'</td>
 //            <td>'.$user['phone'].'</td>
 //            <td>S/. '.$user['model'].'</td>
 //        </tr>
	// ';
	// }
	
	// $content .= '</table>';
		
	$pdf->writeHTML($content, true, 0, true, 0);

	$pdf->lastPage();
	$pdf->output('Reporte.pdf', 'I');
}

?>