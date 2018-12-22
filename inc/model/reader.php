<?php 
error_reporting(0);
ini_set('display_errors', 0);
$path = "../assets/invoices/";
$filex = $_REQUEST["deviceSerie"];
$filename = $_REQUEST["deviceSerie"];
$fileExt = substr($filename, -3);
$nSerie = $fileExt;

// if ($fileExt=='pdf') 
// {
// 	$nSerie = str_replace('.pdf', '', $filex);
// }
// else if ($fileExt=='xml')
// {
// 	$nSerie = str_replace('.xml', '', $filex);
// }
// else if ($fileExt=='jpg')
// {
// 	$nSerie = str_replace('.jpg', '', $filex);
// }

$dir = $path.$nSerie."/";

$files = scandir($dir);

if(!file_exists($dir))
{
	echo "<script>alert('No existe archivo.');</script>";
	echo "<script>window.close();</script>";
}
else
{
	rsort($files);
	foreach($files as $file)
	{
	  	if ($fileExt=="pdf") 
	  	{
		  	header('Content-type: application/pdf');
			@readfile($dir.$filex);
	  	}
	  	if ($fileExt=="xml") 
	  	{
	  		header('Location:'.$dir.$filex);
	  	}
	  	if ($fileExt=="jpg") 
	  	{
	  		 header('content-type: image/'.$fileExt);
  			 readfile($dir.$filex);
	  	}
	}
}

 ?>