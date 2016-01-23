<?php

/**
 * @file
 * Sample token endpoint.
 *
 * Obviously not production-ready code, just simple and to the point.
 *
 * In reality, you'd probably use a nifty framework to handle most of the crud for you.
 */
session_start();

require "lib/PDOOAuth2.inc";

$oauth = new PDOOAuth2();
$actoken=$oauth->grantAccessToken();

$host = 'localhost';
$username = 'user';
$password = 'pass';
$database = 'mydb';
$dbc = mysqli_connect($host, $username, $password, $database);
if (!$dbc)
{
	die('Could not connect: ' . mysql_error());
}

$token=$actoken['access_token'];
$uid=$_POST['uid'];
$query = "INSERT INTO tokenuid VALUES ('$token','$uid')";
mysqli_query($dbc,$query) or die("Error!!");
mysqli_close($dbc);

