<?php if(!isset($_SESSION)){
	session_start();


	$srNo=$_REQUEST['s'];
	include('../config.php');

	$sql="SELECT * FROM booking WHERE booking_id='$srNo'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($result);	
}
	 include('header.php'); ?>




	<!-- this is for donor registraton -->
	<div class="recipient_reg" style="background-color:#272327;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">Update Appointments</h3>

		<div class="formstyle" style="float: right;padding:25px;border: 1px solid lightgrey;margin-right:320px; margin-bottom:30px;background-color: #101011;color:#d4530d;;">
		<form enctype="multipart/form-data" action=""  method="post" class="text-center" style="margin-left: 110px">
			 <div class="col-md-12">
				  	
			 		<label>
					    <input type="hidden" name="booking_id" value="<?php echo $row['booking_id']; ?>">
					</label>
					<label>
					    <input type="text" name="dname" value="<?php echo $row['dname']; ?>" placeholder="Full name" autocomplete="on">
					</label><br><br>
					
					<label>
						 <input type="text" name="dcontact" value="<?php echo $row['dcontact']; ?>" placeholder="dcontact" >
					</label><br><br>
					<label>
						 <input type="text" name="pname" value="<?php echo $row['pname']; ?>" placeholder="pname" >
					</label><br><br>
					<label>
						 <input type="text" name="pcontact" value="<?php echo $row['pcontact']; ?>" placeholder="pcontact" >
					</label><br><br>

					<label>
						 <input type="text" name="expertise"  value="<?php echo $row['expertise']; ?>" placeholder="expertise" >
					</label><br><br>
					
					<label>
					   <input type="date" name="dates" value="<?php echo $row['dates']; ?>" placeholder="dates" >
					</label><br><br>
					<label>
						 Time: <select name="tyme" required>
										<option value="">-select-</option>
										<option value="10.00am">10.00am</option>
										<option value="11.00am">11.00am</option>
										<option value="12.00pm">12.00pm</option>
										<option value="01.00pm">01.00pm</option>
										<option value="02.00pm">02.00pm</option>
										<option value="03.00pm">03.00pm</option>
										<option value="04.00pm">04.00pm</option>
									</select>
					</label><br><br>
					
					
					<button name="submit" type="submit" style="margin-left:148px;margin-top: 4px;width:95px;border-radius: 3px;height: 30px">Update</button> <br>
				
			</div>	<!-- col-md-12 -->


				</form>
			</div>




	</div>
	
	

					<!-- inserting data -->
<?php  
 if(isset($_POST['submit'])){
	
			include('../config.php');
			
			$id=$_POST["booking_id"];
			$dname=$_POST["dname"];
			$pname=$_POST["pname"];
			$dcontact=$_POST["dcontact"];
			$pcontact=$_POST["pcontact"];
			$expertise=$_POST["expertise"];
			$dates=$_POST["dates"];
			$tyme=$_POST["tyme"];

			$sql="UPDATE booking SET dname='$dname',pname='$pname', dcontact='$dcontact',pcontact='$pcontact', expertise='$expertise', dates='$dates', tyme='$tyme' WHERE booking_id='$id'";
			
				if ($conn->query($sql) === TRUE) {
				    echo "<script>alert('Record Updated Successfully!');</script>";
				   // echo "<script>location.href='viewAppoinment.php'</script>";
				} else {
				    echo "<script>alert('There was an Error')<script>";
				}
			

			$conn->close();
	}


?>
	</div>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
	