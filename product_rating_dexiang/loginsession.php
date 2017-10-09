
<?php 
session_start(); 
if( isset($_SESSION['login_user']))
	{echo $_SESSION['login_user'];} 
?>
