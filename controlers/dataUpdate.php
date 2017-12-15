<?php  
	session_start();
	include "../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnUpdate'])) {
		$txt_codeRegistry = $_POST['txtcodeRegistry'];
		$txt_codemp = $_POST['txtCodeemp'];
		$txt_phone = $_POST['txtPhone'];
		$txt_name = $_POST['txtName'];
		$txt_lastname = $_POST['txtlastName'];
		$txt_position = $_POST['txtPosition'];
		$txt_mail = $_POST['txtEmail'];
		$txt_branch = $_POST['txtBranch'];
		$txt_station = $_POST['txtStation'];

		$txt_type = $_POST['cmType'];
		$txt_status = $_POST['cmStatus'];
		$txt_brand = $_POST['txtBrand'];
		$txt_model = $_POST['txtModel'];
		$txt_serial = $_POST['txtSerie'];
		$txt_product = $_POST['txtProduct'];
		$txt_invoicenbr = $_POST['txtInvoice'];
		$txt_invoicedate = $_POST['txtInvoicedate'];
		$txt_comment = $_POST['txtComment'];
		$txt_date = date('Y-m-d');

		$txtCode = $_POST['txt_rCode'];
		$txtNames = $_POST['txt_rNames'];
		$txtMail = $_POST['txt_rMail'];
		$txtPosition = $_POST['txt_rPosition'];
		$txtBranch = $_POST['txt_rBranch'];
		$txtWS = $_POST['txt_rWS'];
		$txtDate = $_POST['txt_rDate'];

		$updateQuery = $conn->prepare('UPDATE `registry` SET 
										`id_employee`=:idEmp, `name`=:Name,`lastname`=:Lastname, 
										`position`=:Position, `branch`=:Branch,`workstation`=:Ws,
										`mail`=:Mail, `phone`=:Phone, `date`=:Date_,`serial`=:Serial_,
										`product`=:Product, `brand`=:Brand, `model`=:Model,`type`=:Type,
										`invoicenbr`=:Invoicenbr, `invoicedate`=:Invoicedate,`status`=:Status,
										`comment`=:Comment WHERE `code`=:Code');
		$updateQuery->bindValue(':idEmp', $txt_codemp);
		$updateQuery->bindValue(':Name', ucwords(strtolower($txt_name)));
		$updateQuery->bindValue(':Lastname', ucwords(strtolower($txt_lastname)));
		$updateQuery->bindValue(':Position', ucwords(strtolower($txt_position)));
		$updateQuery->bindValue(':Branch', ucwords(strtolower($txt_branch)));
		$updateQuery->bindValue(':Ws', $txt_station);
		$updateQuery->bindValue(':Mail', $txt_mail);
		$updateQuery->bindValue(':Phone', $txt_phone);
		$updateQuery->bindValue(':Date_', $txt_date);
		$updateQuery->bindValue(':Serial_', $txt_serial);
		$updateQuery->bindValue(':Product', $txt_product);
		$updateQuery->bindValue(':Brand', $txt_brand);
		$updateQuery->bindValue(':Model', $txt_model);
		$updateQuery->bindValue(':Type', $txt_type);
		$updateQuery->bindValue(':Invoicenbr', $txt_invoicenbr);
		$updateQuery->bindValue(':Invoicedate', $txt_invoicedate);
		$updateQuery->bindValue(':Status', $txt_status);
		$updateQuery->bindValue(':Comment', $txt_comment);
		$updateQuery->bindValue(':Code', $txt_codeRegistry);

		$updateQuery->execute();

		$updateQuery->closeCursor();

		if (!(strcmp($txt_codemp,$txtCode)==0)) {
			$insertQuery = $conn->prepare('INSERT INTO `history` VALUES (:_Code,:_idEmp,:_Name,:_Position,:_Mail,:_Branch,:_WS,:_initDate,:_finDate);');
			$insertQuery->bindValue(':_Code', $txt_codeRegistry);
			$insertQuery->bindValue(':_idEmp', $txtCode);
			$insertQuery->bindValue(':_Name', $txtNames);
			$insertQuery->bindValue(':_Position', $txtPosition);
			$insertQuery->bindValue(':_Mail', $txtMail);
			$insertQuery->bindValue(':_Branch', $txtBranch);
			$insertQuery->bindValue(':_WS', $txtWS);
			$insertQuery->bindValue(':_initDate', $txtDate);
			$insertQuery->bindValue(':_finDate', $txt_date);

			$insertQuery->execute();
			$insertQuery->closeCursor();
		}

		$conn = null;

		if ($updateQuery) {
			echo "<script>alert('Registro modificado exitosamente!');</script>";
			echo "<script>window.location.replace('http://mexq.mx/devweb/resguardo/index.php');</script>";
			?><meta http-equiv="Location" content="http://mexq.mx/devweb/resguardo"/><?php 
		}else{
			echo "<script>alert('Hubo un error al momento de registrar.');</script>";
			echo "<script>window.location.replace('http://mexq.mx/devweb/resguardo/index.php');</script>";			
		}
	}

?>
