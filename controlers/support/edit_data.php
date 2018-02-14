<?php 

	if (isset($_POST['btnUpdSupport'])) 
	{
		$errors='';
		session_start();
		include "../../database/connection.php";
		$conn = Connect();

		$agent = $_SESSION["whoIs"];
		$idSupport = $_POST['txtID_Support'];
		$reason = $_POST['cmbReason'];
		$status = $_POST['cmbStatus'];
		$comment = $_POST['txtOther'];
		$supportDate = $_POST['txtSupportDate'];
		$description = $_POST['txtDesc'];

		if ($errors=='') 
		{
			$updateData = $conn->prepare('UPDATE `support` SET `reason`=:reason_,`comment`=:comment_,`description`=:description_,`support_date`=:supportDate_,`agent`=:agent_,`status`=:status_ WHERE `id`=:idSupport_');

			$updateData->bindValue(':reason_',$reason);
			$updateData->bindValue(':comment_',$comment);
			$updateData->bindValue(':description_',$description);
			$updateData->bindValue(':supportDate_',$supportDate);
			$updateData->bindValue(':agent_',$agent);
			$updateData->bindValue(':status_',$status);
			$updateData->bindValue(':idSupport_',$idSupport);
			$updateData->execute();

		if ($updateData) 
		{
			sleep(1);
			?>
				<script type="text/javascript">
					window.history.go(-2);
				</script>
			<?php
		}
		else
		{
			sleep(5);
			?>
				<script type="text/javascript">
					window.history.go(-2);
				</script>
			<?php 
		}
		}
	}

 ?>