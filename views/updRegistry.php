<?php 
	// echo "<font face='Arial' size='5'>Respuesta</font><br>"; 
	// echo "variable 1 =".$_REQUEST['saludo']."<br>"; 
	// echo "variable 2 =".$_REQUEST['texto']."<br>"; 
	// echo "variable 3 =".$_GET['saludo']."<br>"; 
	// echo "variable 4 =".$_REQUEST['texto']."<br>"; 
$conn = Connect();
$code = $_REQUEST['vcode'];
$stmSelect = "SELECT * FROM registry WHERE code='$code'";
$execSelect = $conn->query($stmSelect);
if ($execSelect->rowCount()>0) {
	?>
	<form method="POST" action="controlers/dataUpdate.php" enctype="multipart/form-data">
		<div class="row justify-content-md-center">
			<h3 class="display-2">Modificar equipo <?php echo $code ?></h3>
		</div>
		<br>
		<?php while ($row = $execSelect->fetch()): ?>
		<div class="form">
			<div class="row justify-content-md-center">
				<div class="col">
					<div class="card card-outline-success mb-3">
						<div class="card-block">
							<h3 class="card-title">Datos del responsable</h3>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Número de nomina</small>
										<input type="text" class="form-control" name="txtCodeemp" value="<?php echo $row ["id_employee"]; ?>">
										<input type="hidden" class="form-control" name="txt_rCode" value="<?php echo $row ["id_employee"]; ?>">
										<input type="hidden" class="form-control" name="txt_rNames" value="<?php echo $row ["name"]." ".$row ["lastname"]; ?>">
										<input type="hidden" class="form-control" name="txt_rMail" value="<?php echo $row ["mail"]; ?>">
										<input type="hidden" class="form-control" name="txt_rPosition" value="<?php echo $row ["position"]; ?>">
										<input type="hidden" class="form-control" name="txt_rBranch" value="<?php echo $row ["branch"]; ?>">
										<input type="hidden" class="form-control" name="txt_rWS" value="<?php echo $row ["workstation"]; ?>">
										<input type="hidden" class="form-control" name="txt_rDate" value="<?php echo $row ["date"]; ?>">
										<input type="hidden" class="form-control" name="txtcodeRegistry" value="<?php echo $row ["code"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Teléfono</small>
										<input type="phone" class="form-control" name="txtPhone" placeholder="Teléfono de contacto" value="<?php echo $row ["phone"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Nombre(s)</small>
										<input type="text" class="form-control" name="txtName" id="txtName" placeholder="Nombres" value="<?php echo $row ["name"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Apellido(s)</small>
										<input type="text" class="form-control" name="txtlastName" id="txtlastName" placeholder="Apellidos" value="<?php echo $row ["lastname"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Puesto</small>
										<input type="text" class="form-control" name="txtPosition" placeholder="Puesto" value="<?php echo $row ["position"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Correo</small>
										<input type="text" class="form-control" name="txtEmail" placeholder="Correo" value="<?php echo $row ["mail"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Sucursal</small>
										<input type="text" class="form-control" name="txtBranch" placeholder="Sucursal" value="<?php echo $row ["branch"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Planta ó departamento</small>
										<input type="text" class="form-control" name="txtStation" placeholder="Planta / Departamento" value="<?php echo $row ["workstation"]; ?>">
									</div>
								</div>

								<div class="col-12">
									<div class="form-group">
										<label class="control-label text-muted">Adjunta carta responsiva</label>
										<div class="form-group-file">
											<input type="file" class="form-control" id="cResponsiva[]" name="cResponsiva[]" multiple="">
										</div>
									</div>
								</div>

								<div class="col-12">
									<a href="controlers/reader.php?file_name=<?php echo $row ["serial"];?>.jpg" target="_blank" class="btn btn-warning btn-block">Ver Carta Responsiva</a>
									<hr>
									<a href="controlers/reader.php?file_name=<?php echo $row ["serial"];?>.pdf" target="_blank" class="btn btn-info btn-block">Ver PDF</a>
									<a href="controlers/reader.php?file_name=<?php echo $row ["serial"];?>.xml" target="_blank" class="btn btn-success btn-block">Ver XML</a>
								</div>

							</div>															
						</div>
					</div>

					

				</div>
				<div class="col">
					<div class="card card-outline-info mb-3">
						<div class="card-block">
							<h3 class="card-title">Datos del equipo</h3>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Tipo</small>
										<select class="form-control" name="cmType">
											<option <?php if ($row ["type"]=="MQ") echo 'selected' ?> value="MQ">Laptop</option>
											<option <?php if ($row ["type"]=="PC") echo 'selected' ?>  value="PC">Desktop</option>
											<option value="MQ">AIO</option>
										</select>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Estatus</small>
										<select class="form-control" name="cmStatus">
											<option <?php if ($row ["status"]=="A") echo 'selected' ?> value="A">Activo</option>
											<option <?php if ($row ["status"]=="I") echo 'selected' ?> value="I">Inactivo</option>
											<option <?php if ($row ["status"]=="X") echo 'selected' ?> value="X">Soporte</option>
										</select>
									</div>
								</div>																
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Marca</small>
										<input type="text" class="form-control" name="txtBrand" placeholder="Marca" value="<?php echo $row ["brand"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Modelo</small>
										<input type="text" class="form-control" name="txtModel" placeholder="Modelo" value="<?php echo $row ["model"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Serie</small>
										<input type="text" class="form-control" name="txtSerie" placeholder="No. Serie" value="<?php echo $row ["serial"]; ?>">
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Producto</small>
										<input type="text" class="form-control" name="txtProduct" placeholder="No. Producto" value="<?php echo $row ["product"]; ?>">
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Factura</small>
										<input type="text" class="form-control" name="txtInvoice" placeholder="No. Factura" value="<?php echo $row ["invoicenbr"]; ?>">
									</div>
								</div>	
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Fecha factura</small>
										<input class="form-control" type="date" name="txtInvoicedate" value="<?php echo $row ["invoicedate"]; ?>">
									</div>									
								</div>															
							</div>

							<div class="form-group">
								<label class="col-xs-4 control-label text-muted">Adjunta Factura (PDF y XML)</label>
								<div class="col-xs-4 form-group-file">
									<input type="file" class="form-control" id="archivo[]" name="archivo[]" multiple="">
								</div>
							</div>

							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Comentarios</small>
										<textarea class="form-control" name="txtComment" rows="5"><?php echo $row ["comment"]; ?></textarea>
									</div>
								</div>
							</div>																			
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="col">
				<div class="card card-outline-info mb-3">
					<button type="submit" class="btn btn-primary btn-lg btn-block" name="btnUpdate" id="btnUpdate">Modificar</button>
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