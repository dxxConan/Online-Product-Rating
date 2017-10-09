<?php
session_start(); 
unset($_SESSION['login_user']);
//session_destroy();
echo "<script language='javascript'>"; 
  echo " location='index.html';"; 
  echo "</script>"; 
?>