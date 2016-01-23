<?php
function fack_insert($user_name, $pass_word=null, $email = null, $sex = 0, $mobile = null)
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

	$query = "SELECT * FROM users WHERE user_name = '$user_name'";
	$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());
	mysqli_close($dbc);
	$row = mysqli_fetch_array($data);
	return $row['user_name'];
}
if(empty($_GET['name']))
{
	header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/people/?c=no');
}
$name=fack_insert($_GET['name']);
echo $name;
if(empty($name))
{
	header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/people/?c=no');
}
else 
{
	header('location:http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].'/baji/?/people/'.$name);
}

