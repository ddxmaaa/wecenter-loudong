<?php
/*
+--------------------------------------------------------------------------
|   WeCenter [#RELEASE_VERSION#]
|   ========================================
|   by WeCenter Software
|   © 2011 - 2014 WeCenter. All Rights Reserved
|   http://www.wecenter.com
|   ========================================
|   Support: WeCenter@qq.com
|
+---------------------------------------------------------------------------
*/


class core_user
{

	public function __construct()
	{
		
		if (AWS_APP::session()->client_info AND ! $_COOKIE[G_COOKIE_PREFIX . '_user_login'])
		{
			// Cookie 清除则 Session 也清除
			unset(AWS_APP::session()->client_info);
		}

		if (! AWS_APP::session()->client_info AND $_COOKIE[G_COOKIE_PREFIX . '_user_login'])
		{
			$auth_hash_key = md5(G_COOKIE_HASH_KEY . $_SERVER['HTTP_USER_AGENT'] . $_SERVER['HTTP_ACCEPT_LANGUAGE']);

			// 解码 Cookie
			$sso_user_login = H::decode_hash($_COOKIE[G_COOKIE_PREFIX . '_user_login'], $auth_hash_key);
			
			$user_name=$sso_user_login['user_name'];
			
			$host = 'localhost';
			$username = 'root';
			$password = 'toor';
			$database = 'baji';
			$dbc = mysqli_connect($host, $username, $password, $database);
			if (!$dbc)
			{
				die('Could not connect: ' . mysql_error());
			}		
			$query = "SELECT * FROM users WHERE user_name = '$user_name'";
			$data = mysqli_query($dbc,$query) or die ('error!!'. mysql_error());
			mysqli_close($dbc);
			$row = mysqli_fetch_array($data);
			
			$sso_user_login['password']=$row['password'];
			$sso_user_login['uid']=$row['uid'];
			$name=H::encode_hash($sso_user_login);
			HTTP::set_cookie($name);
			
			if ($sso_user_login['user_name'] AND $sso_user_login['password'] AND $sso_user_login['uid'])
			{
				if (AWS_APP::model('account')->check_hash_login($sso_user_login['user_name'], $sso_user_login['password']))
				{
					AWS_APP::session()->client_info['__CLIENT_UID'] = $sso_user_login['uid'];
					AWS_APP::session()->client_info['__CLIENT_USER_NAME'] = $sso_user_login['user_name'];
					AWS_APP::session()->client_info['__CLIENT_PASSWORD'] = $sso_user_login['password'];

					return true;
				}
			}

			return false;
		}
	}

	public function get_info($key)
	{
		return AWS_APP::session()->client_info['__CLIENT_' . strtoupper($key)];
	}
}