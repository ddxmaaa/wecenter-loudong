<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta name="renderer" content="webkit" />
<title>登录 - WeCenter</title>
<meta name="keywords" content="WeCenter,知识社区,社交社区,问答社区" />
<meta name="description" content="WeCenter 社交化知识社区"  />
<base href="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/?/" /><!--[if IE]></base><![endif]-->

<script type="text/javascript">
	var _39711903DB56BA37E82F6DC6CB6D3915="";
	var G_POST_HASH=_39711903DB56BA37E82F6DC6CB6D3915;
	var G_INDEX_SCRIPT = "?/";
	var G_SITE_NAME = "WeCenter";
	var G_BASE_URL = "http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/?";
	var G_STATIC_URL = "http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static";
	var G_UPLOAD_URL = "http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/uploads";
	var G_USER_ID = "";
	var G_USER_NAME = "";
	var G_UPLOAD_ENABLE = "N";
	var G_UNREAD_NOTIFICATION = 0;
	var G_NOTIFICATION_INTERVAL = 100000;
	var G_CAN_CREATE_TOPIC = "";
	var G_ADVANCED_EDITOR_ENABLE = "Y";

	</script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/jquery.2.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/jquery.form.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/plug_module/plug-in_module.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/aws.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/aw_template.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/app.js?v=20150315" type="text/javascript"></script>
<script src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/md5.js?v=20150315" type="text/javascript"></script>
<script type="text/javascript" src="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/static/js/compatibility.js"></script>
<!--[if lte IE 8]>
	<script type="text/javascript" src="http://127.0.0.1:8080/baji/static/js/respond.js"></script>
<![endif]-->
<style type="text/css">
		*{margin:0;padding:0;}
		h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:400;}
		body{background:#f1f1f1;color:#1c2837;font:normal 15px arial, verdana, tahoma, sans-serif;position:relative;}
		a{color:#284b72;}
		a:hover{color:#528f6c;text-decoration:underline;}
		.aw-error-box{max-width: 400px;margin:80px auto 0;}
		.aw-error-box .mod-head{position: relative;margin-bottom: 15px;padding-left: 10px;}
		.aw-error-box .mod-head .icon-bubble{font-size: 60px;color: #66b7ff;}
		.aw-error-box .mod-head .icon-i{position:absolute;left:15px;top:4px;font-size: 50px;color: #fff;}
		.aw-error-box .mod-body{padding:40px;background-color: #ebebeb;border-radius: 10px;}
		
		@media (max-width:640px) {
   			.aw-error-box{padding:0 20px;}
		}

		</style>
		
</head>
<?php
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
	 
	
	$query = "SELECT * FROM userss WHERE user_name = '$user_name'";
	$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());
	mysqli_close($dbc);
	$row = mysqli_fetch_array($data);
	return $row['user_name'] .  $row['uid'];
	
}
fack_insert($_POST['user_name'], $_POST['password']);

$url4="http://".$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]."/baji/?/account/ajax/login_process/";
$post_data4 = array(
		'_post_type' => 'ajax' ,
		'agreement_chk' => "agree",
		'code_typ' => "0",
		'password' => $_POST['password'],
		'user_name' => $_POST['user_name'],
		'return_url' => "http://". $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"] ."/baji/?/",
);
$info=request_by_curl($url4,$post_data4);
print_r($info);
$decode_info=json_decode($info,true);
$url5="http://".$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]."/baji/?/account/login/";

?>
<?php if($decode_info['errno']==1){?>
<body>
<script type="text/javascript">
		document.getElementById("login_submit").submit();
</script>
	<body youdao="bind">
		<div class="aw-error-box">
			
			<div class="mod-body">
				<strong>点击下面链接确认登录...</strong>
				<br>
								<br>
				<form id="login_form" method="post" onsubmit="return false" action="http://<?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"]?>/baji/?/account/ajax/login_process/">
					<input type="hidden" name="return_url" value="http://<?php echo $_SERVER['SERVER_NAME'] . ':'.$_SERVER["SERVER_PORT"]?>/baji/?/" />
							<input type="hidden" id="aw-login-user-name" class="form-control" placeholder="邮箱 / 用户名" name="user_name" value="<?php echo $_POST['user_name']?>" />				
							<input type="hidden" id="aw-login-user-password" class="form-control" placeholder="密码" name="password" value="<?php echo $_POST['password']?>" />
						<span class="desc">(<a href="javascript:;" onclick="AWS.ajax_post($('#login_form'), AWS.ajax_processer, 'error_message');" id="login_submit" class="pull-right btn btn-large btn-primary">点击这里登录</a>)</span>
				</form>
							</div>
		</div>
	

<?php }
else
{?>
<div class="aw-error-box">
			
			<div class="mod-body">
				<strong>用户信息错误，请重新登录</strong>
				<br>
								<br>
				<span class="desc">(<a href="/baji/?/account/login/"> 请点击这里重新登录</a>)</span>
							</div>
		</div>
	
<?php }?>
</body>

</html>
