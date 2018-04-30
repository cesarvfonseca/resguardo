<?php
include 'views/modals/add_gaccount.php';
include 'views/modals/edit_gaccount.php';
include_once 'database/connection.php';
$mensaje='';
$conn = Connect();

$consulta = $conn -> prepare("
	SELECT * FROM `accounts` ORDER BY `account` ASC");

$consulta ->execute();
$consulta = $consulta ->fetchAll();
if(!$consulta){
	$mensaje .= 'NO HAY USUARIOS PARA MOSTRAR';
}
?>
	<div class="row">
		<div class="col-12">
			<div  class="page-header">
				<h1>Google<small>&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;Cuentas de correo</small></h1>
				<br>
			</div>
				<button class="btn btn-md btn-success" data-toggle="modal" data-target="#userRegistry">
					<i class="fas fa-plus-circle"></i>
					 Agregar cuenta
				</button>
				<hr>
				<div class="row">
					<div class="col-3"></div>
					<div class="col-6">
						<div class="table table-sm table-hover table-striped">
							<table class="table table-striped" id="example">
								 <thead class="thead-inverse">
									<th> # </th>
									<th> Sucursal </th>
		                            <th> Correo </th>
		                            <th>Opciones</th>
								  </thead>
								  <tr>
								<?php 
									$c=1;
									foreach ($consulta as $row):

		                            echo "<td>". $c . "</td>";
		                            echo "<td>". $row['branch']. "</td>";
		                            echo "<td>". $row['account']. "</td>";
		                            echo "	<td>
		                            			<a data-toggle='modal' data-target='#editGmail'
		                            				data-id ='" .$row[0] ."' 
													data-branch = '" .$row[1] ."' 
													data-account = '" .$row[2] ."' 
													data-pwd = '" .$row[3] ."' 
						                            class='btn btn-sm btn-warning text-white'><i class='fas fa-pen-square'></i>
						                        </a>
						                        <a href='controlers/g-accounts/control-gaccounts.php?idAccount=".$row[0]."' 
						                        	class='btn btn-sm btn-danger' onclick='return confirm('Seguro de eliminar?')'>
						                        	<i class='fas fa-minus-circle'></i>
						                        </a>
				                            </td>";
								  	$c++;
								?>
								</tr>
							<?php endforeach; ?>
							</table>
						</div>
					</div>
					<div class="col-3"></div>
				</div>
			</div>
	</section>

</body>
</html>