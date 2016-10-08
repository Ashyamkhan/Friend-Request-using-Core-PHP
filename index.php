<?php
session_start();
include("db.php");
?>
<html>
<head>
	<title>FB</title>
</head>
<body>
	<form method="post" action="">
Enter Name		<input type="text" name="user_name"><br/>
Enter Password<input type="password" name="user_password"><br/>
<input type="submit" name="signin">
		</form>
	</body>
	</html>
	<?php
if(isset($_POST['signin']))
{
	$name=$_POST['user_name'];
	$password=$_POST['user_password'];
	$sql="select * from users where user_name='$name' and user_password='$password'";
	$run=mysqli_query($con,$sql);
	while($row=mysqli_fetch_array($run))
	{
		$email=$row['user_email'];
		$_SESSION['email']=$email;
	}
	if(mysqli_num_rows($run)>0)
	{
		echo "<script>alert('Successfully Login')</script>";
		echo "<script>window.open('home.php','_self')</script>";
	}
	else
	{
		echo "<script>alert('Wrong Password')</script>";
			echo "<script>window.open('index.php','_self')</script>";
	}
}
	?>