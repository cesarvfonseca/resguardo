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
        case 'smartphones':
            // echo 'smart';
            $query = 'SELECT * FROM `smartphone` ORDER BY `smartphone`.`id` DESC,`smartphone`.`update_time` DESC;"';
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
            'status' => 'OK',
            'data' => $rows
            );
            echo json_encode($respuesta);                
            break;
        case 'acc-key':
            // die(json_encode($_POST));
            $param = $_POST['param'];
            $query = "SELECT pwd,account FROM `accounts` WHERE account = ?";
            $stmnt = $conn -> prepare($query);
            $stmnt -> bindParam(1, $param);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            $rows = $stmnt -> fetchAll();
            if($rowCount > 0){
                $respuesta = array(
                    'status' => 'OK',
                    'data' => $rows
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al recuperar los datos.'
                );
            }
            echo json_encode($respuesta); 

            break;
        case 'oldRegistry':
            // die(json_encode($_POST));
            $query = 'SELECT * FROM `history` WHERE names <> "" ORDER BY fin_date desc,code';
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
        case 'queryDevice':
            // die(json_encode($_POST));
            $deviceCode = $_POST['deviceCode'];
            $query = "SELECT * FROM `registry` WHERE `registry`.`code` = ?";
            $stmnt = $conn -> prepare($query);
            $stmnt -> bindParam(1, $deviceCode);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            $rows = $stmnt -> fetchAll();
            if($rowCount > 0){
                $respuesta = array(
                    'status' => 'OK',
                    'data' => $rows
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al recuperar los datos.'
                );
            }
            echo json_encode($respuesta);
            break;
        case 'querySmartphone':
            // die(json_encode($_POST));
            $deviceCode = $_POST['deviceCode'];
            $query = "SELECT * FROM `smartphone` WHERE `smartphone`.`id` = ?";
            $stmnt = $conn -> prepare($query);
            $stmnt -> bindParam(1, $deviceCode);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            $rows = $stmnt -> fetchAll();
            if($rowCount > 0){
                $respuesta = array(
                    'status' => 'OK',
                    'data' => $rows
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al recuperar los datos.'
                );
            }
            echo json_encode($respuesta);
            break;
        case 'queryAccount':
            // die(json_encode($_POST));
            $accountCode = $_POST['accountCode'];
            $query = "SELECT * FROM `accounts` WHERE `accounts`.`id` = ?";
            $stmnt = $conn -> prepare($query);
            $stmnt -> bindParam(1, $accountCode);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            $rows = $stmnt -> fetchAll();
            if($rowCount > 0){
                $respuesta = array(
                    'status' => 'OK',
                    'data' => $rows
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al recuperar los datos.'
                );
            }
            echo json_encode($respuesta);
            break;
        case 'maintenance':
            // die(json_encode($_POST));
            $query = "SELECT * FROM `maint`";
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
                'status' => 'OK',
                'data' => $rows
            );
            echo json_encode($respuesta);
            break;
        case 'google-accounts':
            // die(json_encode($_POST));
            $query = "SELECT * FROM `accounts` ORDER BY update_date DESC";
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll();
            $respuesta = array(
                'status' => 'OK',
                'data' => $rows
            );
            echo json_encode($respuesta);
            break;
        case 'queryMaint':
            // die(json_encode($_POST));
            $monthSch = $_POST['month']; 
            $yearSch = $_POST['year']; 
            $scheduled_date = $_POST['scheduled_date']; 
            $firstMaint = array('01','02','03','04','05','06');
            $secondMaint = array('07','08','09','10','11','12');
            $query = "SELECT r.code,r.employee_name,r.status,m.scheduled_date,YEAR(m.scheduled_date) AS maintYear,MONTH(m.scheduled_date) AS maintMonth
                        FROM `maint` m 
                        RIGHT JOIN `registry` r 
                        ON m.code = r.code WHERE r.branch='CORPORATIVO' AND r.type = 'PC' AND r.status <> 'I'";

            $stmnt = $conn -> prepare($query);
            // $stmnt -> bindParam(1, $yearSch);
            // $stmnt -> bindParam(2, $scheduled_date);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            $rows = $stmnt -> fetchAll();
            if($rowCount > 0){
                $respuesta = array(
                    'status' => 'OK',
                    'data' => $rows
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al recuperar los datos.'
                );
            }
            echo json_encode($respuesta);
            break;
        case 'oneSupport':
            // die(json_encode($_POST));
            if (isset($_POST['deviceCode']))
            {
                $deviceCode = $_POST['deviceCode'];
                $query = "SELECT * FROM `support` WHERE computer_code = ?";
            }
            else
            {
                $deviceCode = $_POST['supportID'];
                $query = "SELECT * FROM `support` WHERE id = ?";
            }
            $stmt = $conn -> prepare($query);
            $stmt -> bindParam(1, $deviceCode);
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