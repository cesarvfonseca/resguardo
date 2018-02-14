<!-- <div class="modal" id="editsp" tabindex="-1" role="dialog" aria-labellebdy="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4>Editar Equipo</h4>
			</div>
			<div class="modal-body">                      
				<form action="actualiza.php" method="POST">                       		

					<input  id="id" name="id" type="hidden" ></input>   		
					<div class="form-group">
						<label for="spcode">Codigo Smartphone:</label>
						<input class="form-control" id="spcode" name="spcode" type="text" ></input>
					</div>
					<div class="form-group">
						<label for="empcode">Nomina:</label>
						<input class="form-control" id="empcode" name="empcode" type="text" ></input>
					</div>
					<div class="form-group">
						<label for="empname">Responsable:</label>
						<input class="form-control" id="empname" name="empname" type="text" ></input>
					</div>

					<input type="submit" class="btn btn-success">							
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
			</div>
		</div>
	</div>
</div>  -->

<div class="modal fade" id="editsp" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/dataReg.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Editar Smartphone</h5>
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
						<!-- <div class="card card-inverse" style="background-color: #333; border-color: #333;"> -->
						<div class="card card-outline-info mb-3">
							<div class="card-block">
								<h3 class="card-title">Datos del equipo</h3>
								<div class="row">
									<div class="col-4">
										<div class="form-group">
											<small class="form-text text-muted">Codigo</small>
											<input type="text" class="form-control" name="spcode" id="spcode" placeholder="Color">
										</div>
									</div>

									<div class="col-4">
										<div class="form-group">
											<small class="form-text text-muted">Color</small>
											<input type="text" class="form-control" name="spcolor" id="spcolor" placeholder="Color">
										</div>
									</div>

									<div class="col-4">
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
									    <input type="mail" class="form-control" name="spaccount" id="spaccount" placeholder="Correo de google">
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