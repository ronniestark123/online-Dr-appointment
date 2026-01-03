<?php if(!isset($_SESSION)){
	session_start();


	$srNo=$_REQUEST['s'];
	include('../config.php');

	$sql="SELECT * FROM patient WHERE id='$srNo'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($result);	
}
	 include('header.php'); ?>




	<!-- this is for donor registraton -->
	<div class="recipient_reg" style="background-color:#272327;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">Update Patient Record</h3>

		<div class="formstyle" style="float: right;padding:25px;border: 1px solid lightgrey;margin-right:320px; margin-bottom:30px;background-color: #101011;color:#d4530d;;">
		<form enctype="multipart/form-data" action=""  method="post" class="text-center" style="margin-left: 110px">
			 <div class="col-md-12">
				  	
			 		<label>
					    <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
					</label>
					<label>
					    <input type="text" name="name" value="<?php echo $row['name']; ?>" placeholder="Full name" autocomplete="on">
					</label><br><br>
					<label>
						 <input type="text" name="age" value="<?php echo $row['age']; ?>" placeholder="age" >
					</label><br><br>
					<label>
						 <input type="text" name="contact" value="<?php echo $row['contact']; ?>" placeholder="contact" >
					</label><br><br>

					<label>
						 <input type="text" name="address"  value="<?php echo $row['address']; ?>" placeholder="address" >
					</label><br><br>
					<label>
						<select name="bgroup" required>
							<option value="">-select-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
						</select>

					</label><br><br>
					<label>
					   <input type="text" name="email" value="<?php echo $row['email']; ?>" placeholder="email" >
					</label><br><br>
					<label>
					   <input type="text" name="password" value="<?php echo $row['password']; ?>" placeholder="password" >
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
			
			$id=$_POST["id"];
			$name=$_POST["name"];
			$age=$_POST["age"];
			$contact=$_POST["contact"];
			$address=$_POST["address"];
			$bgroup=$_POST["bgroup"];
			$email=$_POST["email"];
			$password=$_POST["password"];

			$sql="UPDATE patient SET name='$name', age='$age', contact='$contact', address='$address', bgroup='$bgroup', email='$email', password='$password' WHERE id='$id'";
			
				if ($conn->query($sql) === TRUE) {
				    echo "<script>alert('Record Updated Successfully!');</script>";
				    echo "<script>location.href='viewCustomer.php'</script>";
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
	