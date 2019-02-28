<?php
header('Content-Type: text/html; charset=UTF-8'); 
setlocale(LC_ALL,"es_ES");
include '../../inc/assets/tcpdf/tcpdf.php';
include '../../inc/assets/phpqrcode/qrlib.php';
include '../../inc/function/connection.php';
$conn = Connect();
$conn -> query("SET NAMES utf8");

$deviceCode = $_GET['deviceCode'];
        $query = "SELECT * FROM `registry` WHERE `registry`.`code` = ?";
        $stmnt = $conn -> prepare($query);
        $stmnt -> bindParam(1, $deviceCode);
        $stmnt -> execute();
        while($row = $stmnt -> fetch(PDO::FETCH_NUM, PDO::FETCH_ORI_NEXT)){
            $data_employeecode = $row[2];
            $data_employeename = $row[3];
            $data_employeposition = $row[4];
            $data_employemail = $row[7];
            $data_employebranch = $row[5];
            $data_employearea = $row[6];
            $data_employephone = $row[8];
            $data_devicebrand = $row[12];
            $data_deliverydate = $row[9];
            $data_devicemodel = $row[13];
            $data_deviceserie = $row[10];
            $data_invoice = $row[15];
            $data_invoicedate = $row[16];
            $data_provider = $row[17];
            $data_comments = $row[19];
            $data_devicetype = $row[14];

            switch ($data_devicetype){
                case 'MQ' : $data_devicetype = 'Laptop'; break;
                case 'PC' : $data_devicetype = 'Desktop'; break;
                case 'MF' : $data_devicetype = 'Multifuncional'; break;
                case 'SP' : $data_devicetype = 'Smartphone'; break;
                default : $data_devicetype = 'N/A'; break;
            }
        }

$fechaActual = date("d/m/Y");

$deviceCode_ = $deviceCode;
$deviceCode = hash('sha512', $deviceCode);
$url = 'http://mexq.mx/resguardo/index.php?deviceCode=';
$textQR = $url.$deviceCode;
$fileName = $deviceCode.".png";
$tempDir = "../../inc/assets/qr/";
$pngAbsoluteFilePath = $tempDir.$fileName;
$urlRelativeFilePath = $fileName;
QRcode::png($textQR, $pngAbsoluteFilePath);

$pdf = new TCPDF('P', 'mm', 'LETTER', true, 'UTF-8', false);
		
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('MEXQ');

$pdf->setPrintHeader(false); 
$pdf->setPrintFooter(false);
$pdf->SetMargins(20, 15, 20, false);
$pdf->SetAutoPageBreak(true, 10); 
$pdf->SetFont('helvetica', '', 9);
$pdf->addPage();

