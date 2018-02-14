<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tabla</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">	
</head>
<body>

<?php 
	
	include_once 'database/connection.php';
	$conn = Connect();

	$sql = "SELECT code FROM `registry` WHERE `registry`.`status`='A'";
	$execSQL = $conn->query($sql);
	?>
		<div class="form-group"> 
			<label class="col-xs-4 control-label">Equipos</label>
			<div class="col-xs-5 selectContainer">
	<?php
	while ($row = $execSQL->fetch()){
	    // echo "<input type='checkbox' code='students[]' value='".$row['code']."'>".$row['code'];
	        ?>
						<label class="custom-control custom-checkbox">
						  <input type="checkbox" class="custom-control-input" name="<?php echo $row['code']; ?>" value="<?php echo $row['code']; ?>">
						  <span class="custom-control-indicator"></span>
						  <span class="custom-control-description"><?php echo $row['code']; ?></span>
						</label>
	        <?php
	}
	?>
			</div>
		</div>
	<?php

 ?>
	<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>‌​
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
 </body>
</html>
