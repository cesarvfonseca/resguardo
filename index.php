<?php
  	if (empty($_REQUEST['request']))
		  $request = null;
    else
		  $request = $_REQUEST['request'];
?>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <title>Resguardo MEXQ</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <head>
        <!-- BARA DE NAVEGACION DEL SITIO -->
        <?php include 'inc/templates/navbar.php'; ?>
    </head>
    <div class="container-fluid">
        <?php 
              switch ($request){
                case 'main-page':
                  include 'inc/templates/main.php'; 
                  break;
                case 'computers' || 'smartphone' || 'printers':
                  include 'inc/templates/table_template.php'; 
                  break;                    
                default:
                  include 'inc/templates/login.php';      
                  break;   
              }
        ?> 
    </div>
        <?php include 'inc/templates/footer.php' ?> 
  </body>
</html>