<?php

function insert($client_id, $client_secret, $rurl)
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
	
	$query = "SELECT * FROM oauth2";
	$data = mysqli_query($dbc, $query) or die('Error!!');
	
	if (mysqli_num_rows($data) == 1) 
	{
		$row = mysqli_fetch_array($data);
		$bk_cid=$row['client_id'];
		$bk_cse=$row['client_secret'];
		$bk_ru=$row['redirect_uri'];
		$query = "delete FROM oauth2";
		mysqli_query($dbc, $query) or die('Error!!');
	}
	else 
	{
		$query = "delete FROM oauth2";
		mysqli_query($dbc, $query) or die('Error!!');
		
	}
	
	$query = "INSERT INTO oauth2 values ('$client_id','$client_secret','$rurl')";
	if (mysqli_query($dbc,$query))
	{
		mysqli_close($dbc);
		return TRUE;
	}
	else 
	{
		$query = "INSERT INTO oauth2 values ('$bk_cid','$bk_cse','$bk_ru')";
		mysqli_query($dbc,$query) or die ('error'.mysql_error());
		mysqli_close($dbc);
		return false;
	}
}
if(insert($_POST['client_id'], $_POST['client_secret'], $_POST['redirect_uri']))
{
	header('location: /baji/?/admin');
}
else
{
	echo 'falid';
}

?>
