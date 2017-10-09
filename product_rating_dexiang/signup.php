
<?php
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect:' . mysql_error());
  }

mysql_select_db("productrate", $con);
$ru=0;$re=0;
$username = mysql_real_escape_string($_POST['username']);
$psw = mysql_real_escape_string($_POST['psw']);
$dob = mysql_real_escape_string($_POST['dob']);
$email = mysql_real_escape_string($_POST['email']);
 // else not, insert to the table
$user = mysql_query("SELECT * FROM `users` WHERE `uname` = '$username' ");
while($row1 = mysql_fetch_array($user)){$ru+=1;}
$emailva = mysql_query("SELECT * FROM `users` WHERE `email` = '$email' ");
while($row2 = mysql_fetch_array($emailva)){$re+=1;}
$query = mysql_query("INSERT INTO `users` (`uname` ,`psword` ,`email`,`datebirth`)
VALUES ('$username', '$psw', '$email', '$dob')");

if($ru!=0&&$re!=0){echo "3";}
else if($ru!=0){echo "2";}
else if($re!=0){echo "1";}
else{
  echo "0"; #0 is succeed
}
#echo "<script language='javascript'>"; 
 # echo " location='index.html';"; 
 # echo "</script>"; 
?>