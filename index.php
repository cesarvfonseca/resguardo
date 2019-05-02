<?php
    session_start();
  	if (empty($_REQUEST['request']))
		  $request = null;
    else
      $request = $_REQUEST['request'];
    
    if (empty($_REQUEST['deviceCode']))
		  $dc = null;
    else
      $dc = $_REQUEST['deviceCode'];
?>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <title>Resguardo MEXQ</title>
  </head>
  <body>
    <head>
        <!-- BARA DE NAVEGACION DEL SITIO -->
        <?php include 'inc/templates/navbar.php'; ?>
    </head>
    <div class="container-fluid">
        <?php 
              if (!isset($_SESSION['usuario_nombre']) || empty($_SESSION['usuario_nombre']))
              {
                if(isset($dc))
                include 'inc/templates/report.php';
                else
                include 'inc/templates/login.php';
              }
              else
              {
                switch ($request){
                  case 'main-page':
                    include 'inc/templates/main.php'; 
                    break;
                  case 'maint':
                    include 'inc/templates/maint/menu.php'; 
                    break;
                  case 'deviceCode':
                    include 'inc/templates/report.php'; 
                    break;
                  case 'chooseMaint':
                    include 'inc/templates/maint/sked_choose.php'; 
                    break;
                  case 'skedMaint':
                    include 'inc/templates/maint/sked_maint.php'; 
                    break;
                  case 'computers' || 'printers' || 'newcomputer' || 'editcomputer' || 'editprinter' || 'smartphone' || 
                        'newsmartphone' || 'editsmartphone' || 'modifysmartphone' || 'support' || 'history' || 'maintControl' || 
                        'google-accounts' || 'newaccount' || 'edit-account' || 'mails' || 'newmail' || 'editMail' || 'newSupport':
                    include 'inc/templates/table_template.php'; 
                    break;      
                  default:
                    include 'inc/templates/login.php';      
                    break;   
                }
              }
        ?> 
    </div>
        <?php include 'inc/templates/footer.php' ?> 
  </body>

</html>