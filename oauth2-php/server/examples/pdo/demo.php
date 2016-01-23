<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Wopop</title>

<link href="css/css.css" rel="stylesheet" type="text/css">

</head>

<body class="login">
<?php
session_start();
header("Content-Type:text/html;charset=utf-8");
if(isset($_SESSION['error_info']) && $_SESSION['error_info'] != '') {
	echo '<br></br>'.$_SESSION['error_info'];
	$_SESSION['error_info'] = '';
}
if(!empty($_GET['client_id']) && !empty($_GET['response_type']) && !empty($_GET['client_secret']) && !empty($_GET['redirect_uri']))
{
	$_SESSION['mode']='oauth';
}
else 
{
	$_SESSION['mode']='login';
}
echo "<br></br>";
echo "the login mode is 	".$_SESSION['mode'];

?>
<div class="login_m">
	<div class="login_logo"><img src="images/logo.png" width="196" height="46"></div>
	<div class="login_boder">
		<div class="login_padding">
		<form method="post" action="logincheck.php">
			 <?php if ($_SESSION['mode']=='oauth') { ?>
			<input type="hidden" name="client_id" value=<?php echo $_GET['client_id']?>>
			<input type="hidden" name="response_type" value=<?php echo $_GET['response_type']?>>
			<input type="hidden" name="redirect_uri" value=<?php echo $_GET['redirect_uri']?>>
			<input type="hidden" name="client_secret" value=<?php echo $_GET['client_secret']?>>
			<?php }?>
			<h2>用户名</h2>
			<label>
				<input type="text" id="user_name" name="user_name" class="txt_input txt_input2" onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}" value="Your name">
			</label>
			<h2>密码</h2>
			<label>
				<input type="password" name="password" id="password" class="txt_input" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="******">
			</label>
			<h2><a href="reg.php">注册</a><h2>
			<div class="rem_sub">
				<label>
					<input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
				</label>
			</div>
		</form>
		</div>
	</div><!--login_boder end-->
</div><!--login_m end-->

<br />
<br />


</body>
</html>