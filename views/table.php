<?php 
    header('Content-Type: text/html; charset=UTF-8');     
	include_once 'database/connection.php';
	include 'views/modals/newRegistry.php';

	$conn = Connect();

	$stmSelect = "SELECT * FROM registry WHERE active='1'";
	$execSelect = $conn->query($stmSelect);?>

	<div  class="page-header">
		<h1>Registro de equipos<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>
	</div>

	<div class="row-fluid">
		<br>
		<div class="col-md-12">
			<button class="btn btn-md btn-success" data-toggle="modal" data-target="#newRegistry">
				Agregar
			</button>
		</div>
		<br>
	</div>
	<?php 
	if ($execSelect->rowCount()>0) {?>
		<div class="col-md-12">
			<div class="table table-sm table-bordered table-hover table-striped">
			<br>
			<table id="example" class="table table-striped" >  
					<thead class="thead-inverse">
						<th>Acciones</th>
						<th>Codigo</th>
						<th>Nomina</th>
						<th>Nombre</th>
						<th>Puesto</th>
						<th>Sucursal</th>
						<th>Area</th>
						<th>Telefono</th>
						<th>Marca</th>
						<th>Modelo</th>						
						<th>No.Serie</th>
						<th>No.Producto</th>
						<th>Status</th>
					</thead>
					<?php 
						while ($row = $execSelect->fetch()):
					 ?>
					<tr>
						<th>
							<a href="index.php?vcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-info"><i class="fa fa-pencil" aria-hidden="true"></i></a>
							<!-- <a href="index.php?vcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-succes"><i class="fa fa-refresh" aria-hidden="true"></i></a> -->
							<a href="controlers/deleteRegistry.php?dcode=<?php echo $row['code'] ?>" class="btn btn-sm btn-danger btn-eliminar" onclick="return confirm('Seguro de eliminar?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
						</th>						
						<td><?php echo $row ["code"]; ?></td>
						<td><?php echo $row ["id_employee"]; ?></td>
						<td><?php echo $row ["name"]." ".$row ["lastname"]; ?></td>
						<td><?php echo $row ["position"]; ?></td>
						<td><?php echo $row ["branch"]; ?></td>
						<td><?php echo $row ["workstation"]; ?></td>
						<td><?php echo $row ["phone"]; ?></td>
						<td><?php echo $row ["brand"]; ?></td>
						<td><?php echo $row ["model"]; ?></td>
						<td><?php echo $row ["serial"]; ?></td>						
						<td><?php echo $row ["product"]; ?></td>
						<td><?php echo $row ["status"]; ?></td>
					</tr>
					<?php 
						endwhile;
					 ?>
				</table>
			</div>
		</div>
	<?php
	}else{ ?>
	<br>
		<p class="alert alert-warning">There isn´t data allow</p>
<?php 

}
 ?>

