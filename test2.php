<?php 
    header("Content-type: application/json;charset=utf8");
    session_start();
    include "database/connection.php";
    $conn = Connect();

    if (isset($_POST['btnSend'])) 
    {
        $maintenanceDate = $_POST['maintenance_date'];
        // echo $maintenanceDate;
        foreach($_POST['computer_code'] as $computerCode){
            $employeeCode = '';
            $employeeMail = '';

            $getData = "SELECT * FROM `registry` WHERE `code` = '".$computerCode."'";
            if ($result = $conn->query($getData)) {
                $row = $result->fetch();
                $employeeCode = $row[2];
                $employeeName = $row[3];
                $employeeMail = $row[7];
            }
            
            $dateUpdate=date('Y-m-d H:i:s');
            $userUpdate = $_SESSION["whoIs"];

            $insertQry = $conn->prepare('INSERT INTO `maintenance`(`computer_code`, `employee_code`, `maintenance_date`, `maintenance_apply`, `comments`, `status`, `user_update`, `date_update`) 
                                             VALUES (:computerCode_,:employeeCode_,:maintenanceDate_,:maintenanceApply_,:Comment_,:status_,:userUpdate_,:dateUpdate_)');

            $insertQry->bindValue(':computerCode_', $computerCode);
            $insertQry->bindValue(':employeeCode_', $employeeCode);
            $insertQry->bindValue(':maintenanceDate_', $maintenanceDate);
            $insertQry->bindValue(':maintenanceApply_', $maintenanceDate);
            $insertQry->bindValue(':Comment_', $employeeMail);
            $insertQry->bindValue(':status_', '1');
            $insertQry->bindValue(':userUpdate_', $userUpdate);
            $insertQry->bindValue(':dateUpdate_', $dateUpdate);
            $insertQry->execute();

        //ENVIO DE CORREO
            // Here is the data we will be sending to the service
              $some_data = array(
                'nombres' => $employeeName, 
                'nomina' => $employeeCode, 
                'correo' => $employeeMail
              );  
             
              $curl = curl_init();
              // $curl = curl_init();
              // You can also set the URL you want to communicate with by doing this:
              // $curl = curl_init('http://localhost/echoservice');
               
              // We POST the data
              curl_setopt($curl, CURLOPT_POST, 1);
              // Set the url path we want to call
              curl_setopt($curl, CURLOPT_URL, 'http://mexq.mx/devweb/resguardo/test3.php');  
              // Make it so the data coming back is put into a string
              curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
              // Insert the data
              curl_setopt($curl, CURLOPT_POSTFIELDS, $some_data);
               
              // You can also bunch the above commands into an array if you choose using: curl_setopt_array
               
              // Send the request
              $result = curl_exec($curl);
              // Free up the resources $curl is using
              curl_close($curl);
        //ENVIO DE CORREO
        }

        if ($insertQuery) {
            // sleep(2);
            header('Location: test.php');  
        }else{
            sleep(2);
            header('Location: test.php'); 
        }
    }
 ?>
