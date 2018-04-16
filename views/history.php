<?php 
	// header('Content-Type: text/html; charset=UTF-8');
	include_once 'database/connection.php';
	include 'views/modals/newRegistry.php';
	include 'views/modals/info.php';

	$conn = Connect();

	$stmQuery = "SELECT * FROM history ORDER BY fin_date desc,code";
	$execQuery = $conn -> query($stmQuery);?>
	
	<div class="container-fluid">
		<div  class="page-header">
			<h1>Historial de equipos<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>
		</div>
		<hr>
			<?php 
				if ($execQuery->rowCount()>0) {
			?>
					<div class="col-md-12">
						<br>
						<table id="example" class="table table-striped" >  
						<thead class="thead-inverse">
							<th>Codigo</th>
							<th>Nomina</th>
							<th>Nombres</th>
							<th>Puesto</th>
							<th>Correo</th>
							<th>Sucursal</th>
							<th>Area</th>
							<th>Fecha inicio</th>
							<th>Fecha de entrega</th>						
						</thead>
						<?php 
							while ($r = $execQuery->fetch()):
						 ?>	
							<tr>
								<td><?php echo $r ["code"]; ?></td>
								<td><?php echo $r ["id_employee"]; ?></td>
								<td><?php echo $r ["names"]; ?></td>
								<td><?php echo $r ["position"]; ?></td>
								<td><?php echo $r ["mail"]; ?></td>
								<td><?php echo $r ["branch"]; ?></td>
								<td><?php echo $r ["workstation"]; ?></td>
								<td><?php echo $r ["init_date"]; ?></td>
								<td><?php echo $r ["fin_date"]; ?></td>
							</tr>
							<?php 
								endwhile;
							 ?>
					</div>
			<?php 
				}else{
			 ?>
			 <p class="alert alert-warning">There isn´t data allow</p>
			 <?php 
			 	}
			  ?>
	</div>