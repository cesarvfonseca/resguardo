<nav class="navbar navbar-toggleable-md navbar-light bg-primary">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">MEXQ</a>
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
  </div>
</nav>
