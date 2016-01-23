<?php
function clean_input($dirty){
	if (get_magic_quotes_gpc()) {
		$clean = mysql_escape_string(stripslashes($dirty));
	}else{
		$clean = mysql_escape_string($dirty);
	}
	return $clean;
}
function not_find($page)
{
	echo "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\"><html><head><title>404 Not Found</title></head><body><h1>Not Found</h1>
		<p>The requested URL ".$page." was not found on this server.</p></body></html>";
}
$host = 'localhost';
$username = 'user';
$password = 'pass';
$database = 'mydb';
$dbc = mysqli_connect($host, $username, $password, $database);
if (!$dbc)
{
	die('Could not connect: ' . mysql_error());
}
session_start();
if (!empty($_POST['user_name']) && !empty($_POST['password'])) {
	$clean_name = clean_input($_POST['user_name']);
	$clean_pass = clean_input($_POST['password']);
	$query = "SELECT * FROM users WHERE user_name = '$clean_name' AND password = SHA('$clean_pass')";
	$data = mysqli_query($dbc, $query) or die('Error!!');
	mysqli_close($dbc);

	if (mysqli_num_rows($data) == 1) {
		$row = mysqli_fetch_array($data);
		$_SESSION['username'] = $row['user_name'];
		$_SESSION['uid'] = $row['uid'];
		if(isset($_SESSION['mode']) || $_SESSION['mode'] == 'login' )
		{
		header('Location: user.php');
		}
			if($_SESSION['mode'] == 'oauth')
			{
				header('Location: authorize.php?client_id='.$_POST['client_id'].'&redirect_uri='.$_POST['redirect_uri'].'&response_type='.$_POST['response_type']);
			}
			else 
			{
				echo $_POST['client_id'];
			}
	}
	else {
		if($_SESSION['mode'] == 'oauth')
		{
			$_SESSION['error_info'] = '用户名或密码错误';
			header('Location: login.php?client_id='.$_POST['client_id'].'&redirect_uri='.$_POST['redirect_uri'].'&response_type='.$_POST['response_type']);
		}
		else
		{
			$_SESSION['error_info'] = '用户名或密码错误';
			header('Location: login.php');	
		}
	}
}
elseif (empty($_POST['user_name']))
{
	if($_SESSION['mode'] == 'oauth')
	{
		$_SESSION['error_info'] = '请输入用户名';
		header('Location: login.php?client_id='.$_POST['client_id'].'&redirect_uri='.$_POST['redirect_uri'].'&response_type='.$_POST['response_type']);
	}
	else {
	$_SESSION['error_info'] = '请输入用户名';
	header('Location: login.php');
	}
}
elseif (empty($_POST['password']))
{
	if($_SESSION['mode'] == 'oauth')
	{
		$_SESSION['error_info'] = '请输入密码';
		header('Location: login.php?client_id='.$_POST['client_id'].'&redirect_uri='.$_POST['redirect_uri'].'&response_type='.$_POST['response_type']);
	}
	else 
	{
		$_SESSION['error_info'] = '请输入密码';
		header('Location: login.php');
	}
}

else {
	not_find($_SERVER['PHP_SELF']);
}
?>