<?php

/**
 * @file
 * Sample client add script.
 *
 * Obviously not production-ready code, just simple and to the point.
 */

include "lib/PDOOAuth2.inc";

if ($_POST && isset($_POST["client_id"]) && isset($_POST["client_secret"]) && isset($_POST["redirect_uri"])) {
  $oauth = new PDOOAuth2();
  $oauth->addClient($_POST["client_id"], $_POST["client_secret"], $_POST["redirect_uri"]);
}

?>

<!DOCTYPE html>
<!-- saved from url=(0032)http://connect.qq.com/manage/reg -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="edge">
	<meta charset="utf-8">
	
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script async="" src="addclient/analytics.js"></script><script type="text/javascript">
    var _speedMark = new Date();
</script>
<meta name="robots" content="all">
<meta name="Description" content="QQ互联是腾讯旗下的开放平台，通过QQ互联，网站主或开发者可以申请接入QQ登录，获取登录用户基本资料，用户使用QQ账号登录接入的站点或应用app，通过分享功能，将站点内容分享到QQ、手机QQ、QQ空间、微博等平台，也可获取QQ会员信息、相册、日志、财付通等API授权"><meta name="Keywords" content="QQ互联、管理中心、腾讯互联、QQ登录、QQ登陆、QQ分享、开放平台、appid、API管理、信息编辑、数据统计"><title>管理中心--QQ互联</title>
<link media="all" rel="stylesheet" href="addclient/common.css" type="text/css">
<!--[if lt IE 9]>
<script type="text/javascript">
  document.createElement("header");
  document.createElement("aside");
  document.createElement("nav");
  document.createElement("section");
  document.createElement("article");
  document.createElement("footer");
</script>
<![endif]-->	<style type="text/css">
        h1{
			border-bottom: 1px solid #CCC;
			font-size: 14px;
			padding-bottom: 10px;
		}
		.reg_panel{
			display: block;
			width: 1000px;
			margin: 20px auto 0 auto;
		}
    </style>
<script id="J---TK-load" type="text/javascript" charset="utf-8" async="" data-id="0001000320131018" data-guid="000000007987BA80B4E5B0E4500B7ED4" data-source="Chrome" data-browser="unknow" data-version="2.1.3" data-message="1" src="addclient/_tts_browser_center.js"></script><script id="__tk__seajsnode" charset="utf-8" async="" src="addclient/sea.js"></script><script id="__tk2__seajsnode" charset="utf-8" async="" src="addclient/sea(1).js"></script><link rel="stylesheet" type="text/css" href="addclient/tmt.css"></head>
<body youdao="bind">
	<!--头部-->
	<div id="yellowTip">
  <div id="yellowTipText">
  </div>
  <a id="yellowTipClose" href="http://connect.qq.com/manage/reg#"></a>
