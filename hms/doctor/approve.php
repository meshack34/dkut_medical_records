<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
$id=$_POST['id'];
$email=$_SESSION['unique'];
echo $email;
$sql="update appointment set status='confirmed'  where userId='$id' ";
$result=mysqli_query($con,$sql);
header("location:appointment-history.php");

 ?>