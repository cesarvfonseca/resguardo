<?php

	session_start();
	include "../../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnSave'])) {
		$spId = $_POST['id'];
		$empCode = $_POST['empcode'];
		$empName = ucwords(strtolower($_POST['empname']));
		$empBranch = $_POST['empbranch'];
		$empArea = $_POST['emparea'];
		$spColor = $_POST['spcolor'];
		$spBrand = $_POST['spbrand'];
		$spModel = $_POST['spmodel'];
		$spImei = $_POST['spimei'];
		$spAccount = $_POST['spaccount'];
		$empPhone = $_POST['empphone'];
		$spStatus = $_POST['spstatus'];
		$spComment = $_POST['spcomment'];
		$updTime = date('Y-m-d');

		$lastRegistry = "SELECT SUBSTRING(code_smartphone,3,10)+1 as reg from smartphone ORDER BY id DESC LIMIT 1";
		$query = $conn->query($lastRegistry);
		while ($r=$query->fetch()):
			$idr=$r["reg"];
		endwhile;
		$spCode = "SP".$idr;



		$insertQry = $conn->prepare ('INSERT INTO `smartphone`(`code_smartphone`, `employee_code`, `employee_name`, `branch`, `area`, `color`, `brand`, `model`, `imei`, `account`, `phone_number`, `status`, `comment`, `deliver_date`, `update_time`) VALUES (:spCode_,:empCode_,:empName_,:empBranch_,:empArea_,:spColor_,:spBrand_,:spModel_,:spImei_,:spAccount_,:empPhone_,:spStatus_,:spComment_,:updTime_,:updTime_)');
		$insertQry->bindValue(':spCode_', $spCode);
		$insertQry->bindValue(':empCode_', $empCode);
		$insertQry->bindValue(':empName_', $empName);
		$insertQry->bindValue(':empBranch_', $empBranch);
		$insertQry->bindValue(':empArea_', $empArea);
		$insertQry->bindValue(':spColor_', $spColor);
		$insertQry->bindValue(':spBrand_', $spBrand);
		$insertQry->bindValue(':spModel_', $spModel);
		$insertQry->bindValue(':spImei_', $spImei);
		$insertQry->bindValue(':spAccount_', $spAccount);
		$insertQry->bindValue(':empPhone_', $empPhone);
		$insertQry->bindValue(':spStatus_', $spStatus);
		$insertQry->bindValue(':spComment_', $spComment);
		$insertQry->bindValue(':updTime_', $updTime);

		$insertQry->execute();

		$insertQry->closeCursor();

		$conn = null;
	}elseif (isset($_POST['btnAdd'])) {
		$spId = $_POST['id'];
		$empCode = $_POST['empcode'];
		$empName = ucwords(strtolower($_POST['empname']));
		$empBranch = $_POST['empbranch'];
		$empArea = $_POST['emparea'];
		$spColor = $_POST['spcolor'];
		$spBrand = $_POST['spbrand'];
		$spModel = $_POST['spmodel'];
		$spImei = $_POST['spimei'];
		$spAccount = $_POST['spaccount'];
		$empPhone = $_POST['empphone'];
		$spStatus = $_POST['spstatus'];
		$spComment = $_POST['spcomment'];
		$updTime = date('Y-m-d');
		$spCode = $_POST['spcode'];



		$insertQry = $conn->prepare ('INSERT INTO `smartphone`(`code_smartphone`, `employee_code`, `employee_name`, `branch`, `area`, `color`, `brand`, `model`, `imei`, `account`, `phone_number`, `status`, `comment`, `deliver_date`, `update_time`) VALUES (:spCode_,:empCode_,:empName_,:empBranch_,:empArea_,:spColor_,:spBrand_,:spModel_,:spImei_,:spAccount_,:empPhone_,:spStatus_,:spComment_,:updTime_,:updTime_)');
		$insertQry->bindValue(':spCode_', $spCode);
		$insertQry->bindValue(':empCode_', $empCode);
		$insertQry->bindValue(':empName_', $empName);
		$insertQry->bindValue(':empBranch_', $empBranch);
		$insertQry->bindValue(':empArea_', $empArea);
		$insertQry->bindValue(':spColor_', $spColor);
		$insertQry->bindValue(':spBrand_', $spBrand);
		$insertQry->bindValue(':spModel_', $spModel);
		$insertQry->bindValue(':spImei_', $spImei);
		$insertQry->bindValue(':spAccount_', $spAccount);
		$insertQry->bindValue(':empPhone_', $empPhone);
		$insertQry->bindValue(':spStatus_', $spStatus);
		$insertQry->bindValue(':spComment_', $spComment);
		$insertQry->bindValue(':updTime_', $updTime);

		$insertQry->execute();

		$insertQry->closeCursor();

		$conn = null;
	}

	if ($insertQry) {
		?>
			<SCRIPT LANGUAGE="javascript"> 
         		alert("Equipo Guardado"); 
	     	</SCRIPT> 
	     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=smartP">
		<?php
	}else{
		?>
			<SCRIPT LANGUAGE="javascript"> 
         		alert("Hubo un error al guardar el equipo"); 
	     	</SCRIPT> 
	     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=smartP">
		<?php
	}

?>	



