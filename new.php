<?php
session_start();
include("db.php");
$staus=0;
$email=$_SESSION['email'];
if(isset($_POST['request_id']))
{
$id=$_POST['request_id'];
$sql="insert into friend(request_sent,receive_request,status) values('$email','$id','0')";
$run=mysqli_query($con,$sql);
if(!$un)
echo mysqli_error($con);
}

if(isset($_POST['cancel']))
{
	$id=$_POST['cancel'];
	$sql1="select * from users where user_email='$email'";
	$run1=mysqli_query($con,$sql1);
	while($row1=mysqli_fetch_array($run1))
	{
		$uid=$row1['id'];
	$sql="delete from friend where request_sent='$id' and receive_request='$uid'";
	$run=mysqli_query($con,$sql);
	if(!$run)
		echo mysqli_error($con);
}
//echo 1;
}

if(isset($_POST['accept']))
{
	$id=$_POST['accept'];
	$sql1="select * from users where user_email='$email'";
	$run1=mysqli_query($con,$sql1);
	while($row1=mysqli_fetch_array($run1))
	{
		$uid=$row1['id'];
	$sql="update friend set status='1' where request_sent='$id' and receive_request='$uid'";
	$run=mysqli_query($con,$sql);
	if(!$run)
		echo mysqli_error($con);
}
//echo 1;
}
?>