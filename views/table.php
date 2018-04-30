<?php 

    // header('Content-Type: text/html; charset=UTF-8');     

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

	<h1>Registro de equipos<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>

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

	<ul class="nav nav-tabs" id="myTab" role="tablist">
	  <li class="nav-item">
	    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Equipos de computo</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Multifuncionales</a>
	</ul>

	<div class="tab-content" id="nav-tabContent">
  		<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

			<?php 

			if ($_SESSION['level']>'1') 
				$stmSelect = "SELECT * FROM `registry` WHERE `registry`.`type`<>'MF' AND `registry`.`active`='1' AND id_employee = '$empID' ORDER BY `registry`.`date` DESC";
			else
				$stmSelect = "SELECT * FROM `registry` WHERE `registry`.`type`<>'MF' AND `registry`.`active`='1' ORDER BY `registry`.`date` DESC";

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

								<th>#</th>

								<th>Codigo</th>

								<th>Nomina</th>

								<th>Nombres</th>

								<!-- <th>Puesto</th> -->

								<th>Sucursal</th>

								<th>Area</th>

								<th>Marca</th>

								<th>Modelo</th>						

								<th>No.Serie</th>

								<th>No.Producto</th>

								<th>Fecha</th>

								<th>Factura</th>

								<th>Estado</th>

								<th width="7%">Acciones</th>

							</thead>

							<?php 

							$count=1;

							while ($row = $execSelect->fetch()):

								?>

							<tr style="background-color: <?php echo $status_colors[$row ["status"]];?>; color: <?php echo $font_colors[$row ["status"]];?>">

								<td><?php echo $count ?></td>
								
								<td><?php echo $row ["code"]; ?></td>

								<td><?php echo $row ["id_employee"]; ?></td>

								<td><?php echo $row ["employee_name"]; ?></td>

								<td><?php echo $row ["branch"]; ?></td>

								<td><?php echo $row ["workstation"]; ?></td>

								<td><?php echo $row ["brand"]; ?></td>

								<td><?php echo $row ["model"]; ?></td>

								<td><?php echo $row ["serial"]; ?></td>						

								<td><?php echo $row ["product"]; ?></td>

								<td><?php echo $row ["date"]; ?></td>

								<td><?php echo $row ["invoicenbr"]; ?></td>

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

								<?php 

								if ($_SESSION['level']=='0')

								{ 

									?>

									<td>

										<a href="index.php?vcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-info text-white" title="Modificar registro" target="_blank"><i class="fas fa-pen-square"></i></a>
	<!-- 									 <a class="btn btn-sm btn-info text-white" title="Modificar registro" data-toggle='modal' data-target='#info'
											data-empcode='<?php $row ["id_employee"];?>'
											><i class="fas fa-pen-square"></i></a> -->

											

											<a href="views/report.php?codeR=<?php echo $row ['code']; ?>" name="create_pdf" class="btn btn-sm btn-success" title="Carta responsiva" target="_blank"><i class="fas fa-file-pdf"></i></a>

											<a href="index.php?computer_code=<?php echo $row ['code']; ?>" name="create_pdf" class="btn btn-sm btn-warning" title="Soporte técnico" target="_blank"><i class="fas fa-shield-alt"></i></a> 

											<a href="controlers/deleteRegistry.php?dcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-danger btn-eliminar" onclick="return confirm('Seguro de eliminar?')" title="Eliminar registro"><i class="fas fa-times-circle"></i></a>
										</td>

									<?php 

									}

									else

									{ 

										?>

										<!-- <a href="index.php?vcode=<?php echo $row['code'] ?>" id="<?php echo $r["code"];?>" class="btn btn-sm btn-info btn-editar" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i></a> -->
										<?php  
										echo "<td>";
										echo		"
										<a data-toggle='modal' data-target='#info' 
										data-computerid = '" .$row["id"] ."' 
										data-computercode = '" .$row["code"] ."' 
										data-empcode = '" .$row["id_employee"] ."' 
										data-empname = '" .$row["employee_name"] ."' 
										data-empphone = '" .$row["phone"] ."' 
										data-empmail = '" .$row["mail"] ."' 
										data-empposition = '" .$row["position"] ."' 
										data-empbranch = '" .$row["branch"] ."' 
										data-emparea = '" .$row["workstation"] ."' 
										data-computerbrand = '" .$row["brand"] ."' 
										data-computermodel = '" .$row["model"] ."' 
										data-computerserial = '" .$row["serial"] ."' 
										data-computerproduct = '" .$row["product"] ."' 
										data-computerstatus = '" .$row["status"] ."' 
										data-invoicenbr = '" .$row["invoicenbr"] ."' 
										data-invoicedate = '" .$row["invoicedate"] ."' 
										data-computercomment = '" .$row["comment"] ."' 
										data-computertype = '" .$row["type"] ."' 
										data-cartaresponsiva = '".$row["serial"] ."'
										class='btn btn-sm btn-info text-white'><i class='fas fa-eye'></i>
										</a>
										";
										echo "</td>";
										?>

										<?php 

									} 

									?>

								</tr>

								<?php 

								$count++;

								endwhile;

								?>

							</table>

						</div>

					</div>

				</div>


				<?php

			}else{ ?>

			<br>

			<p class="alert alert-warning">No hay datos disponibles para <?php echo $empName; ?></p>

		<?php 

		}

		?>
		</div>
		<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
			<?php 
				include('printers.php');
			 ?>
		</div>
</div>