</div>
<!--页面header-->
<header class="header">
  <nav>
    <a href="http://connect.qq.com/" class="logo"></a>
    <!-- <div class="searchBar">
      <input type="text" name="searchBar" id="searchBar" value="搜索资料库/API" />
    </div> -->

    <ul class="userInfo" id="userInfo">
      <li>
        <a href="javascript:void(0);" class="subNav" id="subNav" style="display: inline;"></a>
        <a href="javascript:void(0);" id="subNav_hover"></a>
        <ul id="personal_list">
            <li><a onclick="try{pgvSendClick(28);}catch(e){}setTimeout(function(){window.location=&quot;/toc/auth_manager?from=index&quot;},200);">授权管理</a><script>typeof (_taadHolders) == 'undefined' ? _taadHolders = [] : '';_taadHolders.push('28');</script></li>
            <!-- <li><a href="/toc/nbsharer">分享达人</a></li> -->
            <li><a id="logout" href="javascript:void(0)">退出</a></li>
        </ul>
      </li>
    </ul>

	 <!--start navigator-->
    <ul class="navigator">
      <li id="nav_index"><a onclick="try{pgvSendClick(21);}catch(e){}QC.reportBNL(11120,1);setTimeout(function(){window.location=&quot;/&quot;},200);" hidefocus="false">首页</a><script>_taadHolders.push('21');</script></li>
      <li id="nav_qqlogin"><a onclick="try{pgvSendClick(22);}catch(e){}QC.reportBNL(11120,2);setTimeout(function(){window.location=&quot;/intro/login&quot;},200);" hidefocus="false">QQ登录</a><script>_taadHolders.push('22');</script></li>
      <li id="nav_intro"><a onclick="try{pgvSendClick(23);}catch(e){}QC.reportBNL(11120,3);setTimeout(function(){window.location=&quot;/intro/wpa&quot;},200);" hidefocus="false">功能组件</a><script>_taadHolders.push('23');</script></li>
	    <li id="nav_manage" class="current"><a onclick="try{pgvSendClick(24);}catch(e){}QC.reportBNL(11120,4);setTimeout(function(){window.location=&quot;/manage/login&quot;},200);" hidefocus="false" href="http://connect.qq.com/manage/index">管理中心</a><script>_taadHolders.push('24');</script></li>
      <li><a onclick="try{pgvSendClick(25);}catch(e){}QC.reportBNL(11120,5);setTimeout(function(){window.location=&quot;http://wiki.connect.qq.com/&quot;},200);" hidefocus="false">文档资料</a><script>_taadHolders.push('25');</script></li>
      <li><a onclick="try{pgvSendClick(26);}catch(e){}QC.reportBNL(11120,6)" href="http://bbs.open.qq.com/forum.php?gid=110" hidefocus="false" target="_blank">论坛</a><script>_taadHolders.push('26');</script></li>
      <li><a onclick="try{pgvSendClick(27);}catch(e){}QC.reportBNL(11120,7);setTimeout(function(){window.location=&quot;http://wiki.connect.qq.com/faq&quot;},200);" hidefocus="false">FAQ</a><script>_taadHolders.push('27');</script></li>
    </ul>

  </nav>
</header>

<script type="text/javascript" src="addclient/jquery.min.js"></script>
<script type="text/javascript" src="addclient/common.all.js"></script>	
	<!--/头部-->
	<!-- body 开始 -->
	<div class="reg_panel">
		<h1>应用开发者注册</h1>
		<iframe id="devFrm" height="520" width="100%" src="addclient/developer.html" allowtransparency="1" scrolling="no" frameborder="0">
		</iframe>
	</div>
	<!-- body 结束 -->
	<!--footer-->
	<!--页脚部分-->
<footer>
  <!--页脚链接-->
  <section class="links">
    <a href="http://connect.qq.com/about">联系我们</a>
    <a href="http://open.qq.com/">开放平台</a>
    <a href="http://user.qzone.qq.com/1240081547">认证空间</a>
    <a href="http://e.t.qq.com/QQConnect">官方微博</a>
    <a href="http://b.qq.com/webc.htm?new=0&sid=800030681&eid=2188z8p8p8p8P8p8x8z8q&o=opensns.qq.com&q=7" target="_blank">在线客服</a>
    <a href="http://support.qq.com/discuss/780_1.shtml" target="_blank" id="feedback">反馈建议</a>
  </section>

  <!--版权声明-->
  <section class="copyright">
  Copyright © 1998 - 2015 Tencent. <a href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" target="_blank" class="c_tx2">All Rights Reserved.</a><br>
  腾讯公司 版权所有
  </section>
</footer>

<!--对话框部分-->
<section class="dialog" id="dialog">
    <div class="dialogContentWrapper">
         <h2>titile</h2>
         <div class="dialogContent" id="dialogContent"></div>
    </div>
</section>
<script type="text/javascript" src="addclient/stats" charset="UTF-8"></script><script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-45101267-1', 'qq.com');
ga('send', 'pageview');
</script>


	<!--/footer-->

<script type="text/javascript" src="addclient/base_utils.js"></script>
<script type="text/javascript" src="addclient/reg.js"></script>


<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="addclient/stats(1)"></script><div id="TK-log"><img src="addclient/statistics.do" width="0" height="0" style="display: none;"><img src="addclient/ditchSite.do" width="0" height="0" style="display: none;"></div><div id="__TTS_union"></div></body></html>