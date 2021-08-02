<html>
<head>
	<title>Patient Details</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
<body>
<?php
include("func.php");
if (isset($_POST['Patient_search_submit']))
 {
	$contact=$_POST['search'];
	$query="select * from doctorapp where contact='$contact'";
	$result=mysqli_query($con,$query);
	echo "<div class='container-fluid' style='margin-top:50px;'>
	 <div class'card'>
	 <div class ='card-body'><a href='patient_details.php' class='btn btn-light'>Go Back</a></div>
<img src = 'images/head.jpeg' class ='card-img-top'>
	<div class='card-body' style='background-color: #3498DB;color: #ffffff;'>
     <table class='table table-hover'>
     	<thead>
     		<tr>
     			<th>First Name</th>
     			<th>Last Name</th>
     			<th>Email id</th>
     			<th>Contact </th>
     			<th>Doctor Appointment</th>
     		</tr>
     	</thead>
     	<tbody>
     	";
	while ($row=mysqli_fetch_array($result)) {	
	$fname=$row['fname'];
	$lname=$row['lname'];
	$email=$row['email'];
	$contact=$row['contact'];
	$docapp=$row['docapp'];
	echo "<tr>
     			<td>$fname</td>
     			<td>$lname</td>
     			<td>$contact</td>
     			<td>$email</td>
     			<td>$docapp</td>
     </tr>";
   }
   echo "</tbody></table></div></div></div>";
}
?>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>