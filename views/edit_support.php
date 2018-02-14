<?php 
$conn = Connect();
$code = $_REQUEST['supportID'];
$stmSelect = "SELECT * FROM support WHERE id='$code'";
$execSelect = $conn->query($stmSelect);
if ($execSelect->rowCount()>0) {
	// echo $_SESSION["whoIs"];
	?>
	<form method="POST" action="controlers/support/edit_data.php" enctype="multipart/form-data">
		<div class="row justify-content-md-center">
			<h3 class="display-2">Modificar soporte</h3>
		</div>
		<br>
		<?php while ($row = $execSelect->fetch()): ?>
		<div class="form">
			<div class="row justify-content-md-center">
				<div class="col">
					<div class="card card-outline-success mb-3">
						<div class="card-block">
							<div class="row">

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Causa</small>
										<select class="form-control" name="cmbReason">
											<option <?php if ($row ["reason"]=="Internet") echo 'selected' ?> value="Internet">Internet</option>
											<option <?php if ($row ["reason"]=="Correo") echo 'selected' ?> value="Correo">Correo</option>
											<option <?php if ($row ["reason"]=="Software") echo 'selected' ?> value="Software">Software</option>
											<option <?php if ($row ["reason"]=="Hardware") echo 'selected' ?> value="Hardware">Hardware</option>
											<option <?php if ($row ["reason"]=="Otro") echo 'selected' ?> value="Otro">Otro</option>
										</select>

									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Razón</small>
										<input type="text" class="form-control" name="txtOther" placeholder="Razón" value="<?php echo $row ["comment"]; ?>">
										<input type="hidden" class="form-control" name="txtID_Support" value="<?php echo $row ["id"]; ?>">
									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Estatus</small>
										<select class="form-control" name="cmbStatus">
											<option <?php if ($row ["status"]=="1") echo 'selected' ?> value="1">Realizado</option>
											<option <?php if ($row ["status"]=="2") echo 'selected' ?> value="2">En proceso</option>
											<option <?php if ($row ["status"]=="3") echo 'selected' ?> value="3">Seguimiento</option>
										</select>
									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Fecha</small>
										<input class="form-control" type="date" name="txtSupportDate" value="<?php echo $row ["support_date"]; ?>">
									</div>
								</div>
		
							</div>

							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Descripción</small>
										<textarea class="form-control" name="txtDesc" rows="3"><?php echo $row ["description"]; ?></textarea>
									</div>
								</div>
							</div>
														
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="col">
				<div class="card mb-3">
					<button type="submit" class="btn btn-primary btn-lg btn-block" name="btnUpdSupport" id="btnUpdSupport">Modificar registro <i class="fas fa-edit"></i></button>
					<hr>
					<button type="submit" class="btn btn-info btn-lg btn-warning" onclick="window.history.go(-1); return false;">Cancelar <i class="fas fa-ban"></i></button>
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