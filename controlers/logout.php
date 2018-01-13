<?php 
	session_start();
	session_destroy();
	$_SESSION = array(); // Clears the $_SESSION variable
	echo "<script> location.href='../'; </script>";
	// echo "<script>window.location.replace('http://mexq.mx/devweb/resguardo/index.php');</script>";
 ?>