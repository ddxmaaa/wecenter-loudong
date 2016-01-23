<?php
include '../../../../baji/system/class/cls_action_log_class.inc.php';
include '../../../../baji/system/aws_app.inc.php';
include '../../../../baji/system/aws_model.inc.php';
header("Content-Type: text/html;charset=utf-8");
function del_q($qid,$qnam)
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
	$query[0] = "DELETE from question WHERE question_id = '$qid'";
	$query[1] = "DELETE from question_comments WHERE question_id = '$qid'";
	$query[2] = "DELETE from question_focus WHERE question_id = '$qid'";
	$query[3] = "DELETE from question_thanks WHERE question_id = '$qid'";
	$query[4] = "DELETE from question_invite WHERE question_id = '$qid'";
	$query[5] = "DELETE from question_uninterested WHERE question_id = '$qid'";
	$query[6] = "DELETE from topic_relation WHERE type = 'question' and item_id = '$qid'";
	$query[7] = "DELETE from posts_index WHERE post_type= 'question' and post_id = '$qid'";
	$query[8] = "DELETE from user_action_history where associate_type=1 and associate_id = '$qid'";
	$arrlength=count($query);
	for ($x=0;$x<$arrlength;$x++)
	{
#		echo $query[$x] . "<br></br>";
		mysqli_query($dbc, $query[$x]) or die (mysql_error());
	}

}
function del_c($qid,$qnam)
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
	$query[0] = "DELETE from posts_index WHERE post_type= 'article' and post_id = '$qid'";
	$query[1] = "DELETE from article WHERE id = '$qid'";
	$query[2] = "DELETE from article_comments WHERE id = '$qid'";
	$query[3] = "DELETE from topic_relation WHERE type = 'article' item_id = '$qid'";
	$query[8] = "DELETE from user_action_history where associate_type=1 and associate_id = '$qid'";
	$arrlength=count($query);	
	for ($x=0;$x<$arrlength;$x++)
	{
	#		echo $query[$x] . "<br></br>";
	mysqli_query($dbc, $query[$x]) or die (mysql_error());
	}
	
}


$id=$_GET['qid'];
$name=urldecode($_GET['qnam']);
$stat=$_GET['stat'];
$rurl=$_GET['rurl'];

if ($stat == "q")
{
	echo '1';
	del_q($id,$name);
	header("location:".$rurl);
}
elseif ($stat == "c")
{
	echo '2';
	del_c($id,$name);
	header("location:".$rurl);
}
else
{
	echo "error!!!!";
}
?>