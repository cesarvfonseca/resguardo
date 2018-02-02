<?php 
	session_start();
	include "../database/connection.php";
	$conn = Connect();
	$Dcode = $_REQUEST['idD'];
	if ($Dcode=='1') 
	{
		echo "<script>alert('El usuario Administardor no se puede eliminar.');</script>";
		header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
	}
	else
	{
	// $deleteQuery = $conn->prepare('DELETE FROM registry WHERE code=:delCode');
	$deleteQuery = $conn->prepare('DELETE FROM user WHERE id=:ID');
	$deleteQuery->bindValue(':ID', $Dcode);
	$deleteQuery->execute();
	if ($deleteQuery) 
	{
			echo "<script>alert('Registro eliminado!');</script>";
			header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
		}
		else
		{
			echo "<script>alert('Hubo un error al momento de eliminar.');</script>";
			header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
		}
	}
 ?>