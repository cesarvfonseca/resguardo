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
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Nombre (s)</small>
                    					<input requiered class="form-control" type="text" name="nombres" placeholder="Nombres" autofocus/>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Apellido (s)</small>
                    					<input class="form-control" type="text" name="apellidos" placeholder="Apellidos" />
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Usuario</small>
                    					<input class="form-control" type="text" name="usuario"placeholder="Usuario"/>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
				  	                    <small class="form-text text-muted">Rol</small>
					                    <select class="form-control" name="roll">
					                      <option value="1">Administrador</option>
					                      <option value="0">Limitado</option>
					                    </select>
									  </div>
									</div>							
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Contraseña</small>
                    					<input class="form-control" type="password" name="password" placeholder="Contraseña" />
									  </div>
									</div>										
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Repita su contraseña</small>
                						<input class="form-control" type="password" name="password2" placeholder="Repita su contraseña" />
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