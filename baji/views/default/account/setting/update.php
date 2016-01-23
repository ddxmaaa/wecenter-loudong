<?php
function fack_insert($uid,$email)
{
	$host = 'localhost';
	$username = 'root';
	$password = 'toor';
	$database = 'baji';
	$dbc = mysqli_connect($host, $username, $password, $database);
	if (!$dbc)
	{
		die('Could not connect: ' . mysql_error());
	}
	 
	
	$query = "update users set email = '$email' where uid = '$uid'";
	$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());

	$query = "SELECT * FROM users WHERE email= '$email'";
	$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());
	mysqli_close($dbc);
	$row = mysqli_fetch_array($data);
	return $row['user_name'] .  $row['uid'];
	
}
if (!isset($_COOKIE['wid_uid']) && !isset($_POST['common_email']))
{
	header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/account/setting/openid/?a=0');
}
else {
	$uid=$_COOKIE['wid_uid'];
	$email=$_POST['common_email'];
	if(empty($email))
	{
		header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/account/setting/openid/?a=0');
	}
	else 
	{
		fack_insert($uid, $email);
		header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/account/setting/openid/?a=1');
	}
}
?>
