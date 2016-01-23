<?php
session_start();
$code=$_GET['code'];
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
$post_data = array(
	'grant_type' => 'authorization_code',  
	'code' => $code,
	'client_id' => 'test2',
	'client_secret' => 'test2',
	'redirect_uri' => '../../../../../../../../../baji/test.php',
	'uid' => $_SESSION['uid']
);  
$url='http://127.0.0.1:8080/oauth2-php/server/examples/pdo/token.php';
$enurl=urlencode($url);
$token=request_by_curl($url,$post_data);
print_r ($token);
?>