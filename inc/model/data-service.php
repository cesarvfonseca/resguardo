<?php 
    include '../function/connection.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $order = 'id';
    $action = $_POST['action'];
    switch ($action){
        case 'registry':
            // die(json_encode($_POST));
            $query = 'SELECT * FROM `registry` 
                        WHERE `registry`.`type`<>"MF" AND `registry`.`active`="1"
                        ORDER BY `registry`.`status` ASC,`registry`.`date_update` DESC;"';
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
                'status' => 'OK',
                'data' => $rows
            );
            // print_r($rows);
            echo json_encode($respuesta);
            break;
        case 'printers':
            // echo 'impresoras';
            $query = 'SELECT * FROM `registry` 
            WHERE `registry`.`type`="MF" AND `registry`.`active`="1"
            ORDER BY `registry`.`status` ASC,`registry`.`date_update` DESC;"';
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
            'status' => 'OK',
            'data' => $rows
            );
            echo json_encode($respuesta);                
            break;
    case 'query':
            $txt_search = $_POST['txtSearch'];
            // die(json_encode($_POST));
            $query = "SELECT * FROM `registry`
                        WHERE `registry`.`type`<>'MF' AND `registry`.`active`='1' AND 
                        CONCAT_WS(`code`,`id_employee`,`employee_name`,`position`,`branch`,`mail`,`workstation`,`serial`,`product`,`brand`,`model`,`type`,`invoicenbr`,`status`)
                        LIKE '%".$txt_search."%'
                        ORDER BY `registry`.`status` ASC,`registry`.`date_update` DESC;";
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
                'status' => 'OK',
                'data' => $rows
            );
            echo json_encode($respuesta);
            break;
    default:
        $title = '';     
        break;
    }
?>