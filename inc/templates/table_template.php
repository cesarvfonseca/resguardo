<?php include 'inc/model/populate-template.php';?>

<div class="row">
    <div class="col-md-12">
        <h1 class="display-4 text-center tittlePage">Panel <?php echo $title; ?></h1>
    </div>
</div>

<hr>
<?php if(!(substr($section, 0, 3) === 'new' || substr($section, 0, 4) == 'edit' || substr($section, 0, 4) == 'modi')): ?>

<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Bienvenido!</strong> a la nueva plataforma de resguardo MEXQ.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<br>

<div class="row">
    <?php if(!(substr($section, 0, 4) == 'hist') && $usuario_departamento == $ti_acceso): ?>
    <div class="col-md-9">
        <a class="btn btn-success text-white" id="btnNew" data-type="<?php echo $section ?>" title="Nuevo registro">
            <i class="fas fa-plus"></i>
            Nuevo registro
        </a>


        <a class="btn btn-primary text-white" id="btnGA" title="Cuentas de Google" <?php echo $btnG ?>>
            <i class="fab fa-google"></i>
            Cuentas Google
        </a>
    </div>
    <?php endif; ?>
    <div class="col-md-3">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-search"></i></span>
            </div>
            <input type="text" class="form-control" aria-label="Sizing example input" id="searchBox" aria-describedby="inputGroup-sizing-default">
            <button class="btn btn-success ml-3 exportTable"><i class="fas fa-file-excel"></i> Exportar</button>
        </div>
    </div>
</div>

<?php endif; ?>

<?php if ($section == 'computers'): ?>
    <?php include 'computers/computers_view.php' ?>
<?php elseif ($section == 'newcomputer'): ?>
    <?php include 'computers/new.php' ?>
<?php elseif ($section == 'editcomputer'): ?>
    <?php include 'computers/edit.php' ?>  
<?php elseif ($section == 'support'): ?>
    <?php include 'accounts/support_view.php' ?> 
<?php elseif ($section == 'printers'): ?>
    <?php include 'printers/printers_view.php' ?>
<?php elseif ($section == 'newprinter'): ?>
    <?php include 'printers/new.php' ?>  
<?php elseif ($section == 'editprinter'): ?>
    <?php include 'printers/edit.php' ?> 
<?php elseif ($section == 'smartphone'): ?>
    <?php include 'smartphones/smartphones_view.php' ?> 
<?php elseif ($section == 'newsmartphone'): ?>
    <?php include 'smartphones/new.php' ?>
<?php elseif ($section == 'editsmartphone'): ?>
    <?php include 'smartphones/edit.php' ?>
<?php elseif ($section == 'modifysmartphone'): ?>
    <?php include 'smartphones/modify.php' ?>
<?php elseif ($section == 'google-accounts'): ?>
    <?php include 'accounts/accounts_view.php' ?>
<?php elseif ($section == 'newaccount'): ?>
    <?php include 'accounts/new.php' ?>
<?php elseif ($section == 'edit-account'): ?>
    <?php include 'accounts/edit.php' ?>    
<?php elseif ($section == 'history'): ?>
    <?php include 'history/history_view.php' ?>
<?php elseif ($section == 'mails'): ?>
    <?php include 'mails/mails_view.php' ?>
<?php elseif ($section == 'newmail'): ?>
    <?php include 'mails/new.php' ?>
<?php elseif ($section == 'editMail'): ?>
    <?php include 'mails/edit.php' ?>
<?php elseif ($section == 'newSupport'): ?>
    <?php include 'support/new.php' ?>
<?php elseif ($section == 'editSupport'): ?>
    <?php include 'support/edit.php' ?>
<?php elseif ($section == 'maintControl'): ?>
    <?php include 'maint/maint_view.php' ?>
<?php endif; ?>