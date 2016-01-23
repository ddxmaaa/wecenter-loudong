<?php
session_start();
//生成验证码图片
header("Content-type: image/png");
// 全数字
$str = "1,2,3,4,5,6,7,8,9,0";      //要显示的字符，可自己进行增删
$list = explode(",", $str);
$cmax = count($list) - 1;
$verifyCode = rand(1000,9999);
setcookie('yanzma',$verifyCode,time()+3600,'/');
/*
for ( $i=0; $i < 4; $i++ ){
      $randnum = mt_rand(0, $cmax);
      $verifyCode .= $list[$randnum];           //取出字符，组合成为我们要的验证码字符
}
*/
$_SESSION['yanzma'] = $verifyCode;        //将字符放入SESSION中
$im = imagecreate(58,28);    //生成图片

$black = imagecolorallocate($im, 0,0,0);     //此条及以下三条为设置的颜色
$white = imagecolorallocate($im, 255,255,255);
$gray = imagecolorallocate($im, 200,200,200);
$red = imagecolorallocate($im, 255, 0, 0);
imagefill($im,0,0,$white);     //给图片填充颜色

//echo $verifyCode;
//将验证码绘入图片
imagestring($im, 5, 10, 8,$verifyCode, $black);    //将验证码写入到图片中
  
imagepng($im);

imagedestroy($im);
?>

