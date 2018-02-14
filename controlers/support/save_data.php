<?php 
	if (isset($_POST['btnSave'])) {
		$errors='';
		session_start();
		include "../../database/connection.php";
		$conn = Connect();

		$agent = $_SESSION["whoIs"];
		$computerCode = $_POST['txtcomputerCode'];
		$employeeCode = $_POST['txtEmpCode'];
		$employeeName = $_POST['txtEmpName'];
		$reason = $_POST['cmbReason'];
		$status = $_POST['cmbStatus'];
		$comment = $_POST['txtOther'];
		$supportDate = $_POST['txtSupportDate'];
		$description = $_POST['txtDesc'];

		if ($errors=='') 
		{
			$insertData = $conn->prepare('INSERT INTO `support`
												(`computer_code`, `employee_code`, `employee_name`, `reason`, `comment`, `description`, `support_date`,`agent`, `status`)
											VALUES (:computerCode_,:employeeCode_,:employeeName_,:reason_,:comment_,:description_,:supportDate_,:agent_,:status_)');

			$insertData->bindValue(':computerCode_',$computerCode);
			$insertData->bindValue(':employeeCode_',$employeeCode);
			$insertData->bindValue(':employeeName_',$employeeName);
			$insertData->bindValue(':reason_',$reason);
			$insertData->bindValue(':comment_',$comment);
			$insertData->bindValue(':description_',$description);
			$insertData->bindValue(':supportDate_',$supportDate);
			$insertData->bindValue(':agent_',$agent);
			$insertData->bindValue(':status_',$status);
			$insertData->execute();

			if ($insertData) {
				// sleep(2);
				header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR 
			}else{
				sleep(2);
				header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
			}
			}

		}
		else
		{
			header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
		}
	
 ?>