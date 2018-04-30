<div class="modal" id="newsp" tabindex="-1" role="dialog" aria-labellebdy="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="POST" action="controlers/sp/sp_new.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Nuevo Smartphone</h5>
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
									  	<input  id="id" name="id" type="hidden" ></input>
									    <input type="text" class="form-control" name="empcode" id="empcode" placeholder="Número de nomina">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Teléfono</small>
									    <input type="phone" class="form-control" name="empphone" id="empphone" placeholder="Teléfono de contacto">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Responsable</small>
									    <input type="text" class="form-control" name="empname" id="empname" placeholder="Nombres">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
									    <input type="text" class="form-control" name="empbranch" id="empbranch" placeholder="Sucursal">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Planta ó departamento</small>
									    <input type="text" class="form-control" name="emparea" id="emparea" placeholder="Planta / Departamento">
									  </div>
									</div>								
								</div>															
							</div>
						</div>	
						<br>
						<div class="card card-outline-info mb-3">
							<div class="card-block">
								<h3 class="card-title">Datos del equipo</h3>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<small class="form-text text-muted">Color</small>
											<input type="text" class="form-control" name="spcolor" id="spcolor" placeholder="Color">
										</div>
									</div>

									<div class="col-6">
										<div class="form-group">
											<small class="form-text text-muted">Estado</small>
											<select class="form-control" name="spstatus" id="spstatus">
												<option value="1">Activo</option>
												<option value="0">Baja</option>
											</select>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Marca</small>
									    <input type="text" class="form-control" name="spbrand" id="spbrand" placeholder="Marca">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Modelo</small>
									    <input type="text" class="form-control" name="spmodel" id="spmodel" placeholder="Modelo">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">IMEI</small>
									    <input type="text" class="form-control" name="spimei" id="spimei" placeholder="IMEI">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Cuenta de Google</small>
									  	<select class="form-control" name="spaccount" id="spaccount">
										<?php 
									    $conn = Connect();
										$sql = "SELECT * FROM `accounts` ORDER BY `accounts`.`account` ASC";
										$execSQL = $conn->query($sql);
										while ($row = $execSQL->fetch())
										{
									    	echo '<option value="'.$row['account'].'">'. $row['account'] .'</option>';
										}
									    ?>
									    </select>
									  </div>

									</div>
									<div class="col-12">
										<div class="form-group">
											<small class="form-text text-muted">Comentarios</small>
											<textarea class="form-control" name="spcomment" id="spcomment" rows="2"></textarea>
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


