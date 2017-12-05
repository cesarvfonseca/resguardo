<?php 
	session_start();
	session_destroy();
	$_SESSION = array(); // Clears the $_SESSION variable
	echo '<script> window.location="../index.php"; </script>';
 ?>