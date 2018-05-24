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

	$sql = "SELECT * FROM `registry` WHERE `registry`.`status`='A' AND `registry`.`branch`='CORPORATIVO'";
	$execSQL = $conn->query($sql);
	?>
	<div class="form-group"> 
		<form action="test2.php" method="post">
			<label class="col-xs-4 control-label">Equipos</label>
			<div class="col-xs-5 selectContainer">
				<?php
				while ($row = $execSQL->fetch())
				{
					?>
						<div class="col-xs-12">
							<div class="card text-white bg-dark mb-2" style="max-width: 18rem;">
								<div class="card-header"> 
									<label class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" name="computer_code[]" value="<?php echo $row['code']; ?>">
										<span class="custom-control-indicator"></span>
										<span class="custom-control-description">Equipo <?php echo $row['code']; ?></span>
									</label>
								</div>
								<div class="card-body">
									<p class="card-text">
										<?php echo $row['employee_name']; ?>
									</p>
									<p class="card-text">
										<?php echo $row['mail']; ?>
									</p>
								</div>
							</div>
						</div>
					<?php
				}
				?>		
			</div>
			<div class="col-xs-6">
				<div class="form-group">
					<small class="form-text text-muted">Fecha mantenimiento</small>
					<input class="form-control" type="date" name="maintenance_date" id="maintenance_date">
				</div>									
			</div>	

			<button type="submit" class="btn btn-primary btn-block" data-callback="onSubmit" name="btnSend" id="btnSend">
				Enviar  	2
				<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
			</button>
		</form>
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
