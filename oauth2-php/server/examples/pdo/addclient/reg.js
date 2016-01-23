
(function($){document.domain="qq.com";QC.utils.detachLogin();$.getJSON('http://cgi.connect.qq.com/qqconnectopen/openapi/get_nick?callback=?',{retype:2},function(json){if(json.retcode!=0){window.location="/manage/login";}});$QC_Manage_Developer_refresh=function(){window.location="http://connect.qq.com/manage/index";}
$QC_Manage_Developer_closePanel=function(){window.history.back();}
if(window.location.search.indexOf('edit')!=-1){$("h1").text("修改开发者信息");}})(jQuery);/*  |xGv00|f88d88d11a6cd81a43760d6d371a154b */