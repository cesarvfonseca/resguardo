<?php  
	session_start();
	include "../database/connection.php";
	$conn = Connect();

	if (isset($_POST['btnUpdate'])) {
		$txt_codeRegistry = $_POST['txtcodeRegistry'];
		$txt_codemp = $_POST['txtCodeemp'];
		$txt_phone = $_POST['txtPhone'];
		$txt_name = $_POST['txtName'];
		$txt_lastname = $_POST['txtlastName'];
		$txt_position = $_POST['txtPosition'];
		$txt_mail = $_POST['txtEmail'];
		$txt_branch = strtoupper($_POST['txtBranch']);
		$txt_station = strtoupper($_POST['txtStation']);

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

		$date_update=date('Y-m-d H:i:s');
		$user_update = $_SESSION["whoIs"];

		$txtCode = $_POST['txt_rCode'];
		$txtNames = $_POST['txt_rNames'];
		$txtMail = $_POST['txt_rMail'];
		$txtPosition = $_POST['txt_rPosition'];
		$txtBranch = $_POST['txt_rBranch'];
		$txtWS = $_POST['txt_rWS'];
		$txtDate = $_POST['txt_rDate'];

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
					closedir($dir); //Cerramos el directorio de destino
				}
			}
		}
		// SUBIR FACTURAS

		// SUBIR CARTA RESPONSIVA
		foreach($_FILES["cResponsiva"]['tmp_name'] as $key => $tmp_name)
		{
		//Validamos que el archivo exista
			if($_FILES["cResponsiva"]["name"][$key]) {
				$filename = $_FILES["cResponsiva"]["name"][$key]; //Obtenemos el nombre original del archivo
	        	$ext = pathinfo($filename, PATHINFO_EXTENSION);
				$filename = $_FILES["cResponsiva"]["name"][$key]=$txt_serial.".".$ext; //Obtenemos el nombre original del archivo Y se cambia
				$source = $_FILES["cResponsiva"]["tmp_name"][$key]; //Obtenemos un nombre temporal del archivo
				
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
					closedir($dir); //Cerramos el directorio de destino
				}
			}
		}
		// SUBIR CARTA RESPONSIVA
	

		$updateQuery = $conn->prepare('UPDATE `registry` SET 
										`id_employee`=:idEmp, `name`=:Name,`lastname`=:Lastname, 
										`position`=:Position, `branch`=:Branch,`workstation`=:Ws,
										`mail`=:Mail, `phone`=:Phone, `date`=:Date_,`serial`=:Serial_,
										`product`=:Product, `brand`=:Brand, `model`=:Model,`type`=:Type,
										`invoicenbr`=:Invoicenbr, `invoicedate`=:Invoicedate,`status`=:Status, `date_update`=:Date_update,`user_update`=:User_update,
										`comment`=:Comment WHERE `code`=:Code');
		$updateQuery->bindValue(':idEmp', $txt_codemp);
		$updateQuery->bindValue(':Name', ucwords(strtolower($txt_name)));
		$updateQuery->bindValue(':Lastname', ucwords(strtolower($txt_lastname)));
		$updateQuery->bindValue(':Position', ucwords(strtolower($txt_position)));
		$updateQuery->bindValue(':Branch', $txt_branch);
		$updateQuery->bindValue(':Ws', $txt_station);
		$updateQuery->bindValue(':Mail', $txt_mail);
		$updateQuery->bindValue(':Phone', $txt_phone);
		$updateQuery->bindValue(':Date_', $txt_date);
		$updateQuery->bindValue(':Serial_', $txt_serial);
		$updateQuery->bindValue(':Product', $txt_product);
		$updateQuery->bindValue(':Brand', $txt_brand);
		$updateQuery->bindValue(':Model', $txt_model);
		$updateQuery->bindValue(':Type', $txt_type);
		$updateQuery->bindValue(':Invoicenbr', $txt_invoicenbr);
		$updateQuery->bindValue(':Invoicedate', $txt_invoicedate);
		$updateQuery->bindValue(':Status', $txt_status);
		$updateQuery->bindValue(':Comment', $txt_comment);
		$updateQuery->bindValue(':Date_update', $date_update);
		$updateQuery->bindValue(':User_update', $user_update);
		$updateQuery->bindValue(':Code', $txt_codeRegistry);

		$updateQuery->execute();

		$updateQuery->closeCursor();

		if (!(strcmp($txt_codemp,$txtCode)==0)) {
			$insertQuery = $conn->prepare('INSERT INTO `history` VALUES (:_Code,:_idEmp,:_Name,:_Position,:_Mail,:_Branch,:_WS,:_initDate,:_finDate);');
			$insertQuery->bindValue(':_Code', $txt_codeRegistry);
			$insertQuery->bindValue(':_idEmp', $txtCode);
			$insertQuery->bindValue(':_Name', $txtNames);
			$insertQuery->bindValue(':_Position', $txtPosition);
			$insertQuery->bindValue(':_Mail', $txtMail);
			$insertQuery->bindValue(':_Branch', $txtBranch);
			$insertQuery->bindValue(':_WS', $txtWS);
			$insertQuery->bindValue(':_initDate', $txtDate);
			$insertQuery->bindValue(':_finDate', $txt_date);

			$insertQuery->execute();
			$insertQuery->closeCursor();
		}

		$conn = null;

		if ($updateQuery) {
			echo "<script>alert('Registro modificado exitosamente!');</script>";
			echo "<script>window.close();</script>";
		}else{
			echo "<script>alert('Hubo un error al momento de registrar.');</script>";
			echo "<script>window.close();</script>";
		}
	}

?>
