<?php 
	session_start();
	include "../database/connection.php";
	$conn = Connect();
	$Dcode = $_REQUEST['dcode'];
	$date_update=date('Y-m-d H:i:s');
	$user_update = $_SESSION["whoIs"];
	// $deleteQuery = $conn->prepare('DELETE FROM registry WHERE code=:delCode');
	$deleteQuery = $conn->prepare('UPDATE `registry` SET `active`=0,`date_update`=:Date_update,`user_update`=:User_update WHERE `code`=:delCode');
	$deleteQuery->bindValue(':delCode', $Dcode);
	$deleteQuery->bindValue(':Date_update', $date_update);
	$deleteQuery->bindValue(':User_update', $user_update);
	$deleteQuery->execute();
	if ($deleteQuery) {
			echo "<script>alert('Registro ".$Dcode." eliminado!');</script>";
			echo "<script> location.href='../'; </script>";	
		}else{
			echo "<script>alert('Hubo un error al momento de eliminar.');</script>";
			echo "<script> location.href='../'; </script>";	
		}
 ?>