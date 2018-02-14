<?php

	session_start();
	include "../../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnEdit'])) {
		$spId = $_POST['id'];
		$spCode = $_POST['spcode'];
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

		$updateQry = $conn->prepare('UPDATE `smartphone` SET `employee_code`=:empCode_,`employee_name`=:empName_,`branch`=:empBranch_,`area`=:empArea_,`color`=:spColor_,
						`brand`=:spBrand_,`model`=:spModel_,`imei`=:spImei_,`account`=:spAccount_,`phone_number`=:empPhone_,`status`=:spStatus_,
						`comment`=:spComment_,`update_time`=:updTime_ WHERE `id`=:spId_');
		$updateQry->bindValue(':empCode_', $empCode);
		$updateQry->bindValue(':empName_', $empName);
		$updateQry->bindValue(':empBranch_', $empBranch);
		$updateQry->bindValue(':empArea_', $empArea);
		$updateQry->bindValue(':spColor_', $spColor);
		$updateQry->bindValue(':spBrand_', $spBrand);
		$updateQry->bindValue(':spModel_', $spModel);
		$updateQry->bindValue(':spImei_', $spImei);
		$updateQry->bindValue(':spAccount_', $spAccount);
		$updateQry->bindValue(':empPhone_', $empPhone);
		$updateQry->bindValue(':spStatus_', $spStatus);
		$updateQry->bindValue(':spComment_', $spComment);
		$updateQry->bindValue(':updTime_', $updTime);
		$updateQry->bindValue(':spId_', $spId);

		$updateQry->execute();

		$updateQry->closeCursor();

		$conn = null;
	}

	if ($updateQry) {
		?>
			<SCRIPT LANGUAGE="javascript"> 
         		alert("Equipo Actualizado"); 
	     	</SCRIPT> 
	     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=4">
		<?php
	}else{
		?>
			<SCRIPT LANGUAGE="javascript"> 
         		alert("Hubo un error al actualizar el equipo"); 
	     	</SCRIPT> 
	     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=4">
		<?php
	}

?>	



