<?php 
$mID=$_GET["mID"];
?>
<html>
<body>
<?php

$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("productrate", $con);

$query = mysql_query("DELETE FROM `products` WHERE `productID` = $mID");
echo 'You have deleted this product';
echo '<br><a href="Admin.html">back</a>';

mysql_close($con);
?>
</body>
</html>