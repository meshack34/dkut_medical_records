<?php
$con=mysqli_connect("localhost","root","","hms");
if(isset($_POST['login_submit'])){
	$username=$_POST['username'];
	$password=$_POST['password'];
	$query="select * from logintb where username='$username' and password='$password';";
	$result=mysqli_query($con,$query);
	if(mysqli_num_rows($result)==1)
	{
		
		header("Location:admin-panel.php");
	}
	else
  {
  	echo "<script>alert('Error login')</script>";
	echo "<script>window.open('index.php','_self')</script>";
		//header("Location:error.php");
  }
}

if(isset($_POST['pat_submit'])) {
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$email=$_POST['email'];
	$contact=$_POST['contact'];
	$docapp=$_POST['docapp'];
	$query="insert into doctorapp(fname,lname,email,contact,docapp)values('$fname','$lname','$email','$contact','$docapp')";

	$result=mysqli_query($con,$query);
	if ($result) {
		echo "<script>alert('Appointment Registered')</script>";
	    echo "<script>window.open('admin-panel.php','_self')</script>";
	}
}

function get_patient_details(){
	global $con ;

	$query="select * from doctorapp";
	$result=mysqli_query($con,$query);
	while ($row=mysqli_fetch_array($result)) {
		
	$fname=$row['fname'];
	$lname=$row['lname'];
	$email=$row['email'];
	$contact=$row['contact'];
	$docapp=$row['docapp'];
	echo "<tr>
     			
     			<td>$fname</td>
     			<td>$lname</td>
     			<td>$email</td>
     			<td>$contact</td>
     			<td>$docapp</td>
     		</tr>";
	}



}






?>