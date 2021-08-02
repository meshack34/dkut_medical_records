<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
$id=$_POST['id'];

echo $id;

$sql="select * from doctors where id='$id' ";
$result=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($result)){
    echo $row['doctorName'];
    echo $row['address'];
    echo $row['docFees'];

}



echo '
<form action="approve.php" method="POST">
<input type="hidden" value='.$id.' name="id"> 
<Button type="submit" name="Approve" value="approve"> SAVE</BUTTON>

</FORM>';





?>