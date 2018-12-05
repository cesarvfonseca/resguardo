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
    case 'printers':
        $title = 'de Impresoras.';
        break;   
    default:
        $title = null;     
        break;   
  }
?>