<?php 

include_once 'database/connection.php';

include 'views/modals/newRegistry.php';

include('modals/edit_mq.php');

include 'views/modals/info.php';



$status_colors = array('I' => '#ff0000');

$font_colors = array('I' => '#ffff00');



$conn = Connect();

$empID = $_SESSION["empID"];

$empName = $_SESSION["whoIs"];

?>

<div  class="page-header">

	<h1>Mantenimiento de equipos<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>

</div>



<div class="row-fluid">

	<br>

	<div class="col-md-12">

		<?php 
			if ($_SESSION['level']=='0'){
		?>

			<a href="index.php?h=newRegistry" class="btn btn-md btn-success">
				<i class="fas fa-plus-circle"></i> 
				Agregar Equipo
			</a>

	</div>

	<?php 
		}
	 ?>

	<br>

			<?php 

			$stmSelect = "SELECT * FROM `registry` WHERE `registry`.`type`<>'MF' AND `registry`.`active`='1' AND `registry`.`status`<>'I' ORDER BY `registry`.`status` ASC,`registry`.`date_update` DESC";

			$execSelect = $conn->query($stmSelect);

			if ($execSelect->rowCount()>0) {

			?>
			<form action="controlers/maintenance/control-maintenance.php" method="post">
				<div class="row">

					<div class="col-md-12">

						<br>

						<h1>Equipos de Cómputo</h1>

						<div class="table table-sm table-bordered table-hover table-striped">

							<br>

							<table id="example" class="stripe row-border order-column" cellspacing="2" width="100%"> 

								<thead class="thead-inverse">

									<th>#</th>

									<th>Codigo</th>

									<th>Nomina</th>

									<th>Nombres</th>

									<th>Sucursal</th>

									<th>Area</th>

									<th>Estado</th>


								</thead>

								<?php 

								$count=1;

								while ($row = $execSelect->fetch()):

									?>

								<tr style="background-color: <?php echo $status_colors[$row ["status"]];?>; color: <?php echo $font_colors[$row ["status"]];?>">


									<td>
									
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input" name="computer_code[]" value="<?php echo $row['code']; ?>">
											<span class="custom-control-indicator"></span>
											<span class="custom-control-description"><?php echo $count ?></span>
										</label>
										
									</td>

									<!-- <td><?php echo $count ?></td> -->
									
									<td><?php echo $row ["code"]; ?></td>

									<td><?php echo $row ["id_employee"]; ?></td>

									<td><?php echo $row ["employee_name"]; ?></td>

									<td><?php echo $row ["branch"]; ?></td>

									<td><?php echo $row ["workstation"]; ?></td>

									<td>
										<?php 
										if ($row ["status"]=='A') {
											echo "Activo";
										}elseif ($row ["status"]=='I') {
											echo "Baja";
										}elseif ($row ["status"]=='X') {
											echo "Soporte";
										}
										?>
									</td>

									</tr>

									<?php 

									$count++;

									endwhile;

									?>

								</table>

							</div>

						</div>

					</div>

					<div class="row">

						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block btn-lg" data-callback="onSubmit" name="btn_Send" id="btn_Send">
								Programar mantenimiento
								<i class="fa fa-paper-plane-o"></i>
							</button>
						</div>

					</div>
				</form>

				<?php

			}else{ ?>

			<br>

			<p class="alert alert-warning">No hay datos disponibles para <?php echo $empName; ?></p>

		<?php 

		}

		?>
</div>


