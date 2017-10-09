<?php
//get data passed to script
$cID= $_GET["cID"];
$mID= $_GET["mID"];
?>

<html>
<body>
  <?php
  $con = mysql_connect("localhost","root","root");
  if (!$con)
    {
    die('Could not connect: ' . mysql_error());
    }

  $comlike=0;
  mysql_select_db("productrate", $con);
  $comments = mysql_query("SELECT * FROM `comment` where `comID`='$cID'");
  $row2 = mysql_fetch_array($comments);
  $comlike=$row2['numlikes']+1;

  $mcate = mysql_query("UPDATE `comment` SET `numlikes` = '$comlike' WHERE `comID`='$cID'");
  echo "<script language='javascript'>"; 
  echo " location='product_detail.html?id=$mID';"; 
  echo "</script>"; 
  ?>
</body>
</html>


