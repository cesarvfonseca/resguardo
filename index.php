<?php 
	if (empty($_REQUEST['h']))
		$h="0";
	else
		$h=$_REQUEST['h'];
    
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
	<link rel="shortcut icon" href="img/icoMQ.ico">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" rel="stylesheet">

    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>

    <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" media="screen">

</head>
<body>
	<header>
		<?php 
		if (!isset($_SESSION['usr_active']) || empty($_SESSION['usr_active']))
    	{
			include('views/navBaru.php');
		}
		elseif (isset($_SESSION['usr_active']) || !empty($_SESSION['usr_active'])) 
		{
			include('views/navBar.php');
		}

		 ?>
		 <hr>
	</header>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<?php 
    			if (!isset($_SESSION['usr_active']) || empty($_SESSION['usr_active']))
    			{
					include('views/initPage.php');
				}
				else if (!empty($_REQUEST['vcode'])&&$_SESSION['level']=='0') 
				{
					include('views/updRegistry.php');
				}
				else if (!empty($_REQUEST['computer_code'])&&$_SESSION['level']=='0') 
				{
					include('views/support.php');
				}
				else if (!empty($_REQUEST['vcode'])&&$_SESSION['level']!='0')
				{
					include('views/modals/info.php');
				}
				else if (!empty($_REQUEST['id']))//ACTUALIZAR USUARIOS
				{
					include('views/updUser.php');
				}
				else if (!empty($_REQUEST['idD']))//BORRAR USUARIOS
				{
					include('controlers/userDel.php');
				}
				else if (!empty($_REQUEST['supportID']))//ACTUALIZAR USUARIOS
				{
					include('views/edit_support.php');//ACTUALIZA SOPORTE
				}
				else if ($h=='1') 
				{
					include('views/history.php');
					$h='';
				}
				else if ($h=='2') 
				{
					include('views/userControl.php');
					$h='';
				}
				else if ($h=='3') 
				{
					include('controlers/userReg.php');
					$h='';
				}
				else if ($h=='4') 
				{
					include('views/smartphone_view.php');
					$h='';
				}
				else if ($h=='5') 
				{
					include('views/newRegistry.php');
					$h='';
				}
				else if (isset($_SESSION['usr_active']) || !empty($_SESSION['usr_active']))
				{
					include('views/table.php');
				}
				
				?>
			</div>
		</div>
	</div>
	<!-- <p>https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js</p> -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	
    <script src="js/table.js" async defer></script>
    <script src="js/general.js" async defer></script>
    <script src="js/validate.js" async defer></script>
</body>
</html>
