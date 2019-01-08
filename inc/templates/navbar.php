<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="shortcut icon" href="img/icoMQ.ico">


<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand">
    <img src="img/mexq_logo.png" width="150" alt="Logo MEXQ" class="responsive-img">
  </a>
  <?php if (!isset($_SESSION['login']) || empty($_SESSION['login'])){  ?>
    <a class="nav-item nav-link disabled">Resguardo de Equipos MEXQ</a>
    <?php } else {?>
    <?php $usuario_nombre = $_SESSION['usuario_nombre'];?>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav float-right">
      <a class="nav-item nav-link active" href="index.php?request=main-page">Menu <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Equipos de computo</a>
      <a class="nav-item nav-link" href="#">Smartphones</a>
      <a class="nav-item nav-link" href="#">Impresoras</a>
      <a class="nav-item nav-link disabled" href="#">Bienvenido (a): <?php echo $usuario_nombre; ?></a>
      <a class="nav-item nav-link btn btn-danger" type="button" id="btnSalir"> Cerrar Sesión <i class="fas fa-sign-out-alt"></i></a>
    </div>
  </div>
  <?php } ?>
</nav>
<br>

