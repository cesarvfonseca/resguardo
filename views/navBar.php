<nav class="navbar navbar-toggleable-md navbar-light bg-primary">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">MEXQ</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Registro</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Mantenimientos</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle  disabled" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administración
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
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
        <button type="submit" class="btn btn-success my-sm-0" name="btnLogin">Entrar</button>
    </form>
    <?php 
    	}else{
    		?>
        <div class="navbar-right ml-auto">
        <ul class="nav navbar-nav">
            <li>
              <a href="controlers/logout.php"><button type="submit" class="btn navbar-btn btn-danger my-sm-0" name="logout" id="logout"  value="Log Out">Salir</button></a>
            </li>
                </ul>     
        </div>
    <?php 
    	}
     ?>
  </div>
</nav>
