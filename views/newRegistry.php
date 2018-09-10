<?php 
	// echo "<font face='Arial' size='5'>Respuesta</font><br>"; 
	// echo "variable 1 =".$_REQUEST['saludo']."<br>"; 
	// echo "variable 2 =".$_REQUEST['texto']."<br>"; 
	// echo "variable 3 =".$_GET['saludo']."<br>"; 
	// echo "variable 4 =".$_REQUEST['texto']."<br>"; 
	$conn = Connect();
	$sql = "SELECT id_employee FROM registry WHERE id_employee<>'00000' GROUP BY id_employee OrDER BY id_employee";
	$execSQL = $conn->query($sql);
	$empId = array();
	while ($row = $execSQL->fetch())
	{
		$employee_id = utf8_encode($row['id_employee']);
		array_push($empId, $employee_id);//Guardar id del empleado
	}
	include 'controlers/data.php';
	?>
	
	<form class="form-horizontal" method="post" action="controlers/dataReg.php" enctype="multipart/form-data">
		<div class="row justify-content-md-center">
			<h3 class="display-2"> Registro de equipo </h3>
		</div>
		<br>
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
										<input type="text" class="form-control" maxlength="5" name="txtCodeemp" id="txtCodeemp" autocomplete="off" placeholder="Número de nomina del empleado" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Teléfono</small>
										<input type="phone" class="form-control" name="txtPhone" id="txtPhone" placeholder="Teléfono de contacto" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Nombre del empleado</small>
										<input type="text" class="form-control" name="txtName" id="txtName" placeholder="Nombres del empleado" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Puesto</small>
										<input type="text" class="form-control" name="txtPosition" id="txtPosition" placeholder="Puesto" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Correo</small>
										<input type="text" class="form-control" name="txtEmail" id="txtEmail" placeholder="Correo" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Sucursal</small>
										<!-- <input type="text" class="form-control" name="txtBranch" id="txtBranch" placeholder="Sucursal" required> -->
										<select class="form-control" name="txtBranch" id="txtBranch">
										<?php 
											$sql = "SELECT `registry`.`branch` FROM `registry` WHERE `registry`.`branch` <> '' GROUP BY `registry`.`branch` ORDER BY `registry`.`branch` ASC";
											$execSQL = $conn->query($sql);
											while ($row = $execSQL->fetch())
											{
										    	echo '<option value="'.$row['branch'].'">'. $row['branch'] .'</option>';
											}
									    ?>
									    </select>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Planta ó departamento</small>
										<input type="text" class="form-control" name="txtArea" id="txtArea" placeholder="Planta / Departamento" required>
									</div>
								</div>
							</div>	
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Fecha de entrega</small>
										<input type="date" class="form-control" name="txtDelivery" id="txtDelivery" value="<?php echo date("Y-m-d");?>" required>
									</div>
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
											<option value="MQ">Laptop</option>
											<option value="PC">Desktop</option>
											<option value="MQ">AIO</option>
											<option value="MF">Multifuncional / Impresora</option>
										</select>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Estatus</small>
										<select class="form-control" name="cmStatus">
											<option value="A">Activo</option>
											<option value="I">Inactivo</option>
											<option value="X">Soporte</option>
										</select>
									</div>
								</div>																
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Marca</small>
										<input type="text" class="form-control" name="txtBrand" placeholder="Marca" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Modelo</small>
										<input type="text" class="form-control" name="txtModel" placeholder="Modelo" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Serie</small>
										<input type="text" class="form-control" name="txtSerie" placeholder="No. Serie" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Producto</small>
										<input type="text" class="form-control" name="txtProduct" placeholder="No. Producto" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Factura</small>
										<input type="text" class="form-control" name="txtInvoice" placeholder="No. Factura">
									</div>
								</div>	
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Fecha factura</small>
										<input class="form-control" type="date" name="txtInvoicedate" value="<?php echo date("Y-m-d");?>">
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
										<textarea class="form-control" name="txtComment" maxlength="300" rows="5"></textarea>
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
					<button type="submit" class="btn btn-primary btn-lg btn-block" name="btnSave" id="btnSave"> Guardar Registro <i class="fas fa-save"></i></button>
					<hr>
					<a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block"> Cancelar <i class="fas fa-times"></i></a>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript">

		// var items = <?= json_encode($empId) ?>

		// $('#txtCodeemp').autocomplete({
		// 	source: items
		// });

		$(document).ready(function () {
			var items = <?= json_encode($empId) ?>

			$("#txtCodeemp").autocomplete({
				source: items,
				select: function (event, item) {
					var params = 
					{
						equipo: item.item.value
					};
					$.get("controlers/service.php", params, function (response) {
						var json = JSON.parse(response);
						if (json.status == 200){
							// $("#txtName").html(json.employee_name);
							$("#txtName").val(json.employee_name);
							$("#txtPhone").val(json.phone);
							$("#txtPosition").val(json.position);
							$("#txtEmail").val(json.mail);
							$("#txtBranch").val(json.branch);
							$("#txtArea").val(json.workstation);
							// console.log(json.employee_name);
							// $("#avatar").attr("src", json.icono);
						}else{

						}
						// console.log(response);
					}); // ajax
				}
			});
		});

	</script>