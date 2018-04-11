<?php 
$conn = Connect();
$code = $_REQUEST['id'];
$stmSelect = "SELECT * FROM user WHERE id='$code'";
$execSelect = $conn->query($stmSelect);
if ($execSelect->rowCount()>0) {
	?>
	<form method="POST" action="controlers/userUpd.php" enctype="multipart/form-data">
		<div class="row justify-content-md-center">
			<h3 class="display-2">Modificar usuario</h3>
		</div>
		<br>
		<?php while ($row = $execSelect->fetch()): ?>
		<div class="form">
			<div class="row justify-content-md-center">
				<div class="col">
					<div class="card card-outline-success mb-3">
						<div class="card-block">
							<h3 class="card-title">Datos de <?php echo $row ["employee_name"]; ?></h3>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<input type="hidden" class="form-control" name="txtID" value="<?php echo $row ["id"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-4">
									<div class="form-group">
										<small class="form-text text-muted">Nomina</small>
										<input type="text" class="form-control" name="txtNomina" id="txtNomina" placeholder="Numero de nomina del empleado" value="<?php echo $row ["employee_id"]; ?>">
									</div>
								</div>
								<div class="col-8">
									<div class="form-group">
										<small class="form-text text-muted">Nombre(s)</small>
										<input type="text" class="form-control" name="txtName" id="txtName" placeholder="Nombres del empleado" value="<?php echo $row ["employee_name"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-4">
									<div class="form-group">
										<small class="form-text text-muted">Puesto</small>
										<input type="text" class="form-control" name="txtPosition" id="txtPosition" placeholder="Puesto del empleado" value="<?php echo $row ["employee_position"]; ?>">
									</div>
								</div>
								<div class="col-4">
									<div class="form-group">
										<small class="form-text text-muted">Sucursal</small>
										<input type="text" class="form-control" name="txtBranch" id="txtBranch" placeholder="Sucursal del empleado" value="<?php echo $row ["employee_branch"]; ?>">
									</div>
								</div>	
								<div class="col-4">
									<div class="form-group">
										<small class="form-text text-muted">Area</small>
										<input type="text" class="form-control" name="txtArea" id="txtArea" placeholder="Area del empleado" value="<?php echo $row ["employee_area"]; ?>">
									</div>
								</div>							
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Correo</small>
										<input type="text" class="form-control" name="txtUser" placeholder="Ingrese usuario" value="<?php echo $row ["login"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Rol del usuario</small>
										<select class="form-control" name="cmRol">
											<option <?php if ($row ["roll"]=="0") echo 'selected' ?> value="0">Administrador</option>
											<option <?php if ($row ["roll"]=="1") echo 'selected' ?> value="1">Supervisor</option>
											<option <?php if ($row ["roll"]=="3") echo 'selected' ?>  value="3">Limitado</option>
										</select>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Escriba Contraseña</small>
										<input type="password" class="form-control" name="txtPass1" placeholder="Escribe contraseña">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Repita Contraseña</small>
										<input type="password" class="form-control" name="txtPass2" placeholder="Repite contraseña">
									</div>
								</div>								
							</div>															
						</div>
						<br><br><br><br><br>
					</div>
				</div>
			</div>
			<br>
			<div class="col">
				<div class="card card-outline-info mb-3">
					<button type="submit" class="btn btn-primary btn-lg btn-block" name="btnUpdUser" id="btnUpdUser">Modificar usuario <i class="fas fa-edit"></i></button>
				</div>
			</div>
		</div>
		<?php 
		endwhile;
		?>
	</form>
	<?php }else{ ?>
	<p class="alert alert-warning">There isn´t data allow</p>
	<?php } ?>