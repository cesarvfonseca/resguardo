<?php
//EQUIPOS DE COMPUTO
$section = $_REQUEST['request'];
if($section == 'equipos'){
    $title = 'de equipos de computo.';
}

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
    default:
        $title = null;     
        break;   
  }
?>