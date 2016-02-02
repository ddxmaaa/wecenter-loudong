<?php
function sle($uid)
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
	
	$query = "SELECT * FROM users WHERE uid= '$uid'";
	$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());
	mysqli_close($dbc);
	if (mysqli_num_rows($data) == 0)
	{
		$error = array(erron => 1);
		return $error;
	}
	else {
		$row = mysqli_fetch_array($data);
		$arr=array(
			uid => $row['uid'],
			user_name => $row['user_name'],
			email   => $row['email'],
			phone => $row['mobile'],
			city => $row['city'],
			reg_ip => long2ip($row['reg_ip']),
			last_ip => long2ip($row['last_ip'])
		);
		return $arr;
	}
}
$no=$_POST['uid'];
$data1=sle($no);
$unam=$data1['user_name'];
$data=json_encode(sle($no));
$deda=base64_encode($data);
print_r($deda);
header('location:/baji/?/people/'.$unam.'?info='.$deda);

if(!empty($_GET['info']))
{
	$data=json_decode(base64_decode($_GET['info']),true);
	$uname=$data['user_name'];
	$email=$data['email'];
	$city=$data['city'];
	$phone=$data['phone'];
	$reg_ip=$data['reg_ip'];
	$last_ip=$data['last_ip'];
	echo "用户名：".$unam."</br>";
	echo "手机号：".$phone."</br>";
	echo "邮箱：".$email."</br>";
	echo "城市：".$city."</br>";
	echo "注册ip：".$reg_ip."</br>";
	echo "登陆ip：".$last_ip."</br>";
}

?>