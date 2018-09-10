<?php 
	// echo "<font face='Arial' size='5'>Respuesta</font><br>"; 
	// echo "variable 1 =".$_REQUEST['saludo']."<br>"; 
	// echo "variable 2 =".$_REQUEST['texto']."<br>"; 
	// echo "variable 3 =".$_GET['saludo']."<br>"; 
	// echo "variable 4 =".$_REQUEST['texto']."<br>"; 
$conn = Connect();
$code = $_REQUEST['computer_code'];
$status_colors = array('3' => '#FF8000');

$font_colors = array('3' => '#FFFFFF');


	?>
	<form method="POST" action="controlers/support/save_data.php" enctype="multipart/form-data">
		<div class="row justify-content-md-center">
			<h3 class="display-4">Soporte al equipo <?php echo $code ?></h3>
		</div>
		<div class="form">
			<div class="row justify-content-md-center">
				<div class="col">
					<div class="card card-outline-info mb-3">
						<div class="card-block">
							<h4 class="card-title">Datos soporte</h4>

							<div class="row">
							<?php 
							$stmSelect = "SELECT * FROM registry WHERE code='$code'";
							$execSelect = $conn->query($stmSelect);
							while ($row = $execSelect->fetch()): 
							?>
								<div class="col-2">
									<div class="form-group">
										<small class="form-text text-muted">Nomina</small>
										<input type="text" class="form-control form-control-sm" name="txtEmpCode" value="<?php echo $row ["id_employee"]; ?>" readonly>
										<input type="hidden" class="form-control form-control-sm" name="txtcomputerCode" value="<?php echo $row ["code"]; ?>" >
									</div>
								</div>

								<div class="col-4">
									<div class="form-group">
										<small class="form-text text-muted">Nombre(s)</small>
										<input type="text" class="form-control form-control-sm" name="txtEmpName" value="<?php echo $row ["employee_name"]; ?>" readonly>
									</div>
								</div>	

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Puesto</small>
										<input type="text" class="form-control form-control-sm" name="txtPosition" value="<?php echo $row ["position"]; ?>" disabled>
									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Correo</small>
										<input type="text" class="form-control form-control-sm" name="txtMail" value="<?php echo $row ["mail"]; ?>" disabled>
									</div>
								</div>	
							<?php 
								endwhile;
							?>	
							</div>
							
							<div class="row">

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Causa</small>
										<select class="form-control" name="cmbReason">
											<option value="Internet">Internet</option>
											<option value="Correo">Correo</option>
											<option value="Software">Software</option>
											<option value="Hardware">Hardware</option>
											<option value="Otro">Otro</option>
										</select>

									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Razón</small>
										<input type="text" class="form-control" name="txtOther" placeholder="Razón">
									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Estatus</small>
										<select class="form-control" name="cmbStatus">
											<option value="1">Realizado</option>
											<option value="2">En proceso</option>
											<option value="3">Seguimiento</option>
										</select>
									</div>
								</div>

								<div class="col-3">
									<div class="form-group">
										<small class="form-text text-muted">Fecha</small>
										<input class="form-control" type="date" name="txtSupportDate">
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<small class="form-text text-muted">Descripción</small>
										<textarea class="form-control" name="txtDesc" rows="3"></textarea>
									</div>
								</div>
							</div>

							<div class="col">
								<div class="card mb-3">
									<button type="submit" class="btn btn-info btn-block" name="btnSave" id="btnSave">Guardar <i class="fas fa-save"></i></button>
									<br>
									<a href="javascript:window.open('','_self').close();" class="btn btn-danger">Cerrar <i class="fas fa-times"></i></a>
								</div>
							</div>

						</div>
					</div>

					<div class="card card-outline-warning mb-3">
						<div class="card-block table-responsive">
							<h5 class="card-title">Historial de soporte</h5>
					        <table class="table table-sm table-bordered table-hover table-striped">
					          <thead class="thead-inverse">
					            <tr>
					              <th>Estado</th>
					              <th>Agente</th>
					              <th>Responsable</th>
					              <th>Fecha</th>
					              <th>Causa</th>
					              <th>Otros</th>
					              <th>Descripción</th>
					              <th>Acción</th>
					            </tr>
					          </thead>
					          <tbody>
							<?php 
								$select = "SELECT * FROM support WHERE computer_code='$code'";
								$st = $conn->prepare($select);
					            $result = $st->execute();
					            $rows = $st -> fetchAll(\PDO::FETCH_OBJ);
					            foreach ($rows as $row) 
					            {
							?>
								
								<tr 
								style="background-color: <?php print($status_colors[$row->status]);?>; color: <?php print($font_colors[$row->status]);?>">
					                <td >
					                	<?php 
						                	$st = '';
						                	if ($row->status=='1') {
						                		$st = 'Realizado';
						                	}elseif ($row->status=='2') {
						                		$st = 'En Proceso';
						                	}
						                	elseif ($row->status=='3') {
						                		$st = 'Seguimiento';
						                	}
						                	print($st);
					                	?>
				            		</td>
					                <td ><?php print($row->agent); ?></td>
					                <td ><?php print($row->employee_name); ?></td>
					                <td><?php print($row->support_date); ?></td>
					                <td><?php print($row->reason); ?></td>
					                <td><?php print($row->comment); ?></td>
					                <td class="col-1"><?php print($row->description); ?></td>
					                <td>
					                  	<a href="index.php?supportID=<?php print($row->id); ?>" class="btn btn-sm btn-info" title="Editar"><i class="fas fa-pen-square"></i></a>
				                	</td>
								</tr>
							<?php 
								}
							?>	
							</tbody>
        					</table>
						</div>
					</div>

				</div>

			</div>
		</div>
	</form>