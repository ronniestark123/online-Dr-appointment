<?php if(!isset($_SESSION)){
	session_start();
	}  

   	$sid=$_REQUEST['s'];

	include('../config.php');

	$sql="DELETE FROM booking WHERE booking_id=$sid";
	  $result=mysqli_query($conn,$sql);
	  echo '<script>alert("Record deleted successfully!")</script>'; 
	  echo "<script>location.href='viewAppoinment.php'</script>";
?>
