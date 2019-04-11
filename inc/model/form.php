<?php
    include '../function/connection.php';   
    $conn = Connect();
    $action  = $_POST['_type'];

    if($action == 'login')
    {
        // die(json_encode($_POST));
        $user = $_POST['_user'].'@mexq.com.mx';
        $password = $_POST['_password'];
        $password = hash('sha512', $password);

        $query = 'SELECT * FROM `user` WHERE login = ? AND pwd = ?';
        $stmt = $conn -> prepare($query);
        $stmt->execute(array($user, $password));
        $rows = $stmt -> rowCount();
        if($rows > 0){
            $respuesta = array(
                'estado' => 'OK',
                'log' => 'main-page'
            );    
        }else{
            $respuesta = array(
                'estado' => 'ERROR',
                'log' => 'Error de acceso'
            );
        }
        echo json_encode($respuesta);
    }
?>