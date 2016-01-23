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
	//过滤输入变量
	$clean_name = clean_input($_POST['user_name']);
	$clean_pass = clean_input($_POST['password']);
	
	//判断用户名已是否存在
	$query = "SELECT * FROM users WHERE user_name = '$clean_name'";
    $data = mysqli_query($dbc, $query);
	if (mysqli_num_rows($data) == 1) {
		$_SESSION['error_info'] = '用户名已存在';
		header('Location: reg.php');
	}
	//添加用户
	else {
		$date = date('Y-m-d');
		$query = "INSERT INTO users(user_name,password) VALUES ('$clean_name',SHA('$clean_pass'))";
		mysqli_query($dbc,$query) or die("Error!!");
		mysqli_close($dbc);
		header('Location: login.php');
	}
	
}
elseif (empty($_POST['user_name']))
{
	$_SESSION['error_info'] = '请输入用户名';
	header('Location: reg.php');
}

elseif (empty($_POST['password']))
{
	$_SESSION['error_info'] = '请输入密码';
	header('Location: reg.php');
}

else {
	not_find($_SERVER['PHP_SELF']);
}
?>