<?php 
error_reporting(0);
ini_set('display_errors', 0);
$path = "../assets/invoices/";
$filex = $_REQUEST["type"];
$filename = $_REQUEST["deviceSerie"];

$dir = $path.$filename."/";

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
	  	if ($filex=="pdf") 
	  	{
		  	header('Content-type: application/pdf');
			@readfile($dir.$filename.".".$filex);
	  	}
	  	if ($filex=="xml") 
	  	{
	  		header('Location:'.$dir.$filename.".".$filex);
	  	}
	  	if ($filex=="jpg") 
	  	{
	  		 header('content-type: image/'.$filex);
  			 readfile($dir.$filename.".".$filex);
	  	}
	}
}

 ?>