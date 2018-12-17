<?php
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
            $invoiceNumber = $_POST['invoiceNumber'];
            $invoiceDate = $_POST['invoiceDate'];
            $deviceComment = $_POST['deviceComment'];
            $deviceUpdate = date('Y-m-d H:i:s');
            $userControl = 'cvalenciano';

            $directorio = '../assets/invoices/'.$deviceSerie;
            $targetDir = $directorio."/";       
            if(!file_exists($directorio))
            {
                mkdir($directorio, 0777,true);
            }
            $temp = explode(".", $_FILES["fileAttach"]["name"]);
            $newfilename = $deviceSerie . '.' . end($temp);
            move_uploaded_file($_FILES["fileAttach"]["tmp_name"], $targetDir . $newfilename);

            $lastRecord = "SELECT SUBSTRING(code,3,10)+1 as record from registry where type='" . $deviceType . "' ORDER BY id DESC LIMIT 1";
            $stmnt_ = $conn->query($lastRecord);
            while ($row = $stmnt_ -> fetch()):
                $last_record = $row["record"];
            endwhile;
            $deviceRecord = $deviceType.$last_record;

            $insert = 'INSERT INTO `registry` (`code`, `id_employee`, `employee_name`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`,`date_update`,`user_update`) 
                            VALUES 
                            (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
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
            $stmnt -> bindParam(17, $deviceStatus);
            $stmnt -> bindParam(18, $deviceComment);
            $stmnt -> bindParam(19, $deviceUpdate);
            $stmnt -> bindParam(20, $userControl);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            if($rowCount > 0){
                $respuesta = array(
                    'estado' => 'OK',
                    'data' => $rowCount,
                    'log' => 'computers'
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
        case 'deleteComputer':
            // die(json_encode($_POST));
            $deviceCode = $_POST['deviceCode'];
            $user_update='cvalenciano';
            $date_update=date('Y-m-d H:i:s');

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
                    'log' => 'computers'
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
        default:
        // $title = '';     
        break;
    }
?>