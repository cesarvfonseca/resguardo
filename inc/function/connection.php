<?php 

	function Connect(){
		$db_host		= 'localhost';
		// $db_user		= 'mexqmx_ti2';
		// $db_pass		= 'ibTM;.&gHj8r';
		// $db_database	= 'mexqmx_resguardo'; 

		$db_user		= 'root';
		$db_pass		= '';
		$db_database	= 'resguardo'; 

		try{
			$conn = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES  \'UTF8\''));
			// $conn = new PDO('mysql:host=localhost;dbname='.$db_database.'', $db_user, $db_pass, array(
			// 	PDO::ATTR_PERSISTENT => truelocal
			// ));
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}catch(PDOException $e){
			echo "ERROR: " . $e->getMessage();
		}

		return $conn;

	}

 ?>