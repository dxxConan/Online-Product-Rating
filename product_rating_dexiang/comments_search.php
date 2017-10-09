<?php 
session_start();
?>
<html>
<body>
<?php

$uname=$_SESSION['login_user'];
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("productrate", $con);
$user = mysql_query("SELECT * FROM `users` WHERE `uname`='$uname'");
$u= mysql_fetch_array($user);
$uID=$u['uID'];

$comm = mysql_query("SELECT * FROM `comment` WHERE `uID`='$uID' ORDER BY `time` DESC");




echo '<hr>';
while($row= mysql_fetch_array($comm))
 {
  echo '<table width="100%">';
  echo "<tbody>";
  echo '<tr class="item">';
  echo '<td width="100" valign="top">';
  echo '<a href="#" title="pic"><img id="1" src="images/rankings/'.$row['productID'].'.jpg" width="100px" height="150px" alt="product pic"/></a>';
  echo "</td>";
  echo '<td valign="top">
							<div class="mcontent">';
  echo '<p>'.$row['content'].'</p>';
  echo '<p>'.$row['time'].'</p>';
  echo '<div class="rating">';
  if ($row['ratings']==1) {
  	echo '<img id="1" src="images/rating/ic_rating_1star.jpg" alt="star"/>';
  }
  else if ($row['ratings']==2) {
  echo '<img id="1" src="images/rating/ic_rating_2star.jpg" alt="star"/>';
  }
 
  else if ($row['ratings']==3) {
 echo '<img id="1" src="images/rating/ic_rating_3star.jpg" alt="star"/>';
  }
  
  else if ($row['ratings']==4) {
 echo '<img id="1" src="images/rating/ic_rating_4star.jpg" alt="star"/>';
  }
  else if ($row['ratings']==5) {
 echo '<img id="1" src="images/rating/ic_rating_5star.jpg" alt="star"/>';
  }
  else{
  	echo '<img id="1" src="images/rating/ic_rating_0star.jpg" alt="star"/>';
  }

  echo '<p><button type="submit" value="" id="DELETE" onclick="cdelete('.$row['comID'].')" />DELETE</p>';
  echo "</div></div></td>";
  echo "</tr>";
  echo "</tbody>";
  echo '</table>';
  echo "<hr>";
}
sql_close($con);
?>
</body>

</html>