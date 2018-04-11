<?php 
	include_once 'database/connection.php';
	$conn = Connect();
	$sql = "SELECT * FROM `user`";
	$execSQL = $conn->query($sql);
	$array = array();
	while ($row = $execSQL->fetch())
	{
		$employee_name = utf8_encode($row['employee_name']);
		array_push($array, $employee_name);//Guardar nombre de empleados
	}
 ?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Autocomplete</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<link rel="stylesheet" href="css/jquery-ui.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">	
</head>
<body>
	<input type="text" id="tag">

	<script type="text/javascript">
		var items = <?= json_encode($array) ?>

		$('#tag').autocomplete({
			source: items
		});
	</script>
</body>
</html>