<?php 
/*
PARA PRODUCCION
	$connection = mysql_connect("localhost", "mexqmx_developer", "n&Wi1UG[RNwo");
	mysql_select_db("mexqmx_resguardo", $connection);
*/
	$connection = mysql_connect("localhost", "root", "");
	mysql_select_db("resguardo", $connection);
	mysql_set_charset("utf8");

	$empID = $_GET['equipo'];
	$sql = "SELECT * FROM registry WHERE id_employee = '".$empID."' LIMIT 1";
	$result = mysql_query($sql, $connection);
	if (mysql_num_rows($result) > 0) {
		$equipo = mysql_fetch_object($result);
		$equipo->status = 200;
		echo json_encode($equipo);
	}else{
		$error = array('status' => 400);
		echo json_encode((object)$error);
	}
 ?>