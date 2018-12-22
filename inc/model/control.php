<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    
    include '../function/connection.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $jobType = $_POST['jobType'];

    switch ($jobType)
    {   
        case 'newComputer':
            // die(json_encode($_POST));
            $employeeCode = $_POST['employeeCode'];
            $employeePhone = $_POST['employeePhone'];
            $employeeName = $_POST['employeeName'];
            $employeePosition = $_POST['employeePosition'];
            $employeeMail = $_POST['employeeMail'];
            $employeeBranch = $_POST['employeeBranch'];
            $employeeWorkstation = $_POST['employeeWorkstation'];
            $deliveryDate = $_POST['deliveryDate'];
            $deviceType = $_POST['deviceType'];
            $deviceStatus = $_POST['deviceStatus'];
            $deviceBrand = $_POST['deviceBrand'];
            $deviceModel = $_POST['deviceModel'];
            $deviceSerie = $_POST['deviceSerie'];
            $deviceProduct = $_POST['deviceProduct'];
            $deviceSupplier = $_POST['deviceSupplier'];
            $invoiceNumber = $_POST['invoiceNumber'];
            $invoiceDate = $_POST['invoiceDate'];
            $deviceComment = $_POST['deviceComment'];
            $deviceUpdate = date('Y-m-d H:i:s');
            $userControl = 'cvalenciano';

            $route = ($deviceType == 'MF') ? 'printers' : 'computers';

            if(isset($_FILES["fileAttach"]["name"])){
                $directorio = '../assets/invoices/'.$deviceSerie;
                $targetDir = $directorio."/";       
                if(!file_exists($directorio))
                {
                    mkdir($directorio, 0777,true);
                }
                $temp = explode(".", $_FILES["fileAttach"]["name"]);
                $newfilename = $deviceSerie . '.' . end($temp);
                move_uploaded_file($_FILES["fileAttach"]["tmp_name"], $targetDir . $newfilename);
            }

            $lastRecord = "SELECT SUBSTRING(code,3,10)+1 as record from registry where type='" . $deviceType . "' ORDER BY id DESC LIMIT 1";
            $stmnt_ = $conn->query($lastRecord);
            while ($row = $stmnt_ -> fetch()):
                $last_record = $row["record"];
            endwhile;
            $deviceRecord = $deviceType.$last_record;

            $insert = 'INSERT INTO `registry` (`code`, `id_employee`, `employee_name`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `supplier`, `status`, `comment`,`date_update`,`user_update`) 
                            VALUES 
                            (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
            $stmnt = $conn -> prepare($insert);
            $stmnt -> bindParam(1, $deviceRecord);
            $stmnt -> bindParam(2, $employeeCode);
            $stmnt -> bindParam(3, $employeeName);
            $stmnt -> bindParam(4, $employeePosition);
            $stmnt -> bindParam(5, $employeeBranch);
            $stmnt -> bindParam(6, $employeeWorkstation);
            $stmnt -> bindParam(7, $employeeMail);
            $stmnt -> bindParam(8, $employeePhone);
            $stmnt -> bindParam(9, $deliveryDate);
            $stmnt -> bindParam(10, $deviceSerie);
            $stmnt -> bindParam(11, $deviceProduct);
            $stmnt -> bindParam(12, $deviceBrand);
            $stmnt -> bindParam(13, $deviceModel);
            $stmnt -> bindParam(14, $deviceType);
            $stmnt -> bindParam(15, $invoiceNumber);
            $stmnt -> bindParam(16, $invoiceDate);
            $stmnt -> bindParam(17, $deviceSupplier);
            $stmnt -> bindParam(18, $deviceStatus);
            $stmnt -> bindParam(19, $deviceComment);
            $stmnt -> bindParam(20, $deviceUpdate);
            $stmnt -> bindParam(21, $userControl);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            if($rowCount > 0){
                $respuesta = array(
                    'estado' => 'OK',
                    'data' => $rowCount,
                    'log' => $route
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al guardar los datos.'
                );
            }
            echo json_encode($respuesta);
            
            break;
        case 'editComputer':
            // die(json_encode($_POST));

            $deviceCode = $_POST['deviceCode'];
            $employeeCode = $_POST['employeeCode'];
            $employeePhone = $_POST['employeePhone'];
            $employeeName = $_POST['employeeName'];
            $employeePosition = $_POST['employeePosition'];
            $employeeMail = $_POST['employeeMail'];
            $employeeBranch = $_POST['employeeBranch'];
            $employeeWorkstation = $_POST['employeeWorkstation'];
            $deliveryDate = $_POST['deliveryDate'];
            $deviceType = $_POST['deviceType'];
            $deviceStatus = $_POST['deviceStatus'];
            $deviceBrand = $_POST['deviceBrand'];
            $deviceModel = $_POST['deviceModel'];
            $deviceSerie = $_POST['deviceSerie'];
            $deviceProduct = $_POST['deviceProduct'];
            $invoiceNumber = $_POST['invoiceNumber'];
            $invoiceDate = $_POST['invoiceDate'];
            $deviceSupplier = $_POST['deviceSupplier'];
            $deviceComment = $_POST['deviceComment'];

            $route = ($deviceType == 'MF') ? 'printers' : 'computers';

            $deviceUpdate = date('Y-m-d H:i:s');
            $userControl = 'cvalenciano';

            //GET OLD DATA
            $old_employeeCode = $_POST['employeeCode_'];
            $old_employeeName = $_POST['employeeName_'];
            $old_employeePosition = $_POST['employeePosition_'];
            $old_employeeMail = $_POST['employeeMail_'];
            $old_employeeBranch = $_POST['employeeBranch_'];
            $old_employeeWorkstation = $_POST['employeeWorkstation_'];
            $old_deliveryDate = $_POST['deliveryDate_'];


            // SUBIR FATURA
            if(isset($_FILES["fileAttach"]["name"])){
                $directorio = '../assets/invoices/'.$deviceSerie;
                $targetDir = $directorio."/";       
                if(!file_exists($directorio))
                {
                    mkdir($directorio, 0777,true);
                }
                $temp = explode(".", $_FILES["fileAttach"]["name"]);
                $newfilename = $deviceSerie . '.' . end($temp);
                move_uploaded_file($_FILES["fileAttach"]["tmp_name"], $targetDir . $newfilename);
            }

            //SUBIR CARTA RESPONSIVA
            if(isset($_FILES["responsive_Attach"]["name"])){
                $directorio = '../assets/invoices/'.$deviceSerie;
                $targetDir = $directorio."/";       
                if(!file_exists($directorio))
                {
                    mkdir($directorio, 0777,true);
                }
                $temp = explode(".", $_FILES["responsive_Attach"]["name"]);
                $newfilename = $deviceSerie . '.' . end($temp);
                move_uploaded_file($_FILES["responsive_Attach"]["tmp_name"], $targetDir . $newfilename);
            }

            $update = "UPDATE `registry` SET `id_employee`= ?, `employee_name`= ?, `position`= ?, `branch`= ?,`workstation`= ?, `mail`= ?, `phone`= ?, `date`= ?,`serial`= ?, `product`= ?, `brand`= ?, `model`= ?,`type`= ?,`invoicenbr`= ?, `invoicedate`= ?,`status`= ?, `date_update`= ?,`user_update`= ?, `comment`= ?, `supplier`= ? WHERE `code`= ?;";
            $stmnt = $conn->prepare($update);
            $stmnt -> bindParam(1, $employeeCode);
            $stmnt -> bindParam(2, $employeeName);
            $stmnt -> bindParam(3, $employeePosition);
            $stmnt -> bindParam(4, $employeeBranch);
            $stmnt -> bindParam(5, $employeeWorkstation);
            $stmnt -> bindParam(6, $employeeMail);
            $stmnt -> bindParam(7, $employeePhone);
            $stmnt -> bindParam(8, $deliveryDate);
            $stmnt -> bindParam(9, $deviceSerie);
            $stmnt -> bindParam(10, $deviceProduct);
            $stmnt -> bindParam(11, $deviceBrand);
            $stmnt -> bindParam(12, $deviceModel);
            $stmnt -> bindParam(13, $deviceType);
            $stmnt -> bindParam(14, $invoiceNumber);
            $stmnt -> bindParam(15, $invoiceDate);
            $stmnt -> bindParam(16, $deviceStatus);
            $stmnt -> bindParam(17, $deviceUpdate);
            $stmnt -> bindParam(18, $userControl);
            $stmnt -> bindParam(19, $deviceComment);
            $stmnt -> bindParam(20, $deviceSupplier);
            $stmnt -> bindParam(21, $deviceCode);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();

            // if ($old_employeeCode != $employeeCode) {
            if (!(strcmp($old_employeeCode,$employeeCode)==0)) {
                $insert = "INSERT INTO `history` (`code`, `id_employee`, `names`, `position`, `mail`, `branch`, `workstation`, `init_date`, `fin_date`) VALUES (?,?,?,?,?,?,?,?,?);";
                $stmnt_ = $conn->prepare($insert);
                $stmnt_ -> bindValue(1, $deviceCode);
                $stmnt_ -> bindValue(2, $old_employeeCode);
                $stmnt_ -> bindValue(3, $old_employeeName);
                $stmnt_ -> bindValue(4, $old_employeePosition);
                $stmnt_ -> bindValue(5, $old_employeeMail);
                $stmnt_ -> bindValue(6, $old_employeeBranch);
                $stmnt_ -> bindValue(7, $old_employeeWorkstation);
                $stmnt_ -> bindValue(8, $old_deliveryDate);
                $stmnt_ -> bindValue(9, $deliveryDate);

                $stmnt_ -> execute();
            }

            if($rowCount > 0){
                $respuesta = array(
                    'estado' => 'OK',
                    'data' => $rowCount,
                    'log' => $route
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al eliminar el registro'
                );
            }
            
            echo json_encode($respuesta);
            break;
        case 'deleteComputer':
            // die(json_encode($_POST));
            $deviceCode = $_POST['deviceCode'];
            $user_update='cvalenciano';
            $date_update=date('Y-m-d H:i:s');
            $deviceType = substr($deviceCode, 0, 2);

            $route = ($deviceType == 'MF') ? 'printers' : 'computers';

            $updateDevice = 'UPDATE `registry` SET `active` = 0, `date_update` = ?, `user_update` = ?  WHERE code = ?';
            $stmnt = $conn -> prepare($updateDevice);
            $stmnt -> bindParam(1, $date_update);
            $stmnt -> bindParam(2, $user_update);
            $stmnt -> bindParam(3, $deviceCode);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            if($rowCount > 0){
                $respuesta = array(
                    'estado' => 'OK',
                    'data' => $rowCount,
                    'log' => $route
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al eliminar el registro'
                );
            }
            echo json_encode($respuesta);
            break;
        $respuesta = array(
            'estado' => 'ERROR',
            'data' => 'Sin Información',
            'log' => 'Error al solicitar información'
        );
        echo json_encode($respuesta);    
        break;
    }
?>