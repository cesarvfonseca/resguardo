<?php 
    include '../function/connection.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $table = $_POST['table'];
    $order = 'id';
    switch ($table){
        case 'registry':
            // die(json_encode($_POST));
            $query = 'SELECT * FROM `registry`';
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            // $rs = $stmt -> rowCount();
            // echo $rs;
            // $rows = array();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
                'status' => 'OK',
                'data' => $rows
            );
            // print_r($rows);
            echo json_encode($respuesta);
            break;
    default:
        $title = '';     
        break;
    }
?>