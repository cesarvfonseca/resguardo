<?php 

include_once 'database/connection.php';

$status_colors = array('I' => '#ff0000');

$font_colors = array('I' => '#ffff00');

$conn = Connect();

?>

<div  class="page-header">

	<h1>Soporte técnico a equipos<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>

</div>



<div class="row-fluid">

	<br>

			<?php 


			$stmSelect = "SELECT * FROM `support` ORDER BY `computer_code` ASC";

			$execSelect = $conn->query($stmSelect);

			if ($execSelect->rowCount()>0) {

			?>

			<div class="row">

				<div class="col-md-12">

					<br>

					<h1>Equipos de Cómputo</h1>

					<div class="table table-sm table-bordered table-hover table-striped">

						<br>

						<table id="example" class="stripe row-border order-column" cellspacing="0" width="100%"> 

							<thead class="thead-inverse">

								<th>Equipo</th>

								<th>Responsable</th>

								<th>Razon</th>

								<th>Causa</th>

								<th>Descripción</th>

								<th>Fecha</th>

								<th>Agente</th>						

								<th>Estado</th>

								<!-- <th width="7%">Acciones</th> -->

							</thead>

							<?php 

							while ($row = $execSelect->fetch()):

								?>

							<tr style="background-color: <?php echo $status_colors[$row ["status"]];?>; color: <?php echo $font_colors[$row ["status"]];?>">

								<td><?php echo $row ["computer_code"]; ?></td>

								<td><?php echo $row ["employee_name"]; ?></td>

								<td><?php echo $row ["reason"]; ?></td>

								<td><?php echo $row ["comment"]; ?></td>

								<td><?php echo $row ["description"]; ?></td>

								<td><?php echo $row ["support_date"]; ?></td>

								<td><?php echo $row ["agent"]; ?></td>

								<td>
									<?php 
									if ($row ["status"]=='1') {
										echo "Realizado";
									}elseif ($row ["status"]=='2') {
										echo "En proceso";
									}elseif ($row ["status"]=='3') {
										echo "Seguimiento";
									}
									?>
								</td>

<!-- 

								<td>

									<a href="index.php?vcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-info text-white" title="Modificar registro" target="_blank"><i class="fas fa-pen-square"></i></a>											

									<a href="views/report.php?codeR=<?php echo $row ['code']; ?>" name="create_pdf" class="btn btn-sm btn-success" title="Carta responsiva" target="_blank"><i class="fas fa-file-pdf"></i></a>

									<a href="index.php?computer_code=<?php echo $row ['code']; ?>" name="create_pdf" class="btn btn-sm btn-warning" title="Soporte técnico" target="_blank"><i class="fas fa-shield-alt"></i></a> 

									<a href="controlers/deleteRegistry.php?dcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-danger btn-eliminar" onclick="return confirm('Seguro de eliminar?')" title="Eliminar registro"><i class="fas fa-times-circle"></i></a>
								</td> -->

								</tr>

								<?php 

								endwhile;

								?>

							</table>

						</div>

					</div>

				</div>


				<?php

			}else{ ?>

			<br>

			<p class="alert alert-warning">No hay datos disponibles</p>

		<?php 

		}

		?>
</div>


