<?php 
	header("Content-type: application/json;charset=utf8");
	session_start();
	include "../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnSave'])) {

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

		$lastRegistry = "SELECT SUBSTRING(code,3,10)+1 as reg from registry where type='".$txt_type."' ORDER BY id DESC LIMIT 1";
		$query = $conn->query($lastRegistry);
		while ($r=$query->fetch()):
			$idr=$r["reg"];
		endwhile;
		$txt_code = $txt_type.$idr;

		$insertQuery = $conn->prepare('INSERT INTO `registry`
		(`code`, `id_employee`, `name`, `lastname`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`) 
		VALUES 
		(:Code,:idEmp,:Name,:Lastname,:Position,:Branch,:Ws,:Mail,:Phone,:Date_,:Serial_,:Product,:Brand,:Model,:Type,:Invoicenbr,:Invoicedate,:Status,:Comment);');
		$insertQuery->bindValue(':Code', $txt_code);
		$insertQuery->bindValue(':idEmp', $txt_codemp);
		$insertQuery->bindValue(':Name', utf8_encode($txt_name));
		$insertQuery->bindValue(':Lastname', utf8_encode($txt_lastname));
		$insertQuery->bindValue(':Position', $txt_position);
		$insertQuery->bindValue(':Branch', $txt_branch);
		$insertQuery->bindValue(':Ws', $txt_station);
		$insertQuery->bindValue(':Mail', $txt_mail);
		$insertQuery->bindValue(':Phone', $txt_phone);
		$insertQuery->bindValue(':Date_', $txt_date);
		$insertQuery->bindValue(':Serial_', $txt_serial);
		$insertQuery->bindValue(':Product', $txt_product);
		$insertQuery->bindValue(':Brand', $txt_brand);
		$insertQuery->bindValue(':Model', $txt_model);
		$insertQuery->bindValue(':Type', $txt_type);
		$insertQuery->bindValue(':Invoicenbr', $txt_invoicenbr);
		$insertQuery->bindValue(':Invoicedate', $txt_invoicedate);
		$insertQuery->bindValue(':Status', $txt_status);
		$insertQuery->bindValue(':Comment', $txt_comment);
		$insertQuery->execute();
		if ($insertQuery) {
			echo "<script>alert('Registro exitoso!');</script>";
			header('Location: ../index.php');
		}else{
			echo "<script>alert('Hubo un error al momento de registrar.');</script>";
			header('Location: ../index.php');
		}
	}	
 ?>
