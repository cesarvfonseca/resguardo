<?php 
    $st = "";
    $pgm = "#";
  if (!($_SESSION['level']!='0')){
    $st = "";
    $pgm = "views/history.php";
  }else{
    $st = "disabled";
    $pgm = "#";
  }

  
?>
<nav class="navbar navbar-toggleable-md navbar-light bg-primary">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a href="#" class="navbar-brand bg-primary text-white">MEXQ | Sistema de Resguardo</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link active bg-primary text-white" href="index.php"><i class="fas fa-home"></i> Equipos de computo <span class="sr-only">(current)</span></a>
      </li>
      <?php 
      if ($_SESSION['level']<'2') 
      {
       ?>
      <li class="nav-item">
        <a class="nav-link active bg-primary text-white" href="index.php?h=record" title="Historial de equipos" ><i class="fas fa-history"></i> Historial</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active bg-primary text-white" href="index.php?h=smartP" title="Smartphones"><i class="fas fa-mobile-alt"></i> Smartphones</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle  <?php echo $st ?> bg-primary text-white" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-cog fa-spin"></i>
           Configuración
        </a>
        <div class="dropdown-menu bg-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-primary text-white" href="index.php?h=userAdmin"><i class="fas fa-users"></i> Administrar usuarios</a>
          <a class="dropdown-item bg-primary text-white" href="index.php?h=support"><i class="far fa-life-ring fa-spin"></i> Soporte</a>
          <a class="dropdown-item bg-primary text-white" href="index.php?h=maintenance"><i class="fas fa-calendar-alt"></i> Mantenimiento de equipos</a>
        </div>
      </li>
      <?php 
      }
       ?>
    </ul>

    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <div class="nav-link bg-primary text-white">Bienvenido <?php  echo $_SESSION['whoIs']?></div>
      </li>
      <li class="navbar-item">
        <div class="pull-right"><a href="controlers/logout.php"><button type="submit" class="btn navbar-btn btn-danger my-sm-0" name="logout" id="logout"  value="Log Out">Salir <i class="fas fa-sign-out-alt"></i></button></a></div>
      </li>
    </ul>
           

  </div>
</nav>
