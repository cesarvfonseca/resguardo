 <!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<nav>
    <div class="nav-wrapper blue-grey darken-1">
        <a class="left brand-logo">
            <img src="img/mexq_logo.png" width="150" alt="Logo MEXQ" class="responsive-img">
            <!-- MEXQ | SAC -->
        </a>
        <ul class="right hide-on-med-and-down">
                       
            <?php if (empty($request)){  ?>
                <li><a>Resguardo de Equipos MEXQ</a></li>
            <?php } else {?>
            <?php $usuario_nombre = 'Hitomi';?>
                 <!-- MAS OPCIONES -->
                <li><a href="index.php?request=main-page">Menu Principal</a></li>
                <li><a href="#">Equipos de computo</a></li>
                <li><a href="#">Smartphones</a></li>
                <li><a href="#">Impresoras</a></li>
                <li><a href="#">Historial</a></li>
                <li><a href="#">Administrar Sitio</a></li>
                <li><a>Bienvenido (a): <?php echo $usuario_nombre; ?></a></li>
                <li><a class="btn red" id="btnSalir">Salir</a></li>

            <?php } ?>
            
        </ul>
    </div>
</nav>