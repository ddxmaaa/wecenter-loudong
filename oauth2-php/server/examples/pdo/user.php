<?php
session_start();
if (!isset($_SESSION['username'])) {
	header("Location:login.php");
	if (!isset($SESSION['uid'])) {
		header("Location:login.php");
	}
}
$username=$_SESSION['username'];
echo 'welcome '.$username; 
	?>
<html>
<body><a href=logout.php>logout</a></body>
</html>