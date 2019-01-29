<?php
//EQUIPOS DE COMPUTO
$section = $_REQUEST['request'];
switch ($section){
    case 'computers':
        $title = 'de equipos de Computo.';
        break;
    case 'smartphone':
        $title = 'de Smartphones.';
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
    case 'printers':
        $title = 'de Impresoras.';
        break;  
    case 'newcomputer':
        $title = 'Nuevo Equipo de Computo';
        break; 
    case 'editcomputer':
        $title = 'Editar Equipo de Computo';
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
    default:
        $title = null;     
        break;   
  }
?>