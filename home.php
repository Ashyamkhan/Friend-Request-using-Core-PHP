<html>
<head>
<title>Friends</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script>

function request(r)
{
	//alert(r);
	var a=document.getElementById(r).value;
	//alert(r);
	$.ajax(
{
type:'post',
url:'new.php',
data:{request_id:a}
}).done(function(data)
		{
//alert(data);
		});
document.getElementById("button"+r).style.display="none";
//window.history.back();
}
</script>
	</head>
	<body>
<form method="post" action="">
	<input type="search" name="search" placeholder="Search">
	<input type="submit" value="search" name="search_items">
	<div><a href="friend.php">Friends Request</a><br/>
		<a href="friendlist.php">Friend Lists</a>
	</div>
	
	<?php
include("db.php");

if(isset($_POST['search_items']))
{
	$name=str_replace(" ","",$_POST['search']);
	$sql="select * from users where user_name like '%$name%'";
$run=mysqli_query($con,$sql);
$n=0;
//echo $n;
while($row=mysqli_fetch_array($run))
{
	$name1=$row['user_name'];
	$n=$n+1;
	$id=$row['id'];
echo "$name1<br/>";?>
<input type="button" onclick="request(<?php echo $n; ?>)" value="request sent" id="<?php echo 'button'.$n ?>">
<?php
echo "<input type='hidden' id='$n' value='$id'> </br>";
}
}
echo "<a href='logout.php'>Logout</a>";
	?>
	</body>
	</html>