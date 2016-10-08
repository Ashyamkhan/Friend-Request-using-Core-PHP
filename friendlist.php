<?php
session_start();
include("db.php");
$email=$_SESSION['email'];
$sql1="select * from users where user_email='$email'";
$run=mysqli_query($con,$sql1);
echo "<h1>List of friends</h2>";
while($row=mysqli_fetch_array($run))
{
 $id=$row['id'];
$sql="select * from friend where receive_request='$id' and status='1'";
$run1=mysqli_query($con,$sql);
while($row1=mysqli_fetch_array($run1))
{
	$name=$row1['request_sent'];
	$sql2="select * from users where user_email='$name'";
	$run2=mysqli_query($con,$sql2);
	while($row2=mysqli_fetch_array($run2))
	{
		$namee=$row2['user_name'];
		echo $namee."<br/>";
	}
}
}
?>
<a href="logout.php">Logout</a>