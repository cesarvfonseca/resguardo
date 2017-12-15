<?php 
    header('Content-Type: text/html; charset=UTF-8');     
    include_once '../utils/qrcode-lib/qrlib.php';
	include_once '../database/connection.php';
	$conn = Connect();	

	$code = $_GET['codeR'];
	$stmSelect = "SELECT * FROM registry WHERE code='$code'";
	$execSelect = $conn->query($stmSelect);

	
if(isset($_GET['codeR'])){
	require_once('tcpdf/tcpdf.php');
	while ($row = $execSelect->fetch()):
		$id=$row ["code"];
		$id_employee = $row ["id_employee"];
		$employee_name = $row ["name"];
		$employee_lastname = $row ["lastname"];
		$employee_mail = $row ["mail"];
		$employee_position = $row ["position"];
		$employee_branch = $row ["branch"];
		$employee_ws = $row ["workstation"];
		$employee_phone = $row ["phone"];
		$date_registry = $row ["date"];

		$nserie = $row ["serial"];
		$nproduct = $row ["product"];
		$nbrand = $row ["brand"];
		$nmodel = $row ["model"];
		$ntype = $row ["type"];
		$ninvoice = $row ["invoicenbr"];
		$ninvoiceDate = $row ["invoicedate"];
		$ncomment = $row["comment"];
		$compUser;

		$contenidoQR = 'NS:'.$nserie.' NP:'.$nproduct.'Nomina:'.$id_employee.' Encargado:'.$employee_name.' '.$employee_lastname;

		if ($ntype=="MQ"){
			$ntype="Laptop";
			$compUser="MEXQ";
		}else{
			$ntype="Desktop";
			$compUser="PC";
		}



		$pdf = new TCPDF('P', 'mm', 'LETTER', true, 'UTF-8', false);
		
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('César Valenciano');
		
		$pdf->setPrintHeader(false); 
		$pdf->setPrintFooter(false);
		$pdf->SetMargins(20, 15, 20, false); 
		$pdf->SetAutoPageBreak(true, 20); 
		$pdf->SetFont('Helvetica', '', 10);
		$pdf->addPage();

		//CODIGO QR 
		$codeContents = $contenidoQR;
		$fileName = $nserie.".png";
	    $tempDir = "../img/QR/";
		$pngAbsoluteFilePath = $tempDir.$fileName;
		$urlRelativeFilePath = EXAMPLE_TMP_URLRELPATH.$fileName;
		QRcode::png($codeContents, $pngAbsoluteFilePath); 
		// $pdf->Image("../img/QR/$fileName",160,11,33);
		//CODIGO QR

		$content = 	'
					<table border="2" cellpadding="5">
						<thead>
							<tr align="center">
								<th><img src="../img/LogoMQ.png" alt="imagenQR" height="80" width="180"></th>
								<th>
									<h3>Servicios de Aseguramiento de Calidad Muñing S.C.</h3>
									<h4>Carta Responsiva</h4>
								</th>
								<th><img src="../img/QR/'.$fileName.'" alt="imagenQR" height="80" width="80"></th>
							</tr>
						</thead>
					</table>
					<h1 align="center">Datos del responsable</h1>
					<table border="1" cellpadding="2">
						<tr>
							<td>Número de nomina: '.$id_employee.'</td>
							<td>Nombres: '.$employee_name." ".$employee_lastname.'</td>
						</tr>
						<tr>
							<td>Puesto: '.$employee_position.'</td>
							<td>Correo: '.$employee_mail.'</td>
						</tr>
						<tr>
							<td>Sucursal: '.$employee_ws.'</td>
							<td>Departamento / Planta: '.$employee_branch.'</td>
						</tr>
						<tr>
							<td>Telefono: '.$employee_phone.'</td>
							<td>Fecha: '.$date_registry.'</td>
						</tr>
					</table>
					<p></p>
					<h1 align="center">Datos del equipo</h1>
					<table border="1" cellpadding="2">
						<tr>
							<td>Tipo: '.$ntype.'</td>
							<td>Marca: '.$nbrand.'</td>
							<td>Modelo: '.$nmodel.'</td>
						</tr>
						<tr>
							<td colspan="1">Serie: '.$nserie.'</td>
							<td colspan="1">Factura: '.$ninvoice.'</td>
							<td colspan="1">Fecha factura: '.$ninvoiceDate.'</td>
						</tr>
						<tr>
							<td colspan="2">Usuario: '.$compUser.preg_replace("/[^0-9]/", '', $id).'</td>
							<td colspan="1">Contraseña: P@ssw0rd</td>
						</tr>
						<tr>
							<td colspan="3">'.$ncomment.'</td>
						</tr>
					</table>
					<p></p>
					<h3 align="center">Politicas de uso</h3>
					<h4 align="center">Equipo de Computo Propiedad de Servicios de Aseguramiento de Calidad Muñing S.C.</h4>

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
					<p>______________________________________
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					______________________________________</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre y Firma de Usuario
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					Nombre y Firma de entrega</p>
					<p>Observaciones: ________________________________________________________________________</p>
					<p>______________________________________________________________________________________</p>
					<p align="center">Favor de enviar este documento firmado y escaneado al correo administrador@mexq.com.mx</p>
					<p></p>
					<p></p>

					<table border="1" cellpadding="2" width="350" weight="210">
						<tr align="center">
							<td colspan="1">
								<img valign="bottom" src="../img/LogoMQ.png" alt="imagenQR" height="50" width="100">
							</td>
							<td colspan="3"><h1>Respaldo de equipo</h1></td>
							<td colspan="1"><img src="../img/QR/'.$fileName.'" alt="imagenQR" height="60" width="60"></td>
						</tr>
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Propiedad: </p></td>
							<td colspan="4"><p>MEXQ (SERV. DE ASEG. DE CALIDAD MUÑING)</p></td>
						</tr>
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Responsable: </p></td>
							<td colspan="4"><p>'.$employee_name." ".$employee_lastname.'</p></td>
						</tr>
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Equipo: </p></td>
							<td colspan="4"><p>'.$ntype.'</p></td>
						</tr>
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Marca: </p></td>
							<td colspan="1"><p>'.$nbrand.'</p></td>						
							<td bgcolor="#B0B0B0" colspan="1"><p>Modelo: </p></td>
							<td colspan="2"><p>'.$nmodel.'</p></td>						
						</tr>		
		
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>No. serie: </p></td>
							<td colspan="2"><p>'.$nserie.'</p></td>
							<td bgcolor="#B0B0B0" colspan="1"><p>No. producto: </p></td>
							<td colspan="2"><p>'.$nproduct.'</p></td>
						</tr>	
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Sucursal / Planta: </p></td>
							<td colspan="4"><p>'.$employee_branch." / ".$employee_ws.'</p></td>
						</tr>				
						<tr>
							<td bgcolor="#B0B0B0" colspan="1"><p>Fecha: </p></td>
							<td colspan="1"><p>'.$date_registry.'</p></td>
							<td bgcolor="#B0B0B0" colspan="1"><p>ID: </p></td>
							<td colspan="2"><p>'.$id.'</p></td>
						</tr>																																		
					</table>
					';
	endwhile;
	$pdf->writeHTML($content, true, 0, true, 0);
	ob_end_clean();
	$pdf->lastPage();
	$pdf->output('Reporte.pdf', 'I');
}

?>