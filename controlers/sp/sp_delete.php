<?php
	session_start();
	include "../../database/connection.php";
	$conn = Connect();

	if(isset($_SESSION['whoIs']))
	{
		$spCode = $_GET['id'];
		$deleteQuery = $conn->prepare('DELETE FROM smartphone WHERE id=:spCode_');
		$deleteQuery->bindValue(':spCode_', $spCode);
		$deleteQuery->execute();
		?>
			<SCRIPT LANGUAGE="javascript"> 
         		alert("Registro eliminado"); 
	     	</SCRIPT> 
	     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=smartP">
		<?php
	}
	else
		{
			?>
				<SCRIPT LANGUAGE="javascript"> 
	         		alert("No Tiene Permisos"); 
		     	</SCRIPT> 
		     	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=../../index.php?h=smartP">
			<?php
		}		 

?>