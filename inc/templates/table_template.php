<?php include 'inc/model/populate-template.php'; ?>
<div class="row">
    <div class="col-md-12">
        <h1>Panel <?php echo $title; ?></h1>
    </div>
</div>

<br>

<div class="alert alert-info alert-dismissible fade show" role="alert">
  <strong>Bienvenido!</strong> Nueva plataforma de resguardo MEXQ.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<br>

<?php if ($section == 'computers'): ?>

<div class="row">
    <div class="col-md-9">
        <a class="btn btn-success text-white" id="btnnewComputer" title="Nuevo registro">
        <i class="fas fa-plus-circle">
        </i> Nuevo equipo </a>
    </div>
    <div class="col-md-3">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default">Buscar</span>
            </div>
            <input type="text" class="form-control" aria-label="Sizing example input" id="search" aria-describedby="inputGroup-sizing-default">
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <table class="table table-striped table-bordered table-hover table-sm">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nomina</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Sucursal</th>
                    <th scope="col">Area</th>
                    <th scope="col">Marca</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">No. Serie</th>
                    <th scope="col">No. Parte</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">No. Factura</th>
                    <th style="width: 8%;" scope="col">Accion</th>
                </tr>
            </thead>
            <tbody id="dataTable">
                
            </tbody>
        </table>
    </div>
</div>

<?php elseif ($section == 'newcomputer'): ?>
    <?php include 'computers/new.php' ?>
<?php endif; ?>