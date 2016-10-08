	<html>
	<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
function cancel(p)
{
//	alert(p);
var x=document.getElementById(p).value;
//alert(x);
$.ajax({
type:'post',
url:'new.php',
data:{cancel:x}
}).done(function(data){
//alert(data);
});
window.open("friend.php","_self");
}
function accept(q)
{

var y=document.getElementById(q).value;
//alert(y);
$.ajax({
type:'post',
url:'new.php',
data:{accept:y}
}).done(function(data){

});
window.open("friend.php","_self");
}
</script>

	</head>
	<body>
<?php
session_start();
$email=$_SESSION['email'];
include("db.php");
//echo $email;
$sql="select * from users where user_email='$email'";
$run=mysqli_query($con,$sql);
if(!$run)
echo mysqli_error($con);
echo "<h2>Friend Requests</h2>";
while($row=mysqli_fetch_array($run))
{
	$id=$row['id'];
	$sql1="select * from friend where receive_request='$id' and status='0'";
	$run1=mysqli_query($con,$sql1);
	while($row1=mysqli_fetch_array($run1))
	{
		if(mysqli_num_rows($run1)>0)
		{
	$name=$row1['request_sent'];
	$sql2="select * from users where user_email='$name'";
	$run2=mysqli_query($con,$sql2);
	$n=0;
	while($row2=mysqli_fetch_array($run2))
	{
		$n=$n+1;
		$iid=$row2['id'];
		$name2=$row2['user_name'];
	echo $name2."</br>";
	?>
		<button onclick="cancel(<?php echo $n ?>)">Cancel</button>
		<button onclick="accept(<?php echo $n ?>)">Accept</button><br/>
		<input type="hidden" id="<?php echo $n; ?>" value="<?php echo $name ?>">
	<?php
}
}
}
}
echo "<a href='logout.php'>Logout</a>";
?>
	</body>
	</html>