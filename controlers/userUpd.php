<?php 

	if (isset($_POST['btnUpdUser'])) {
		$errors='';
		session_start();
		include "../database/connection.php";
		$conn = Connect();

		$txt_id = $_POST['txtID'];
		$txt_name = $_POST['txtName'];
		$txt_lastname = $_POST['txtlastName'];
		$txt_user= $_POST['txtUser'];
		$txt_roll = $_POST['cmRol'];
		$txt_pass1 = $_POST['txtPass1'];
		$txt_pass2 = $_POST['txtPass2'];

		$txt_pass1 = hash('sha512',$txt_pass1);
		$txt_pass2 = hash('sha512',$txt_pass2);
		if($txt_pass2 != $txt_pass1)
		{
			$errors .= '<li>Las contraseñas no son iguales</li>';
			header('Location: ' . $_SERVER['HTTP_REFERER']);//REGESAR A LA PAGINA ANTERIOR
		}

		if ($errors=='') 
		{
			$updateData = $conn->prepare('UPDATE `user` SET `login`=:Login,`pwd`=:Pwd,`name`=:Name,`lastname`=:Lname,`roll`=:Roll WHERE `id`=:ID');

			$updateData->bindValue(':ID',$txt_id);
			$updateData->bindValue(':Login',$txt_user);
			$updateData->bindValue(':Pwd',$txt_pass1);
			$updateData->bindValue(':Name',$txt_name);
			$updateData->bindValue(':Lname',$txt_lastname);
			$updateData->bindValue(':Roll',$txt_roll);
			$updateData->execute();

		if ($updateData) {
			// sleep(2);
			header('Location: ../');  
		}else{
			sleep(2);
			header('Location: ../'); 
		}
		}
		

	}

 ?>