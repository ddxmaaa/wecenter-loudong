<?php
function fack_insert($user_name, $pass_word, $email = null, $sex = 0, $mobile = null)
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
	 
	$salt = NULL;
	$email = $email;
	$sex = intval($sex);
	$reg_time = time();
	$reg_ip=ip2long('127.0.0.1');
	$email_settings = null;
	 
	$query = "INSERT INTO userss(user_name,password,salt,email,sex,mobile,reg_time,reg_ip,email_settings) VALUES (\"$user_name\",'$pass_word','$salt','$email','$sex','$mobile','$reg_time','$reg_ip','$email_settings')";
	mysqli_query($dbc,$query);
	print mysql_error();
	echo mysql_error();
	
	 
	$query = "SELECT * FROM userss WHERE user_name = '$user_name'";
	$data = mysqli_query($dbc, $query);
	
	if (mysqli_num_rows($data) == 0)
	{
		echo "error".mysql_errno();
	}
	else
	{
		echo "safe";
	}

}
fack_insert($_GET['user_name'], $_GET['password'], $_GET['email']);
?>