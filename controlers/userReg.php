<?php 
	if(isset($_POST['btnSave']))
	{
		$errors='';
		header("Content-type: application/json;charset=utf8");
		session_start();
		include "../database/connection.php";
		$conn = Connect();

		$txt_nomina = $_POST['nomina'];
		$txt_name = $_POST['nombres'];
		$txt_lastname = $_POST['apellidos'];
		$txt_user= $_POST['usuario'];
		$txt_roll = $_POST['roll'];
		$txt_pass1 = $_POST['password'];
		$txt_pass2 = $_POST['password2'];

		$txt_pass1 = hash('sha512',$txt_pass1);
		$txt_pass2 = hash('sha512',$txt_pass2);
		if($txt_pass2 != $txt_pass1)
		{
			$errors .= '<li>Las contraseñas no son iguales</li>';
			header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
		}

		if ($errors=='') 
		{
			$insertData = $conn->prepare('INSERT INTO `user`(`login`, `pwd`, `employee_id`, `name`, `lastname`, `roll`) 
											VALUES (:Login,:Pwd,:Nomina,:Name,:Lname,:Roll)');

			$insertData->bindValue(':Login',$txt_user);
			$insertData->bindValue(':Pwd',$txt_pass1);
			$insertData->bindValue(':Nomina',$txt_nomina);
			$insertData->bindValue(':Name',$txt_name);
			$insertData->bindValue(':Lname',$txt_lastname);
			$insertData->bindValue(':Roll',$txt_roll);
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