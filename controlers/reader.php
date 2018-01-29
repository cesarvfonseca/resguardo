<?php 
$file = $_REQUEST["file_name"];
$filename = $_REQUEST["file_name"];
$fileExt = substr($filename, -3);
if(!file_exists($filename))
{
	echo "<script>alert('No existe archivo.');</script>";
	echo "<script>window.close();</script>";
}
else
{
	if ($fileExt=="pdf") 
	{
		header('Content-type: application/pdf');
		header('Content-Disposition: inline; filename="'. $filename . '"');
		header('Content-Transfer-Encoding: binary');
		header('Content-Length: ' . filesize($file));
		header('Accept-Ranges: bytes');
		@readfile($file);
	}
	else if ($fileExt=="xml")
	{
		header('Location: '.$filename);
	}
	else
	{
		echo "<script> location.href='../'; </script>";
	}
}
 ?>