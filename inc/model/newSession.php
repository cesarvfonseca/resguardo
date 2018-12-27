<?php
    if (isset($_GET['id']) && isset($_GET['name'])) 
    {
        $id = $_GET['id'];
        $name = $_GET['name'];
        session_start();
        $_SESSION['usuario_activo'] = $_GET['id'];
        $_SESSION['usuario_nombre'] = $_GET['name'];
        $_SESSION['login'] = true;
        echo 'Sesion: ' . $_SESSION['usuario_activo'] . ' ' . $_SESSION['usuario_nombre'];
    }

?>