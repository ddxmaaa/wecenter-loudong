<?php

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
		
		$client_id = $bk_cid;
		$client_secret = $bk_cse;
		$redirect_uri = $bk_ru;
		$response_type='code';
		$url='http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"] . "/oauth2-php/server/examples/pdo/authorize.php?client_id=".$client_id.'&redirect_uri='.$redirect_uri.'&response_type='.$response_type;
		
		header('location:'.$url);
	}
	else 
	{
		echo 'error the oauth data is not in data base.';
	}

