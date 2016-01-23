<?php
function not_find($page)
{
	echo "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\"><html><head><title>404 Not Found</title></head><body><h1>Not Found</h1>
		<p>The requested URL ".$page." was not found on this server.</p></body></html>";
}
function request_by_curl($remote_server, $post_string)
{
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $remote_server);
	curl_setopt($ch, CURLOPT_POSTFIELDS,$post_string);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_USERAGENT, "qianyunlai.com's CURL Example beta");
	$data = curl_exec($ch);
	curl_close($ch);

	return $data;
}
function generate_password( $length = 8 ) {
	// 密码字符集，可任意添加你需要的字符
	$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_ []{}<>~`+=,.;:/?　';

	$password = '';
	for ( $i = 0; $i < $length; $i++ )
	{
		// 这里提供两种字符获取方式
		// 第一种是使用 substr 截取$chars中的任意一位字符；
		// 第二种是取字符数组 $chars 的任意元素
		// $password .= substr($chars, mt_rand(0, strlen($chars) - 1), 1);
		$password .= $chars[ mt_rand(0, strlen($chars) - 1) ];
	}

	return md5($password);
}
$terror = '{"error":"token is out of time","eno":1}';
$sqlerror = '{"error":"could not find token","eno":2}';
$cerror = '{"error":"token or live time unset","eno":3}';
$ferror = '{"error":"the token is unband by the uid","eno":4}';
$uerror = '{"error":"the uid is not in user database ","eno":5}';
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
$token=$_POST['access_token'];
$livetime=$_POST['expires_in'];
$scope=$_POST['scope'];
$uid=$_POST['uid'];
$rurl=$_POST['rurl'];


if (!empty($token) && !empty($livetime)) 
{
	$query = "SELECT * FROM tokens WHERE oauth_token = '$token'";
	$data = mysqli_query($dbc, $query) or die('Error!!');

	if (mysqli_num_rows($data) == 1) {
		$row = mysqli_fetch_array($data);
		$time=$row['expires'];
		$lived=$time-time();
		if($lived > 0)
		{
			$query = "SELECT * FROM tokenuid WHERE oauth_token = '$token' and uid = '$uid'";
			$datai = mysqli_query($dbc, $query) or die('Error!!');
			if (mysqli_num_rows($datai) == 1)
			{
				$query = "SELECT * FROM users WHERE uid = '$uid'";
				$datau = mysqli_query($dbc, $query) or die('Error!!');
				if (mysqli_num_rows($datau) == 1)
				{
					$row1 = mysqli_fetch_array($datau);
					$yz=$row1['yz'];
					$user_name=$row1['user_name'];
					$openid=$row1['openid'];
					if ($yz==1)
					{
						$uinfo= '{"seccess":"login","user_name":"'.$user_name.'","openid":"'.$openid.'","se":0}';
						echo $uinfo;
					}
					else 
					{
						$openid=generate_password(20);
						$query=" update users set yz=1,openid='$openid' where uid='$uid'";
						mysqli_query($dbc, $query) or die('Error!!');
						$uinfo= '{"seccess":"first login","user_name":"'.$user_name.'","openid":"'.$openid.'","se":1}';
						echo $uinfo;
					}
				}
				else
				{
					echo $uerror;
				}
			}
			else
			{
				echo $ferror;
			}
		}
		else 
		{
			echo $terror;
		}
	}
	else {
		echo $sqlerror;
	}
}
else 
{
	echo $cerror;
}