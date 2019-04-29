<?php
include 'inc/function/connection.php';
$conn = Connect();
$conn -> query("SET NAMES utf8");

$btnG = 'hidden';

//EQUIPOS DE COMPUTO
$section = $_REQUEST['request'];
switch ($section){
    case 'computers':
        $title = 'de equipos de Computo.';
        break;
    case 'smartphone':
        $title = 'de Smartphones.';
        $btnG = '';
        break;
    case 'newsmartphone':
        $title = 'Nuevo Smartphone.';
        break;        
    case 'editsmartphone':
        $title = 'editar Smartphone.';
        break;  
    case 'modifysmartphone':
        $title = 'añadir responsable de smartphone';
        break;
    case 'google-accounts':
        $title = 'Cuentas de Google';
        break;     
    case 'newaccount':
        $title = 'Nueva Cuenta de Google';
        break; 
    case 'edit-account':
        $title = 'Actualizar Cuenta de Google';
        break; 
    case 'printers':
        $title = 'de Impresoras.';
        break;  
    case 'newcomputer':
        $title = 'Nuevo Equipo de Computo';
        break; 
    case 'editcomputer':
        $title = 'Editar Equipo de Computo';
        break;
    case 'support':
        $title = 'Soporte a Equipo de Computo';
        break;
    case 'newprinter':
        $title = 'Nueva Multifuncional';
        break;
    case 'editprinter':
        $title = 'Editar Multifuncional';
        break;
    case 'history':
        $title = 'del historial de equipo de equipos';
        break;
    case 'maintControl':
        $title = 'Mantenimiento de equipos';
        break;
    case 'mails':
        $title = 'correos electrónicos';
        break;
    case 'newmail':
        $title = 'Nuevo correo electrónico';
        break;
    case 'editMail':
        $title = 'Actualizar correo electrónico';
        break;
    case 'responsiveL':
        $deviceCode = $_GET['deviceCode'];
        $query = "SELECT * FROM `registry` WHERE `registry`.`code` = ?";
        $stmnt = $conn -> prepare($query);
        $stmnt -> bindParam(1, $deviceCode);
        $stmnt -> execute();
        while($row = $stmnt -> fetch(PDO::FETCH_NUM, PDO::FETCH_ORI_NEXT)){
            $data_employeecode = $row[2];
            $data_employeename = $row[3];
            $data_employeposition = $row[4];
            $data_employemail = $row[7];
            $data_employebranch = $row[5];
            $data_employearea = $row[6];
            $data_employephone = $row[8];
            $data_devicebrand = $row[12];
            $data_devicemodel = $row[13];
            $data_deviceserie = $row[10];
            $data_invoice = $row[15];
            $data_invoicedate = $row[16];
            $data_provider = $row[17];
            $data_comments = $row[19];
            $data_devicetype = $row[14];

            $data_devicetype = ($data_devicetype == 'MQ') ? 'Laptop' : 'Desktop';

        }
        break;
    default:
        $title = null;     
        break;   
  }
  ?>