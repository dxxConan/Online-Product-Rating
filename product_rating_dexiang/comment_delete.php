<?php 
$cID=$_GET["cID"];
?>
<html>
<body>
<?php
echo $cID;
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("productrate", $con);


$com = mysql_query("SELECT * FROM `comment` WHERE `comID` ='$cID'");
$row = mysql_fetch_array($com);
$mID = $row['productID'];
$query = mysql_query("DELETE FROM `comment` WHERE `comID` = $cID");
$comments = mysql_query("SELECT * FROM `comment` WHERE `productID` ='$mID'");
    while($row4 = mysql_fetch_array($comments)){
    $total+=$row4['ratings'];
    $round +=1;
    }
    //echo $total;

  $new=$total*2/$round;
  $mcate = mysql_query("UPDATE `products` SET `mrates` = '$new' where `productID`='$mID'");


mysql_close($con);
?>
</body>
</html>