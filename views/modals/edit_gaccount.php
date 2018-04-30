<div class="modal fade" id="editGmail" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/g-accounts/control-gaccounts.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modificar cuenta de google</h5>
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
                    					<input requiered class="form-control" type="text" id="txtBranch" name="txtBranch" placeholder="Sucursal"/>
                    					<input hidden class="form-control" type="text" id="txtID" name="txtID" placeholder="Sucursal"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Dirección de correo</small>
                    					<input requiered class="form-control" type="mail" id="txtMail" name="txtMail" placeholder="Dirección de correo"/>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<!-- <small class="form-text text-muted">Contraseña</small> -->
    									<div class="input-group" id="show_hide_password">
											<input class="form-control" type="password" name="pwd" id="pwd">
											<div class="input-group-addon">
												<a href=""><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
											</div>
										</div>
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
					<button type="submit" class="btn btn-primary" name="btnDatau">Guardar datos</button>
				</div>
			</div>
		</form>
	</div>
</div>