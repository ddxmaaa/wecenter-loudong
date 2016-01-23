<?php

/**
 * @file
 * Sample authorize endpoint.
 *
 * Obviously not production-ready code, just simple and to the point.
 *
 * In reality, you'd probably use a nifty framework to handle most of the crud for you.
 */
session_start();
if(!empty($_GET['client_id']) || !empty($_GET['response_type']) || !empty($_GET['redirect_uri']))
{		
	if(!isset($_SESSION['uid']) || !isset($_SESSION['username']))
	{
	$_SESSION['mode']='oauth';
	header('Location: login.php?client_id='.$_GET['client_id'].'&redirect_uri='.$_GET['redirect_uri'] .'&response_type='.$_GET['response_type']);
	}
}
else 
{
	header('Location: login.php');
}

require "lib/PDOOAuth2.inc";

$oauth = new PDOOAuth2();

if ($_POST) {
  $oauth->finishClientAuthorization($_POST["accept"] == "Yep", $_POST);
}

$auth_params = $oauth->getAuthorizeParams();

?>
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
<div id="title"><img src="/images/title.png" width="119" height="46" alt=""/>
</div>
    <div class="lay_top_inner">
        <h1 class="logo text_hide">QQ登录</h1>
        <div class="lat_top_other">
            <a href="http://connect.qq.com/intro/login" target="_blank" title="什么是QQ登录"><i class="icon_help_white"></i>QQ登录</a>
            <span class="line">|</span>
            <a href="http://connect.qq.com/toc/auth_manager?from=auth" id="auth_manager_link" target="_blank" title="登录授权管理">授权管理</a>
            <span class="line">|</span>
            <a href="http://connect.qq.com/manage" target="_blank" title="申请接入">申请接入</a>
        </div>
    </div>
</div>
<!-- @header End -->
<div id="combine_page">
  <div class="page_login combine_page_children float_left border_right">
  <div id="tip">
  是否同意WeCent获取你的信息
  </div>
  <div id="area">
  
  </div>
  <div></div>
   <div>
   </div>
       <form method="post" action="authorize.php">
      <?php foreach ($auth_params as $k => $v) { ?>
      <input type="hidden" name="<?php echo $k ?>" value="<?php echo $v ?>" />
      <?php } ?>

      <p>
         <div id="buttoncss">
        <input type="submit" name="accept" id="button" value="Yep" />
        <input type="submit" name="accept" id="button" value="Nope" />
           </div>
      </p>
    
    </form>

   
   
   
   
  </div>
  <div class="page_accredit combine_page_children float_left">
    <div class="lay_main" id="lay_main">
      <div class="lay_accredit_con">
        <p class="cnt_wording"></p>
        <p class="app_site_wording"><a class="accredit_site" id="accredit_site_link" href="http://linux.cn/" target="_blank">WeCent</a>将获得以下权限：</p>
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
          <p class="oauth_tips">授权后表明你已同意 <a href="http://connect.qq.com/agreement_chs" target="_blank">QQ登录服务协议</a></p>
        </div>
      </div>
    </div>
  </div>
</div>


  </body>
</html>
