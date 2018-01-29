<?php 
	header("Content-type: application/json;charset=utf8");
	session_start();
	include "../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnSave'])) {

		$txt_codemp = $_POST['txtCodeemp'];
		$txt_phone = $_POST['txtPhone'];
		$txt_name = $_POST['txtName'];
		$txt_lastname = $_POST['txtlastName'];
		$txt_position = $_POST['txtPosition'];
		$txt_mail = $_POST['txtEmail'];
		$txt_branch = $_POST['txtBranch'];
		$txt_station = $_POST['txtStation'];

		$txt_type = $_POST['cmType'];
		$txt_status = $_POST['cmStatus'];
		$txt_brand = $_POST['txtBrand'];
		$txt_model = $_POST['txtModel'];
		$txt_serial = $_POST['txtSerie'];
		$txt_product = $_POST['txtProduct'];
		$txt_invoicenbr = $_POST['txtInvoice'];
		$txt_invoicedate = $_POST['txtInvoicedate'];
		$txt_comment = $_POST['txtComment'];
		$txt_date = date('Y-m-d');

			// SUBIR FACTURAS
		foreach($_FILES["archivo"]['tmp_name'] as $key => $tmp_name)
	{
		//Validamos que el archivo exista
		if($_FILES["archivo"]["name"][$key]) {
			$filename = $_FILES["archivo"]["name"][$key]; //Obtenemos el nombre original del archivo
        	$ext = pathinfo($filename, PATHINFO_EXTENSION);
			$filename = $_FILES["archivo"]["name"][$key]=$txt_serial.".".$ext; //Obtenemos el nombre original del archivo Y se cambia
			$source = $_FILES["archivo"]["tmp_name"][$key]; //Obtenemos un nombre temporal del archivo
			
			$directorio = '../assets/invoices/'.$txt_serial; //Declaramos un  variable con la ruta donde guardaremos los archivos

			
			//Validamos si la ruta de destino existe, en caso de no existir la creamos
			if(!file_exists($directorio)){
				mkdir($directorio, 0777,true);
				// mkdir($directorio, 0777) or die("No se puede crear el directorio de extracci&oacute;n");	
			}
			
			$dir=opendir($directorio); //Abrimos el directorio de destino
			$target_path = $directorio.'/'.$filename; //Indicamos la ruta de destino, así como el nombre del archivo
			
			//Movemos y validamos que el archivo se haya cargado correctamente
			//El primer campo es el origen y el segundo el destino
			if(move_uploaded_file($source, $target_path)) {	
				// echo "El archivo $filename se ha almacenado en forma exitosa.<br>";
				// echo "<script> location.href='../'; </script>";
				// } else {	
				// echo "Ha ocurrido un error, por favor inténtelo de nuevo.<br>";
				// echo "<script> location.href='../'; </script>";
			closedir($dir); //Cerramos el directorio de destino

			}
			// closedir($dir); //Cerramos el directorio de destino
		}
	}
		// SUBIR FACTURAS
	

		$lastRegistry = "SELECT SUBSTRING(code,3,10)+1 as reg from registry where type='".$txt_type."' ORDER BY id DESC LIMIT 1";
		$query = $conn->query($lastRegistry);
		while ($r=$query->fetch()):
			$idr=$r["reg"];
		endwhile;
		$txt_code = $txt_type.$idr;

		$insertQuery = $conn->prepare('INSERT INTO `registry`
		(`code`, `id_employee`, `name`, `lastname`, `position`, `branch`, `workstation`, `mail`, `phone`, `date`, `serial`, `product`, `brand`, `model`, `type`, `invoicenbr`, `invoicedate`, `status`, `comment`) 
		VALUES 
		(:Code,:idEmp,:Name,:Lastname,:Position,:Branch,:Ws,:Mail,:Phone,:Date_,:Serial_,:Product,:Brand,:Model,:Type,:Invoicenbr,:Invoicedate,:Status,:Comment);');
		$insertQuery->bindValue(':Code', $txt_code);
		$insertQuery->bindValue(':idEmp', $txt_codemp);
		$insertQuery->bindValue(':Name', utf8_encode($txt_name));
		$insertQuery->bindValue(':Lastname', utf8_encode($txt_lastname));
		$insertQuery->bindValue(':Position', $txt_position);
		$insertQuery->bindValue(':Branch', $txt_branch);
		$insertQuery->bindValue(':Ws', $txt_station);
		$insertQuery->bindValue(':Mail', $txt_mail);
		$insertQuery->bindValue(':Phone', $txt_phone);
		$insertQuery->bindValue(':Date_', $txt_date);
		$insertQuery->bindValue(':Serial_', $txt_serial);
		$insertQuery->bindValue(':Product', $txt_product);
		$insertQuery->bindValue(':Brand', $txt_brand);
		$insertQuery->bindValue(':Model', $txt_model);
		$insertQuery->bindValue(':Type', $txt_type);
		$insertQuery->bindValue(':Invoicenbr', $txt_invoicenbr);
		$insertQuery->bindValue(':Invoicedate', $txt_invoicedate);
		$insertQuery->bindValue(':Status', $txt_status);
		$insertQuery->bindValue(':Comment', $txt_comment);
		$insertQuery->execute();

		if ($insertQuery) {
			sleep(2);
			header('Location: ../');  
		}else{
			sleep(1);
			header('Location: ../'); 
		}
	}	
 ?>
