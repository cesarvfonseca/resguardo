	<?php 
	$errors='';
	header("Content-type: application/json;charset=utf8");
	session_start();
	include "../../database/connection.php";
	$conn = Connect();

	$txt_branch= $_POST['txtBranch'];
	$txt_mail = $_POST['txtMail'];
	$txt_pass = $_POST['pwd'];
	$txt_date = date('Y-m-d');
	
	$agent = $_SESSION["whoIs"];

	$delete_AccountID = $_REQUEST['idAccount'];

	if(isset($_POST['btnDatasend']))
	{

		$insertData = $conn->prepare('INSERT INTO `accounts`(`branch`, `account`, `pwd`, `update_date`, `update_user`) 
			VALUES (:Branch,:Account,:Pwd,:Update_date,:Update_user)');

		$insertData->bindValue(':Branch',$txt_branch);
		$insertData->bindValue(':Account',$txt_mail);
		$insertData->bindValue(':Pwd',$txt_pass);
		$insertData->bindValue(':Update_date',$txt_date);
		$insertData->bindValue(':Update_user',$agent);

		$insertData->execute();

		if ($insertData) {
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}else{
			sleep(3);
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}
	}elseif (isset($_POST['btnDatau'])) {
		$txt_ID= $_POST['txtID'];

		$updateData = $conn->prepare('UPDATE `accounts` SET `branch`=:Branch,`account`=:Account,`pwd`=:Pwd,`update_date`=:Update_date,`update_user`=:Update_user WHERE `id`=:ID');

		$updateData->bindValue(':Branch',$txt_branch);
		$updateData->bindValue(':Account',$txt_mail);
		$updateData->bindValue(':Pwd',$txt_pass);
		$updateData->bindValue(':Update_date',$txt_date);
		$updateData->bindValue(':Update_user',$agent);
		$updateData->bindValue(':ID',$txt_ID);

		$updateData->execute();

		if ($updateData) {
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}else{
			sleep(3);
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}
	}elseif (!empty($delete_AccountID)) {
		$deleteData = $conn->prepare('DELETE FROM accounts WHERE id=:ID');
		$deleteData->bindValue(':ID', $delete_AccountID);
		$deleteData->execute();
		if ($deleteData) 
		{
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}
		else
		{
			sleep(3);
			header("Location: ../../index.php?h=gAccounts");
			exit();
		}
	}
	else
	{
		header("Location: ../../index.php?h=gAccounts");
		exit();
	}
	?>