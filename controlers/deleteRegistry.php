<?php 
	session_start();
	include "../database/connection.php";
	$conn = Connect();
	$Dcode = $_REQUEST['dcode'];
	// $deleteQuery = $conn->prepare('DELETE FROM registry WHERE code=:delCode');
	$deleteQuery = $conn->prepare('UPDATE registry SET active=0 WHERE code=:delCode');
	$deleteQuery->bindValue(':delCode', $Dcode);
	$deleteQuery->execute();
	if ($deleteQuery) {
			echo "<script>alert('Registro eliminado!');</script>";
			header('Location: ../index.php');
		}else{
			echo "<script>alert('Hubo un error al momento de eliminar.');</script>";
			header('Location: ../index.php');
		}
 ?>