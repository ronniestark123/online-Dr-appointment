<?php if(!isset($_SESSION)){
	session_start();


	$srNo=$_REQUEST['s'];
	include('../config.php');

	$sql="SELECT * FROM doctor WHERE doc_id=".$srNo;
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($result);	
}
	 include('header.php'); ?>




	<!-- this is for donor registraton -->
	<div class="recipient_reg" style="background-color:#272327;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">Update Doctor</h3>

		<div class="formstyle" style="float: right;padding:25px;border: 1px solid lightgrey;margin-right:320px; margin-bottom:30px;background-color: #101011;color:#d4530d;;">
		<form enctype="multipart/form-data" action=""  method="post" class="text-center" style="margin-left: 110px">
			 <div class="col-md-12">
				  	
			 		<label>
					    <input type="hidden" name="doc_id" value="<?php echo $row['doc_id']; ?>">
					</label>
					<label>
					    <input type="text" name="name" value="<?php echo $row['name']; ?>" placeholder="Full name" autocomplete="on">
					</label><br><br>
					<label>
						 <input type="text" name="address" value="<?php echo $row['address']; ?>" placeholder="address" >
					</label><br><br>
					<label>
						 <input type="text" name="contact" value="<?php echo $row['contact']; ?>" placeholder="contact" >
					</label><br><br>

					<label>
						 <input type="email" name="email"  value="<?php echo $row['email']; ?>" placeholder="email" >
					</label><br><br>
					
					<label>
						 <select name="expertise" >
						<option value="Nill">-Expert in-</option>
						<option value="Medicine">Medicine</option>
						<option value="Heart">Heart</option>
						<option value="Bone">Bone</option>
						<option value="kedney">kedney</option>
						</select>
					</label><br><br>
					<label>
					     <input type="text" name="userid" value="<?php echo $row['userid']; ?>" placeholder="userid" >
					</label><br><br>
					<label>
					   <input type="text" name="fee" value="<?php echo $row['fee']; ?>" placeholder="Fee" >
					</label><br><br>
					<label>
					   <input type="text" name="password" value="<?php echo $row['password']; ?>" placeholder="password" >
					</label><br><br>
					<label>
						 <input type="file" name="pic" value="<?php echo $row['pic']; ?>" id="pic" required>
					</label><br><br>
					
					<button name="submit" type="submit" style="margin-left:148px;margin-top: 4px;width:95px;border-radius: 3px;height: 30px">Update</button> <br>
				
			</div>	<!-- col-md-12 -->


				</form>
			</div>




	</div>
	
	

					<!-- inserting data -->
<?php  
 if(isset($_POST['submit'])){
	$target_dir = "../photo/";
	$target_file = $target_dir . basename($_FILES["pic"]["name"]);
	$uploadOk = 1;
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	// Check if image file is a actual image or fake image

    $check = getimagesize($_FILES["pic"]["tmp_name"]);
    if($check !== false) {
        // echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

	// Check if file already exists
	/*if (file_exists($target_file)) {
	    echo "<script>alert('Sorry, file already exists.');</script>";
	    $uploadOk = 0;
	}*/
	//aloow certain file formats
	if($imageFileType != "jpg" && $imageFileType !="png" && $imageFileType !="jpeg" && $imageFileType !="gif"){
		echo "sorry, only jpg, jpeg, Png & gif files are allowed.";
		$uploadok=0;
	}	
else{
	if(move_uploaded_file($_FILES["pic"]["tmp_name"], $target_file)) {
			include('../config.php');
			
			$doc_id=$_POST['doc_id'];
			$name=$_POST["name"];
			$address=$_POST["address"];
			$contact=$_POST["contact"];
			$email=$_POST["email"];
			$expertise=$_POST["expertise"];
			$userid=$_POST["userid"];
			$fee=$_POST["fee"];
			$password=$_POST["password"];
			$pic=basename($_FILES["pic"]["name"]);

			$sql="UPDATE doctor SET name='$name', address='$address', contact='$contact', email='$email', expertise='$expertise', userid='$userid', fee='$fee', password='$password', pic='$pic' WHERE doc_id='$doc_id'";

				if ($conn->query($sql) === TRUE) {
				    echo "<script>alert('Record Updated Successfully!');</script>";
				    echo "<script>location.href='viewDoctor.php'</script>";
				} else {
				    echo "<script>alert('There was an Error')<script>";
				}
			

			$conn->close();
	} else {
		echo "<script>alert('sorry there was an error!');</script>";
	}

}
}
?>
	</div>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
	