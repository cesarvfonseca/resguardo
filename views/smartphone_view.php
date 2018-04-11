<?php 
include('modals/new_smartphone.php');
include('modals/edit_smartphone.php');
include('modals/add_smartphone.php');
include('modals/gaccounts.php');
include_once 'database/connection.php';
$conn = Connect();
?>

<div  class="page-header">

	<h1>Registro de Smartphones<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>

</div>

<div class="row-fluid">

	<div class="col-md-12">

		<?php if ($_SESSION['level']=='0'){ ?>

		<button class="btn btn-md btn-success" data-toggle="modal" data-target="#newsp">
			<i class="fas fa-plus-circle"></i>

			Agregar

		</button>

<!-- 		<button class="btn btn-md btn-primary" data-toggle="modal" data-target="#gaccounts">
			<i class="fas fa-at"></i>

			Correos

		</button> -->

		<?php }else{ ?>

			<hr>

		<?php } ?>

	</div>
	<div class="col-md-12" id="spTable">
		<div class="table table-sm table-bordered table-hover table-striped">
			<table id="example" class="stripe row-border order-column" cellspacing="0" width="100%"> 
				<thead class="thead-inverse">
					<tr>
						<th>#</th>
						<th>Codigo</th>
						<!-- <th>Nomina</th> -->
						<th>Responsable</th>
						<th>Sucursal</th>
						<th>Area</th>
						<th>Color</th>
						<th>Marca</th>
						<th>Modelo</th>
						<th>IMEI</th>
						<th>Cuenta</th>
						<th>Telefono</th>
						<th>Acciones</th>
					</tr>
				</thead>			
				<?php
				// $consulta= "SELECT * FROM smartphone";
				$consulta= "SELECT sp.`id`, sp.`code_smartphone`, sp.`employee_code`, sp.`employee_name`, sp.`branch`, sp.`area`, 
				sp.`color`, sp.`brand`, sp.`model`, sp.`imei`, sp.`account`, sp.`phone_number`, sp.`status`, sp.`comment`, 
				sp.`deliver_date`, sp.`update_time`, ac.`pwd` 
				FROM `smartphone` AS sp 
				LEFT JOIN `accounts` AS ac 
				ON sp.`account` = ac.`account`";

				if ($resultado = $conn->query($consulta)) 
				{
					while ($fila = $resultado->fetch()) 
					{					
						echo "<tr>";
						echo "	
								<td>$fila[0]</td>
								<td>
									<a class='btn btn-sm btn-default text-primary' title='Añadir responsable del equipo' data-toggle='modal' data-target='#addsp'
									data-id ='" .$fila[0] ."'
									data-spcode = '" .$fila[1] ."'
									data-spcolor = '" .$fila[6] ."' 
									data-spbrand = '" .$fila[7] ."' 
									data-spmodel = '" .$fila[8] ."' 
									data-spimei = '" .$fila[9] ."' 
									data-spaccount = '" .$fila[10] ."'
									data-empphone = '" .$fila[11] ."'
									data-spstatus = '" .$fila[12] ."' 
									data-spcomment = '" .$fila[13] ."' 
									><i class='fas fa-plus-circle'></i></a>
									$fila[1]
								</td>
								<td>$fila[3]</td>
								<td>$fila[4]</td>
								<td>$fila[5]</td>
								<td>$fila[6]</td>
								<td>$fila[7]</td>
								<td>$fila[8]</td>
								<td>$fila[9]</td>
								<td>
									<a class='btn btn-sm btn-default text-primary' data-toggle='modal' data-target='#gaccounts' 
									data-account ='" .$fila[10] ."'
									data-pwd ='" .$fila[16] ."'
									title='Clic para ver contraseña'
									>".$fila[10]."
									</a>
								</td>
								<td>$fila[11]</td>
							 ";	
							echo "<td>";
							echo		"<a data-toggle='modal' data-target='#editsp' 
											data-id ='" .$fila[0] ."' 
											data-spcode = '" .$fila[1] ."' 
											data-empcode = '" .$fila[2] ."' 
											data-empname = '" .$fila[3] ."' 
											data-empbranch = '" .$fila[4] ."' 
											data-emparea = '" .$fila[5] ."' 
											data-spcolor = '" .$fila[6] ."' 
											data-spbrand = '" .$fila[7] ."' 
											data-spmodel = '" .$fila[8] ."' 
											data-spimei = '" .$fila[9] ."' 
											data-spaccount = '" .$fila[10] ."' 
											data-empphone = '" .$fila[11] ."' 
											data-spstatus = '" .$fila[12] ."' 
											data-spcomment = '" .$fila[13] ."' 
											class='btn btn-sm btn-warning text-white'><i class='fas fa-pen-square'></i></a>";
							if ($_SESSION['level']=='0'){				
							echo		"<a class='btn btn-sm btn-danger text-white' onclick='return confirm('Seguro de eliminar?')' href='controlers/sp/sp_delete.php?id=" .$fila[0] ."'><i class='fas fa-times-circle'></i></a>";
							}
							echo "</td>";
							  	

						echo "</tr>";
					}
				}
				?>
			</table>
		</div>
	</div>
</div>