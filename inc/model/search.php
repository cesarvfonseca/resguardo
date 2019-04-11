<?php
    include '../function/connection.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $action = $_GET['action'];
    switch ($action){
        case 'searchBranch':
            $deviceCode = $_GET['value'];
            $query = "SELECT branch FROM `registry` WHERE branch like '%".$deviceCode."%' group by branch";
            $stmnt = $conn -> prepare($query);
            $stmnt -> execute();
        
            $resultado = $stmnt->fetchAll(PDO::FETCH_COLUMN, 0);
            echo json_encode($resultado);
            break;
        case 'searchBrand':
            $brandDevice = $_GET['value'];
            $query = "SELECT brand FROM `registry` WHERE brand like '%".$brandDevice."%' group by brand";
            $stmnt = $conn -> prepare($query);
            $stmnt -> execute();
        
            $resultado = $stmnt->fetchAll(PDO::FETCH_COLUMN, 0);
            echo json_encode($resultado);
            break;
        case 'searchAccount':
            $query = "SELECT account FROM `accounts` group by account";
            $stmnt = $conn -> prepare($query);
            $stmnt -> execute();
        
            $resultado = $stmnt->fetchAll(PDO::FETCH_COLUMN, 0);
            echo json_encode($resultado);
            break;
        case 'searcheAccount':
            $param = $_GET['param'];
            $query = "SELECT account FROM `accounts` WHERE account <> '.$param.' group by account";
            $stmnt = $conn -> prepare($query);
            $stmnt -> execute();
        
            $resultado = $stmnt->fetchAll(PDO::FETCH_COLUMN, 0);
            echo json_encode($resultado);
            break;
        default:
            break;
    }
    

?>