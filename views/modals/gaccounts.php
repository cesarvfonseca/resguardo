<?php 
	include_once 'database/connection.php';
	$conn = Connect();
	$qryAcc= "SELECT * FROM accounts";
 ?>

<div class="modal fade" id="gaccounts" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Cuentas de google</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-12">
							<form>
								<div class="form-group">

									<div class="row">
										<div class="col-6">
										  <div class="form-group">
										  	<!-- <small class="form-text text-muted">Cuenta</small> -->
										    <input readonly type="text" class="form-control" name="account" id="account">
										  </div>
										</div>
										<div class="col-6">
										  <div class="form-group">
										  	<!-- <small class="form-text text-muted">Contraseña</small> -->
	    									<div class="input-group" id="show_hide_password">
												<input readonly class="form-control" type="password" name="pwd" id="pwd">
												<div class="input-group-addon">
													<a href=""><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
												</div>
											</div>
										  </div>
										</div>	
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>