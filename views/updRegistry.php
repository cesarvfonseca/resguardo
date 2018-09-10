<?php 
	// echo "<font face='Arial' size='5'>Respuesta</font><br>"; 
	// echo "variable 1 =".$_REQUEST['saludo']."<br>"; 
	// echo "variable 2 =".$_REQUEST['texto']."<br>"; 
	// echo "variable 3 =".$_GET['saludo']."<br>"; 
	// echo "variable 4 =".$_REQUEST['texto']."<br>"; 
$conn = Connect();
$code = $_REQUEST['vcode'];

$sql = "SELECT id_employee FROM registry WHERE id_employee<>'00000' GROUP BY id_employee ORDER BY id_employee";
	$execSQL = $conn->query($sql);
	$empId = array();
	while ($row = $execSQL->fetch())
	{
		$employee_id = utf8_encode($row['id_employee']);
		array_push($empId, $employee_id);//Guardar id del empleado
	}

$stmSelect = "SELECT * FROM registry WHERE code='$code'";
$execSelect = $conn->query($stmSelect);
if ($execSelect->rowCount()>0) {
	include 'controlers/data.php';
	?>

	<form method="POST" action="controlers/dataUpdate.php" enctype="multipart/form-data" id="updateRegistry">
		<div class="row justify-content-md-center">
			<h3 class="display-2">Modificar equipo <?php echo $code ?></h3>
		</div>
		<br>
		<?php 
			while ($row = $execSelect->fetch()): 
				$employee_branch = $row ["branch"];
		?>
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
										<input type="text" class="form-control" maxlength="5" name="txtCodeemp" id="txtCodeemp" value="<?php echo $row ["id_employee"]; ?>" required>
										<input type="hidden" class="form-control" name="txt_rCode" value="<?php echo $row ["id_employee"]; ?>">
										<input type="hidden" class="form-control" name="txt_rNames" value="<?php echo $row ["employee_name"]; ?>">
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
										<input type="phone" class="form-control" name="txtPhone" placeholder="Teléfono de contacto" value="<?php echo $row ["phone"]; ?>" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Nombre del empleado</small>
										<input type="text" class="form-control" name="txtName" id="txtName" placeholder="Nombres" value="<?php echo $row ["employee_name"]; ?>" required>
									</div>
								</div>							
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Puesto</small>
										<input type="text" class="form-control" name="txtPosition" id="txtPosition" placeholder="Puesto" value="<?php echo $row ["position"]; ?>" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Correo</small>
										<input type="text" class="form-control" name="txtEmail" id="txtEmail" placeholder="Correo" value="<?php echo $row ["mail"]; ?>" required>
									</div>
								</div>								
							</div>
							<div class="row">

								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Sucursal</small>
										<select class="form-control" name="txtBranch" id="txtBranch">
										<option selected value="<?php echo $row["branch"] ?>"><?php echo $row["branch"]; ?></option>
										<?php 
											$sql = "SELECT `registry`.`branch` FROM `registry` WHERE `registry`.`branch` <> '' AND `registry`.`branch` <> '$employee_branch' GROUP BY `registry`.`branch` ORDER BY `registry`.`branch` ASC";
											$execSQL = $conn->query($sql);
											while ($r = $execSQL->fetch())
											{
										    	echo '<option value="'.$r['branch'].'">'. $r['branch'] .'</option>';
											}
									    ?>
									    </select>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Planta ó departamento</small>
										<input type="text" class="form-control" name="txtStation" id="txtStation" placeholder="Planta / Departamento" value="<?php echo $row ["workstation"]; ?>" required>
									</div>
								</div>
							</div>	
							
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Fecha de entrega</small>
										<input type="date" class="form-control" name="txtDelivery" id="txtDelivery" value="<?php echo $row ["date"];?>">
									</div>
								</div>
							</div>	

							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<label class="control-label text-muted">Adjunta carta responsiva</label>
										<div class="form-group-file">
											<input type="file" class="form-control" id="cResponsiva[]" name="cResponsiva[]" multiple="">
										</div>
									</div>
								</div>
							</div>

							<div class="row">
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
											<option <?php if ($row ["type"]=="MF") echo 'selected' ?>  value="MF">Multifuncional / Impresora</option>
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
										<input type="text" class="form-control" name="txtBrand" placeholder="Marca" value="<?php echo $row ["brand"]; ?>" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">Modelo</small>
										<input type="text" class="form-control" name="txtModel" placeholder="Modelo" value="<?php echo $row ["model"]; ?>" required>
									</div>
								</div>								
							</div>
							<div class="row">
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Serie</small>
										<input type="text" class="form-control" name="txtSerie" placeholder="No. Serie" value="<?php echo $row ["serial"]; ?>" required>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<small class="form-text text-muted">No. Producto</small>
										<input type="text" class="form-control" name="txtProduct" placeholder="No. Producto" value="<?php echo $row ["product"]; ?>" required>
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
										<textarea class="form-control" name="txtComment" maxlength="300" rows="5"><?php echo $row ["comment"]; ?></textarea>
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
					<button type="submit" class="btn btn-primary btn-lg btn-block" name="btnUpdate" id="btnUpdate"> Modificar datos <i class="fas fa-pen-square"></i></button>
					<hr>
					<a href="javascript:window.open('','_self').close();" class="btn btn-danger btn-lg btn-block"> Cancelar <i class="fas fa-times"></i></a>
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
							$("#txtStation").val(json.workstation);
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