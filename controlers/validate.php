<?php 
	include_once '../database/connection.php';
	$conn = Connect();
	session_start();
	echo "<script>('Iniciando sesion...')</script>";
	if (isset($_POST['btnLogin'])) {
		$txtuser = $_POST['txtUsername'].'@mexq.com.mx';
		$txtpwd = $_POST['txtPassword'];
		$txtpwd = hash('sha512',$txtpwd);

		$stQuery = "SELECT * FROM `user` WHERE login='$txtuser' AND pwd='$txtpwd'";
		$execSelect = $conn->query($stQuery);
		if ($execSelect->rowCount()>0) {
			$row = $execSelect->fetch(PDO::FETCH_ASSOC);
			$_SESSION["usr_active"]=before ('@', $row['login']);
			$_SESSION["whoIs"]=$row['employee_name'];
			$_SESSION["level"]=$row['roll'];
			$_SESSION["empID"]=$row['employee_id'];
			echo '<script> alert("Iniciando sesion de '.$_SESSION['whoIs'].'");</script>';
			echo "<script> location.href='../'; </script>";
			// echo "<script>window.location.replace('http://mexq.mx/devweb/resguardo/');</script>";
		}else{
			echo '<script> alert("Usuario y/o contraseña incorrectos.");</script>';
			echo "<script> location.href='../'; </script>";
			// echo "<script>window.location.replace('http://mexq.mx/devweb/resguardo/');</script>";
		}
	}

	function before ($this, $inthat)
    {
        return substr($inthat, 0, strpos($inthat, $this));
    };

 ?>