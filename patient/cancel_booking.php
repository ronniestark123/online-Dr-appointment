<?php if(!isset($_SESSION)){
	session_start();
	}  

   	$sid=$_REQUEST['dates'];

	include('../config.php');

	$sql="DELETE FROM booking WHERE booking_id=$sid";
	  $result=mysqli_query($conn,$sql);
	  echo '<script>alert("Booking cancelation successfully!")</script>'; 
	  echo "<script>location.href='view_booking.php'</script>";
?>
