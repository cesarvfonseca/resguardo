<?php 
	$conn = Connect();
	$sql = "SELECT * FROM `user`";
	// $sql = "SELECT * FROM `user` WHERE employee_id<>'08444'";
	$execSQL = $conn->query($sql);
	$empId = array();
	while ($row = $execSQL->fetch())
	{
		$employee_id = utf8_encode($row['employee_id']);
		array_push($empId, $employee_id);//Guardar id del empleado
	}
?>

<div class="modal fade" id="newRegistry" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/dataReg.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Agregar equipo</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-horizontal">
						<div class="card card-outline-success mb-3">
							<div class="card-block">
								<h3 class="card-title">Datos del responsable</h3>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Número de nomina</small>
									    <input type="text" class="form-control" id="txtCodeemp" name="txtCodeemp" placeholder="Número de nomina">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Teléfono</small>
									    <input type="phone" class="form-control" name="txtPhone" placeholder="Teléfono de contacto">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Nombre(s)</small>
									    <input type="text" class="form-control" id="txtName" name="txtName" autocomplete="off" placeholder="Nombres">
									  </div>
									</div>							
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Puesto</small>
									    <input type="text" class="form-control" name="txtPosition" id="txtPosition" placeholder="Puesto">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Correo</small>
									    <input type="text" class="form-control" name="txtEmail" id="txtEmail" placeholder="Correo">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
									    <input type="text" class="form-control" name="txtBranch" id="txtBranch" placeholder="Sucursal">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Planta ó departamento</small>
									    <input type="text" class="form-control" name="txtStation" id="txtStation" placeholder="Planta / Departamento">
									  </div>
									</div>								
								</div>															
							</div>
						</div>	
						<br>
						<!-- <div class="card card-inverse" style="background-color: #333; border-color: #333;"> -->
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
									    <input type="text" class="form-control" name="txtBrand" placeholder="Marca">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Modelo</small>
									    <input type="text" class="form-control" name="txtModel" placeholder="Modelo">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Serie</small>
									    <input type="text" class="form-control" name="txtSerie" placeholder="No. Serie">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Producto</small>
									    <input type="text" class="form-control" name="txtProduct" placeholder="No. Producto">
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
										    <input class="form-control" type="date" value="1999-01-01" name="txtInvoicedate">
										</div>									
									</div>															
								</div>
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<label class="col-xs-4 control-label">Adjunta Factura</label>
											<div class="col-xs-4 form-group-file">
												<input type="file" class="form-control" id="archivo[]" name="archivo[]" multiple="">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Comentarios</small>
										    <textarea class="form-control" name="txtComment" rows="3"></textarea>
										  </div>
									</div>
								</div>																			
							</div>
						</div>		

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button type="submit" class="btn btn-primary" name="btnSave">Guardar datos</button>
				</div>
			</div>
		</form>
	</div>
</div>


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
							$("#txtPosition").val(json.employee_position);
							$("#txtEmail").val(json.login);
							$("#txtBranch").val(json.employee_branch);
							$("#txtArea").val(json.employee_area);
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