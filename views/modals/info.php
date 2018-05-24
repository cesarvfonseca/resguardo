<div class="modal fade" id="info" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<form class="form-horizontal" method="post" action="controlers/dataReg.php" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Datos del equipo <label id="computercode"></label></h5>
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
									    <input type="text" class="form-control" name="empcode" id="empcode" placeholder="Número de nomina" readonly>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Teléfono</small>
									    <input type="phone" class="form-control" name="empphone" id="empphone" placeholder="Teléfono de contacto" readonly>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Nombre del empleado</small>
									    <input type="text" class="form-control" name="empname" id="empname" placeholder="Nombres" readonly>
									  </div>
									</div>							
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Puesto</small>
									    <input type="text" class="form-control" name="empposition" id="empposition" placeholder="Puesto" readonly>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Correo</small>
									    <input type="text" class="form-control" name="empmail" id="empmail" placeholder="Correo" readonly>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Sucursal</small>
									    <input type="text" class="form-control" name="empbranch" id="empbranch" placeholder="Sucursal" readonly>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Planta ó departamento</small>
									    <input type="text" class="form-control" name="emparea" id="emparea" placeholder="Planta / Departamento" readonly>
									  </div>
									</div>									
								</div>	
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<small class="form-text text-muted">Fecha de entrega</small>
											<input type="date" class="form-control" name="txtdelivery" id="txtdelivery" readonly>
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
									    <select class="form-control" name="computertype" id="computertype" disabled>
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
									    <select class="form-control" name="computerstatus" id="computerstatus" disabled>
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
									    <input type="text" class="form-control" name="computerbrand" id="computerbrand" placeholder="Marca" readonly>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Modelo</small>
									    <input type="text" class="form-control" name="computermodel" id="computermodel" placeholder="Modelo" readonly>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Serie</small>
									    <input type="text" class="form-control" name="computerserial" id="computerserial" placeholder="No. Serie" readonly>
									  </div>
									</div>
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Producto</small>
									    <input type="text" class="form-control" name="computerproduct" id="computerproduct" placeholder="No. Producto" readonly>
									  </div>
									</div>								
								</div>
								<div class="row">
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">No. Factura</small>
									    <input type="text" class="form-control" name="invoicenbr" id="invoicenbr" placeholder="No. Factura" readonly>
									  </div>
									</div>	
									<div class="col-6">
									  <div class="form-group">
									  	<small class="form-text text-muted">Fecha factura</small>
										    <input class="form-control" type="date" name="invoicedate" id="invoicedate" readonly>
										</div>									
									</div>															
								</div>
<!-- 								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<label class="col-xs-4 control-label">Adjunta Factura</label>
											<div class="col-xs-4 form-group-file">
												<input type="file" class="form-control" id="archivo[]" name="archivo[]" multiple="">
											</div>
										</div>
									</div>
								</div> -->
								<div class="row">
									<div class="col-12">
									  <div class="form-group">
									  	<small class="form-text text-muted">Comentarios</small>
										    <textarea class="form-control" name="computercomment" id="computercomment" rows="3" readonly></textarea>
										  </div>
									</div>
								</div>																			
							</div>
						</div>		

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
					<!-- <button type="submit" class="btn btn-primary" name="btnSave">Guardar datos</button> -->
				</div>
			</div>
		</form>
	</div>
</div>