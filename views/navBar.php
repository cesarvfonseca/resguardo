<?php 
    $st = "";
    $pgm = "#";
  if (!($_SESSION['level']>0)){
    $st = "disabled";
    $pgm = "#";
  }else{
    $st = "";
    $pgm = "views/history.php";
  }
?>
<nav class="navbar navbar-toggleable-md navbar-light bg-primary">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">MEXQ</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link active" href="index.php"> Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="index.php?h=1" title="Historial de equipos" >Historial</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle  <?php echo $st ?>" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Configuración
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="index.php?h=2">Administrar usuarios</a>
          <a class="dropdown-item" href="#">Mantenimientos</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
    <?php 
    	if (!isset($_SESSION['usr_active']) || empty($_SESSION['usr_active'])){
     ?>
    <form class="form-inline navbar-right ml-auto" role="search" method="POST" action="controlers/validate.php">
        <div class="form-group">
            <input type="text" class="form-control mr-sm-2" name="txtUsername" placeholder="Usuario">
        </div>
        <div class="form-group">
            <input type="password" class="form-control mr-sm-2" name="txtPassword" placeholder="Contraseña">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-success my-sm-0" name="btnLogin">Entrar</button>
        </div>
    </form>
    <?php 
    	}else{
    		?>
        <div class="navbar-right ml-auto">
          <div class="pull-right"><a href="controlers/logout.php"><button type="submit" class="btn navbar-btn btn-danger my-sm-0" name="logout" id="logout"  value="Log Out">Salir</button></a></div>
        </div>                
    <?php 
    	}
     ?>
  </div>
</nav>
