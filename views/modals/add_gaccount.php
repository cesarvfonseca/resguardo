<div class="modal fade" id="userRegistry" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/g-accounts/control-gaccounts.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Agregar cuenta de google</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-horizontal">
						<div class="card card-inverse">
							<div class="card-block">
								<h3 class="card-title">Datos de la cuenta</h3>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
                    					<input requiered class="form-control" type="text" name="txtBranch" placeholder="Sucursal"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Dirección de correo</small>
                    					<input requiered class="form-control" type="mail" name="txtMail" placeholder="Dirección de correo"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Contraseña</small>
                    					<input requiered class="form-control" type="password" name="pwd" placeholder="Contraseña de la cuenta"/>
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
					<button type="submit" class="btn btn-primary" name="btnDatasend">Guardar datos</button>
				</div>
			</div>
		</form>
	</div>
</div>