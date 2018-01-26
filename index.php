<?php 
	if (empty($_REQUEST['h'])) {
		$h="2";
	}else{
		$h=$_REQUEST['h'];
	}
    
	session_start();
	include 'database/connection.php';
 ?>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Registro de equipos</title>
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous"> -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
	<link rel="shortcut icon" href="img/icoMQ.ico">
    <!-- <link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" rel="stylesheet"> -->
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">

    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
</head>
<body>
	<header>
		<?php 
			include('views/navBar.php')
		 ?>
		 <hr>
	</header>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<?php 
    			if (!isset($_SESSION['usr_active']) || empty($_SESSION['usr_active'])){
					include('views/initPage.php');
				}else if (!empty($_REQUEST['vcode'])) {
					include('views/updRegistry.php');
				}else if ($h=='1') {
					include('views/history.php');
				}else{
					include('views/table.php');
				}
				
				?>
			</div>
		</div>
	</div>
	<!-- <p>https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js</p> -->
	<script src="js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/table.js" async defer></script>
</body>
</html>