$content = 	'
                <table border="2" cellpadding="1">
                    <tr align="center">
                        <th><img src="../../img/logo_st.png" alt="imagenQR" height="40" width="120"></th>
                        <th>
                            <h4>Servicios de Aseguramiento de Calidad Muñing S.C.</h4>
                            <h5>Carta Responsiva</h5>
                        </th>
                        <th><img src="../../inc/assets/qr/'.$fileName.'" alt="imagenQR" height="60" width="60"></th>
                    </tr>
                </table>
                <p>
                    Por medio de la presente, hago constar que el día '.$fechaActual.' recibí el siguiente equipo para uso del desempeño de mis funciones y actividades asignadas por la empresa MEXQ.
                </p>
                <table border="1" cellpadding="2">
                    <tbody>
                        <tr>
                            <td colspan="2" align="center" bgcolor="#b3b3b3">
                                <b>DATOS DEL RESPONSABLE</b>
                            </td>  
                        </tr>
                        <tr>
                            <td colspan="1">
                                Nomina: '.$data_employeecode.'
                            </td>
                            <td colspan="1">
                                Responsable: '.$data_employeename.'
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">
                                Puesto: '.$data_employeposition.'
                            </td>
                            <td colspan="1">
                                Correo: '.$data_employemail.'
                            </td>   
                        </tr>
                        <tr>
                            <td colspan="1">
                                Sucursal: '.$data_employebranch.'
                            </td>
                            <td colspan="1">
                                Area: '.$data_employearea.'
                            </td>   
                        </tr>
                        <tr>
                            <td colspan="2">
                                Contacto: '.$data_employephone.'
                            </td>  
                        </tr>
                        <tr>
                            <td colspan="2" align="center" bgcolor="#b3b3b3">
                                <b>DATOS DEL EQUIPO</b>
                            </td>  
                        </tr>
                        <tr>
                            <td width="120">
                                Tipo: '.$data_devicetype.'
                            </td>
                            <td width="180">
                                Marca: '.$data_devicebrand.'
                            </td> 
                            <td width="198">
                                Modelo: '.$data_devicemodel.'
                            </td>     
                        </tr>
                        <tr>
                            <td width="265">
                                No. Serie: '.$data_deviceserie.'
                            </td>
                            <td width="125">
                                Usuario: '.$deviceCode_.'
                            </td> 
                            <td width="108">
                                Contraseña: P@ssw0rd
                            </td>     
                        </tr>
                        <tr>
                            <td width="185">
                                Factura: '.$data_invoice.'
                            </td>
                            <td width="185">
                                Fecha Factura: '.$data_invoicedate.'
                            </td> 
                            <td width="128">
                                Proveedor: '.$data_provider.'
                            </td>     
                        </tr>
                        <tr>
                            <td colspan="3">
                                '.$data_comments.'
                            </td>
						</tr>
                    </tbody>
                </table>
                <p></p>
                <p>
                    Los daños causados por mal manejo o imprudencia serán mi responsabilidad y asumo las consecuencias que de esto derive. 
                    Así mismo soy responsable de regresar el equipo al Departamento de TI para la cancelación de este documento. 
                    En caso	de no devolverlo total o parcialmente se me descontara de mi sueldo el costo de reposición según la factura
					de compra, en caso de robo es mi responsabilidad levantar una denuncia ante el Ministerio Publico y
					entregar una copia e informar al Departamento de TI para que se hagan los tramites correspondientes.
                </p>
                <p></p>
                <p>
					______________________________________________
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ______________________________________
                </p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Nombre y Firma del Responsable
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Nombre y Firma de TI
                </p>
                <table border="1" cellpadding="2">
                    <tbody>
                        <tr colspan="2" align="center" bgcolor="#b3b3b3">
                            <td>
                                Observaciones
                            </td>
                        </tr>
                        <tr>
                            <td height="30">
                               
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p></p>

                <p>-    -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   -    -   -   -   -   -   -   -   -   -   -   -   -   -   -   </p>
                
                <table cellpadding="2" width="350">
                    <tbody>
                        <tr>
                            <td border=".1" colspan="5">
                                <img src="../../img/logo_st.png" alt="imagenQR" height="15" width="70">
                       
                                    <b>Propiedad MEXQ</b>
                            </td>
                        </tr>
                        <tr bgcolor="#b3b3b3">
                            <td colspan="3">
                                <b>Responsable</b> '.$data_employeename.'
                            </td>
                            <td colspan="2">
                                <b>Sucursal</b> '.$data_employebranch.'
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">
                                <b>Marca</b> '.$data_devicebrand.'
                            </td>
                            <td colspan="2">
                                <b>Modelo</b> A54U
                            </td>
                            <td colspan="2">
                                <b># Parte</b> A52S554D4D78
                            </td>
                        </tr>
                        <tr bgcolor="#b3b3b3">
                            <td colspan="2">
                                <b>Codigo</b> '.$deviceCode_.'
                            </td>
                            <td colspan="3">
                                <b># Serie</b> '.$data_deviceserie.'
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" border=".1">
                                <b>Fecha</b> '.$data_deliverydate.'
                                <p></p>
                                <b>Sucursal</b> '.$data_employebranch.'
                            </td>
                            <td colspan="2" align="center" border=".1">
                                <img src="../../inc/assets/qr/'.$fileName.'" alt="imagenQR" height="50" width="50">
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p></p>
                <table border="1" cellpadding="2">
                    <tbody>
                        <tr>
                            <td height="40">
                                <img src="../../inc/assets/qr/'.$fileName.'" alt="imagenQR" height="35" width="35">
                                <img src="../../inc/assets/qr/'.$fileName.'" alt="imagenQR" height="35" width="35">
                                <img src="../../inc/assets/qr/'.$fileName.'" alt="imagenQR" height="35" width="35">
                            </td>
                        </tr>
                    </tbody>
                </table>
                ';

$pdf->writeHTML($content, true, 0, true, 0);
ob_end_clean();
$pdf->lastPage();
$pdf->output();
?>