<div class="modal fade" id="userRegistry" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/userReg.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Agregar usuario</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-horizontal">
						<div class="card card-inverse">
							<div class="card-block">
								<h3 class="card-title">Datos del usuario</h3>
								<div class="row">
									<div class="col-4">
									  <div class="form-group">
									  	<small class="form-text text-muted">Nomina</small>
                    					<input requiered class="form-control" type="text" name="txtID" placeholder="Numero de nomina" autofocus/>
									  </div>
									</div>
									<div class="col-8">
									  <div class="form-group">
									  	<small class="form-text text-muted">Nombre (s)</small>
                    					<input requiered class="form-control" type="text" name="txtName" placeholder="Nombres del empleado"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Puesto</small>
                    					<input requiered class="form-control" type="text" name="txtPosition" placeholder="Puesto del empleado"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-4">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
                    					<input requiered class="form-control" type="text" name="txtBranch" placeholder="Sucursal del empleado"/>
									  </div>
									</div>
									<div class="col-8">
									  <div class="form-group">
									  	<small class="form-text text-muted">Area</small>
                    					<input requiered class="form-control" type="text" name="txtArea" placeholder="Area del empleado"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Correo</small>
                    					<input class="form-control" type="text" name="txtMail" placeholder="Correo del empleado"/>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
				  	                    <small class="form-text text-muted">Rol</small>
					                    <select class="form-control" name="txtRoll">
					                      <option value="3">Limitado</option>
					                      <option value="1">Supervisor</option>
					                      <option value="0">Administrador</option>
					                    </select>
									  </div>
									</div>							
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Contraseña</small>
                    					<input class="form-control" type="password" name="txtPassword" placeholder="Contraseña" />
									  </div>
									</div>										
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Repita su contraseña</small>
                						<input class="form-control" type="password" name="txtPassword2" placeholder="Repita su contraseña" />
									  </div>
									</div>								
								</div>														
							</div>
						</div>	
						<br>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
					<button type="submit" class="btn btn-primary" name="btnSave">Guardar usuario</button>
				</div>
			</div>
		</form>
	</div>
</div>