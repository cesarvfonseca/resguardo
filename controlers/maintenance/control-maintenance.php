	<?php 
	header("Content-type: application/json;charset=utf8");
	session_start();
	include "../../database/connection.php";
	$conn = Connect();

	$dateUpdate = date('Y-m-d');
	$userUpdate = $_SESSION["whoIs"];

	if(isset($_POST['btn_Send'])):

		foreach ($_POST['computer_code'] as $computerCode) :
		   	$employeeCode = '';
            $employeeName = '';
            $employeeMail = '';

            $getData = "SELECT * FROM `registry` WHERE `code` = '".$computerCode."'";
            if ($result = $conn->query($getData)) {
                $row = $result->fetch();
                $employeeCode = $row[2];
                $employeeName = $row[3];
                $employeeMail = $row[7];
            }

            $insertQry = $conn->prepare('INSERT INTO `maintenance`(`computer_code`, `employee_code`, `maintenance_date`, `maintenance_apply`, `comments`, `status`, `user_update`, `date_update`) 
                                 VALUES (:computerCode_,:employeeCode_,:maintenanceDate_,:maintenanceApply_,:Comment_,:status_,:userUpdate_,:dateUpdate_)');

            $insertQry->bindValue(':computerCode_', $computerCode);
            $insertQry->bindValue(':employeeCode_', $employeeCode);
            $insertQry->bindValue(':maintenanceDate_', $dateUpdate);
            $insertQry->bindValue(':maintenanceApply_', $dateUpdate);
            $insertQry->bindValue(':Comment_', $employeeName);
            $insertQry->bindValue(':status_', '1');
            $insertQry->bindValue(':userUpdate_', $userUpdate);
            $insertQry->bindValue(':dateUpdate_', $dateUpdate);
            $insertQry->execute();

		endforeach;


		if ($insertData) {
			header("Location: ../../index.php?h=maintenance");
			exit();
		}else{
			sleep(3);
			header("Location: ../../index.php?h=maintenance");
			exit();
		}
	endif;
	?>