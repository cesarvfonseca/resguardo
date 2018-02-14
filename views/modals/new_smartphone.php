<div class="modal" id="nuevoUsu" tabindex="-1" role="dialog" aria-labellebdy="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4>Nuevo Contacto</h4>                       
			</div>
			<div class="modal-body">
				<form action="insertar.php" method="GET">              		
					<div class="form-group">
						<label for="nombre">Nombre:</label>
						<input class="form-control" id="nombre" name="nombre" type="text" placeholder="Nombre"></input>
					</div>
					<div class="form-group">
						<label for="edad">Edad:</label>
						<input class="form-control" id="edad" name="edad" type="text" placeholder="Edad"></input>
					</div>
					<div class="form-group">
						<label for="direccion">Direccion:</label>
						<input class="form-control" id="direccion" name="direccion" type="text" placeholder="Direccion"></input>
					</div>

					<input type="submit" class="btn btn-success" value="Salvar">
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
			</div>
		</div>
	</div>
</div> 