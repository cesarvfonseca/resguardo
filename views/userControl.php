<?php
header('Content-Type: text/html; charset=UTF-8');     
include_once 'database/connection.php';
include 'views/modals/usrRegistry.php';
include_once 'database/connection.php';
$mensaje='';
$conn = Connect();

$consulta = $conn -> prepare("
	SELECT * FROM user limit 5");

$consulta ->execute();
$consulta = $consulta ->fetchAll();
if(!$consulta){
	$mensaje .= 'NO HAY USUARIOS PARA MOSTRAR';
}
?>
	<div class="row-fluid">
		<div class="col-md-12">
			<div  class="page-header">
				<h1>Registro de usuarios<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;MEXQ</small></h1>
				<br>
			</div>
				<button class="btn btn-md btn-success" data-toggle="modal" data-target="#userRegistry">
					<i class="fas fa-plus-circle"></i>
					 Agregar usuario
				</button>
				<hr>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="table table-sm table-hover table-striped">
							<table class="table table-striped">
								 <thead class="thead-inverse">
									<th>Nomina</th>
									<th>Nombres</th>
									<th>Apellidos</th>
		                            <th>Usuario</th>
									<th>Roll</th>
		                            <th colspan="2">Opciones</th>
								  </thead>
								  <tr>
								<?php foreach ($consulta as $row): ?>
									<?php 
										if ($row['roll']=='0') {
											$roll = 'Administrador';
										}elseif ($row['roll']=='1') 
										{
											$roll = 'Supervisor';
										}elseif ($row['roll']=='3') 
										{
											$roll = 'Limitado';
										}
										  echo "<td>". $row['employee_id']. "</td>";
										  echo "<td>". $row['name']. "</td>"; ?>
		                            <?php echo "<td>". $row['lastname']. "</td>"; ?>
		                            <?php echo "<td>". $row['login']. "</td>"; ?>
		                            <?php echo "<td>". $roll . "</td>"; ?>
		                            <?php echo "<td class='centrar'>"."<a href='index.php?id=".$row['id']."' class='btn btn-sm btn-warning'><i class='fas fa-pen-square'> Editar</a>". "</td>"; ?>
								  <?php echo "<td class='centrar'>"."<a href='index.php?idD=".$row['id']."' class='btn btn-sm btn-danger' onclick='return confirm('Seguro de eliminar?')'><i class='fas fa-minus-circle'></i> Eliminar</a>". "</td>"; ?>
								</tr>
							<?php endforeach; ?>
							</table>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
	</section>

</body>
</html>