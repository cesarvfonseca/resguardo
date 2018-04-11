<?php 

	if (isset($_POST['btnUpdUser'])) {
		$errors='';
		session_start();
		include "../database/connection.php";
		$conn = Connect();

		$txt_id = $_POST['txtID'];
		$txt_employeeid = $_POST['txtNomina'];
		$txt_name = ucwords(strtolower($_POST['txtName']));
		$txt_position = strtoupper($_POST['txtPosition']);
		$txt_branch = strtoupper($_POST['txtBranch']);
		$txt_area = strtoupper($_POST['txtArea']);
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
			$updateData = $conn->prepare('UPDATE `user` SET `login`=:Login,`pwd`=:Pwd,`employee_id`=:Employeeid,`employee_name`=:Name,`employee_position`=:Position,`employee_branch`=:Branch,`employee_area`=:Area,`roll`=:Roll WHERE `id`=:ID');

			$updateData->bindValue(':ID',$txt_id);
			$updateData->bindValue(':Login',$txt_user);
			$updateData->bindValue(':Pwd',$txt_pass1);
			$updateData->bindValue(':Employeeid',$txt_employeeid);
			$updateData->bindValue(':Name',$txt_name);
			$updateData->bindValue(':Position',$txt_position);
			$updateData->bindValue(':Branch',$txt_branch);
			$updateData->bindValue(':Area',$txt_area);
			$updateData->bindValue(':Roll',$txt_roll);
			$updateData->execute();

		if ($updateData) {
			sleep(1);
			?>
				<script type="text/javascript">
					window.history.go(-2);
				</script>
			<?php  
		}else{
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