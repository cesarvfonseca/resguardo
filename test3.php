<?php
	// echo 'Your message was: ' . $_REQUEST["message"] . ' and your name is: ' . $_REQUEST["name"];

	$nombres=$_REQUEST["nombres"];
	$apellidos=$_REQUEST["apellidos"];
	$folio=$_REQUEST["folio"];
	$correo=$_REQUEST["correo"];
	$headers .= 'Correo generado automaticamente, favor de no responder';
	$contenido="Te has postulado para una vacante en MEXQ con exito!\n".
	 			$nombres." ".$apellidos." te confirmamos tu postulación a una vacante en MEXQ con el folio: ".$folio.
	 			"\nCon este folio puedes consultar tu proceso PROXIMAMENTE, en 1 mes, no menos, como 5.";
	mail($correo,"Postulante MEXQ ".$folio, $contenido,$header," -f contacto@mexq.com.mx");
	header("Location: http://187.188.159.205:8090/vacantes");

	//  // multiple recipients
	// $to  = 'www.cavf.20@gmail.com' . ', '; // note the comma
	// // $to  = 'aidan@example.com' . ', '; // note the comma
	// $to .= 'wez@example.com';

	// // subject
	// $subject = 'Birthday Reminders for August';

	// // message
	// $contenido = '
	// <html>
	// <head>
	//   <title>Birthday Reminders for August</title>
	// </head>
	// <body>
	//   <p>Here are the birthdays upcoming in August!</p>
	//   <table>
	//     <tr>
	//       <th>Person</th><th>Day</th><th>Month</th><th>Year</th>
	//     </tr>
	//     <tr>
	//       <td>Joe</td><td>3rd</td><td>August</td><td>1970</td>
	//     </tr>
	//     <tr>
	//       <td>Sally</td><td>17th</td><td>August</td><td>1973</td>
	//     </tr>
	//   </table>
	// </body>
	// </html>
	// ';

	// // To send HTML mail, the Content-type header must be set
	// $headers  = 'MIME-Version: 1.0' . "\r\n";
	// $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

	// // Additional headers
	// $headers .= 'To: Mary <mary@example.com>, Kelly <kelly@example.com>' . "\r\n";
	// $headers .= 'From: Birthday Reminder <birthday@example.com>' . "\r\n";
	// $headers .= 'Cc: birthdayarchive@example.com' . "\r\n";
	// $headers .= 'Bcc: birthdaycheck@example.com' . "\r\n";

	// // Mail it
	// mail($to, $subject, $message, $headers);
?>