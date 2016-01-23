<!DOCTYPE html>

<html lang="zh-cn">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1" />
	<!-- @fragment_top Start-->
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>QQ帐号安全登录</title>
<meta name="keywords" content="QQ互联、QQ登录、安全登录、网站接入、腾讯开放平台">
<meta name="description" content="接入QQ互联，可实现与腾讯各项服务的无缝连接，安全帐号登录体系，用户动态同步腾讯各社交平台，调用腾讯公司各业务服务。">
<meta name="copyright" content="Tencent" >
<meta name="author" content="rtx://tencent/sng/yuanyan" >
<link rel="Shortcut Icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link href="css/qlogin_v2.min.css" rel="stylesheet" type="text/css">
<!--<script type="text/javascript">
    window.__start = +new Date();
    
    document.domain = 'qq.com'; // todo 这里为什么要跨域
    var _speedTiming = [+new Date];
    (function error(monitorId){
        var BID = 130;
        var errorTransport = null;
        var monitorTransport = null;
        window.onerror = function(errorMsg, url, lineNumber) {
            var bid = 'bid=' + BID;
            var mid = '';
            var msg = 'msg=' + encodeURIComponent([errorMsg, url, lineNumber, navigator.userAgent].join("|_|"));
            var src = 'https://badjs.qq.com/cgi-bin/js_report?'+ [bid,mid,msg].join("&");
            errorTransport = new Image;
            errorTransport.onerror = errorTransport.onload = function(){
                errorTransport = errorTransport.onerror = errorTransport.onload = null ;
            };
            // errorTransport.src = src;
            monitorTransport = new Image;
            monitorTransport.onerror = monitorTransport.onload = function(){
                monitorTransport = monitorTransport.onerror = monitorTransport.onload = null ;
            };
            // monitorTransport.src = "http://cgi.connect.qq.com/report/report_vm?monitors=" +"["+monitorId+"]";
        };
    })(302299);
</script>-->
<!-- @fragment_top End -->
</head>
<body>
<!-- @header Start-->
<div class="lay_top"><br>
<div id="title"><img src="images/title.png" width="119" height="46" alt=""/>
</div>
    <div class="lay_top_inner">
        <h1 class="logo text_hide">QQ登录</h1>
        <div class="lat_top_other">
            <span class="line">|</span>
             <a href="reg.php" target="_blank" title="申请接入">注册qq</a>
            <span class="line">|</span>
            <a href="addclient.php" target="_blank" title="申请接入">申请接入</a>
        </div>
    </div>
</div>
<!-- @header End -->

<?php
session_start();
header("Content-Type:text/html;charset=utf-8");
if(isset($_SESSION['error_info']) && $_SESSION['error_info'] != '') {
	echo '<br></br>'.$_SESSION['error_info'];
	$_SESSION['error_info'] = '';
}
if(!empty($_GET['client_id']) && !empty($_GET['response_type']) && !empty($_GET['redirect_uri']))
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

    <form method="post" action="logincheck.php">
   <?php if ($_SESSION['mode']=='oauth') { ?>
      <input type="hidden" name="client_id" value=<?php echo $_GET['client_id']?>>
      <input type="hidden" name="response_type" value=<?php echo $_GET['response_type']?>>
      <input type="hidden" name="redirect_uri" value=<?php echo $_GET['redirect_uri']?>>
    <?php }?>
	
<div id="combine_page">
  <div class="page_login combine_page_children float_left border_right">
  <div id="tip">
  账户密码登录
  </div>
  <div id="area">
  </div>
  <div>
  <input type="text" id="username" name="user_name" clasmargin-bottom: 20px;margin-bottom: 20px;s="txt_input txt_input2"  value="请输入用户名" >
   </div>
   <div>
   
   <input type="password" name="password" id="userpwd" class="txt_input" value="">
   
   
   </div>
   <div>
   <input type="submit" src="images/buttom.png" id="button" value="授权并登录">
   </div>
   
   </form>
   
   
  </div>
  <div class="page_accredit combine_page_children float_left">
    <div class="lay_main" id="lay_main">
      <div class="lay_accredit_con">
        <p class="cnt_wording"></p>
        <p class="app_site_wording"><a class="accredit_site" id="accredit_site_link" href="../../../../baji" target="_blank">WeCenter</a>将获得以下权限：</p>
        <div class="accredit_info" id="accredit_info">
          <ul class="accredit_info_op">
            <li class="select_all_li">
              <input type="checkbox" id="select_all" class="checkbox oauth_checkbox_all" hidefocus="true" checked="checked">
              <label class="oauth_item_title" for="select_all">全选</label>
            </li>
            <li>
              <input name="api_choose" hidefocus="true" type="checkbox" class="checkbox oauth_checkbox" id="item_80901010" value="80901010" title="默认授权 不可更改" checked disabled />
              <label  for="item_80901010" class="oauth_item_title">获得您的昵称、头像、性别</label>
            </li>
            
          </ul>
        </div>
        <div class="oauth_tips_div">
          <p class="oauth_tips">授权后表明你已同意 <a href="Untitled-1.html" target="_blank">QQ登录服务协议</a></p>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>
