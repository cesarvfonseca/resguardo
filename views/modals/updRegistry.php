<div class="modal fade" id="updRegistry" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/registry/control-registry.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Actualizar datos del equipo <label id="computercode"></label></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-horizontal">
						<!-- <div class="card card-inverse" style="background-color: #333; border-color: #333;"> -->
						<div class="card card-outline-success mb-3">
							<div class="card-block">
								<h3 class="card-title">Datos del responsable</h3>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Número de nomina</small>
									    <input type="text" class="form-control" name="empcode" id="empcode">
									    <input type="hidden" class="form-control" name="txt_rCode" id="txt_rCode">
										<input type="hidden" class="form-control" name="txt_rNames" id="txt_rNames">
										<input type="hidden" class="form-control" name="txt_rMail" id="txt_rMail">
										<input type="hidden" class="form-control" name="txt_rPosition" id="txt_rPosition">
										<input type="hidden" class="form-control" name="txt_rBranch" id="txt_rBranch">
										<input type="hidden" class="form-control" name="txt_rWS" id="txt_rWS">
										<input type="hidden" class="form-control" name="txt_rDate" id="txt_rDate">
										<input type="hidden" class="form-control" name="txtcodeRegistry" id="txtcodeRegistry">
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
									  	<small class="form-text text-muted">Nombre del empleado</small>
									    <input type="text" class="form-control" name="empname" id="empname" placeholder="Nombres">
									  </div>
									</div>							
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Puesto</small>
									    <input type="text" class="form-control" name="empposition" id="empposition" placeholder="Puesto">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Correo</small>
									    <input type="text" class="form-control" name="empmail" id="empmail" placeholder="Correo">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
									    <!-- <input type="text" class="form-control" name="empbranch" id="empbranch" placeholder="Sucursal"> -->
										<select class="form-control" name="empbranch" id="empbranch">
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
									    <input type="text" class="form-control" name="emparea" id="emparea" placeholder="Planta / Departamento">
									  </div>
									</div>									
								</div>	
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<small class="form-text text-muted">Fecha de entrega</small>
											<input type="date" class="form-control" name="txtdelivery" id="txtdelivery">
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
										<a href="#" target="_blank" class="btn btn-primary btn-block" id="cartaresponsiva">Ver Carta Responsiva</a>
										<hr>
										<a href="#" target="_blank" class="btn btn-info btn-block" id="launchPDF">Ver PDF</a>
										<a href="#" target="_blank" class="btn btn-success btn-block" id="launchXML">Ver XML</a>
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
									    <select class="form-control" name="computertype" id="computertype">
									      	<option value="MQ">Laptop</option>
											<option value="PC">Desktop</option>
											<option value="MF">Multifuncional / Impresora</option>
											<option value="MQ">AIO</option>
									    </select>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Estatus</small>
									    <select class="form-control" name="computerstatus" id="computerstatus">
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
									    <input type="text" class="form-control" name="computerbrand" id="computerbrand" placeholder="Marca">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Modelo</small>
									    <input type="text" class="form-control" name="computermodel" id="computermodel" placeholder="Modelo">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Serie</small>
									    <input type="text" class="form-control" name="computerserial" id="computerserial" placeholder="No. Serie">
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Producto</small>
									    <input type="text" class="form-control" name="computerproduct" id="computerproduct" placeholder="No. Producto">
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Factura</small>
									    <input type="text" class="form-control" name="invoicenbr" id="invoicenbr" placeholder="No. Factura">
									  </div>
									</div>	
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Fecha factura</small>
										    <input class="form-control" type="date" name="invoicedate" id="invoicedate">
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
										    <textarea class="form-control" name="computercomment" id="computercomment" rows="3"></textarea>
										  </div>
									</div>
								</div>																			
							</div>
						</div>		

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
					<button type="submit" class="btn btn-primary" name="btn_Update">Modificar Datos</button>
				</div>
			</div>
		</form>
	</div>
</div>