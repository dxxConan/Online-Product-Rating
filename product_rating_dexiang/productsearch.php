
<?php 
$mname=$_POST["productname"];
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

$result = mysql_query("SELECT * FROM `products` WHERE `productName` = '$mname'");

while($row = mysql_fetch_array($result))
 {
  $mid=$row['productID'];
 }



mysql_close($con);


  echo "<script language='javascript'>"; 
  echo " location='product_detail.html?id=$mid';"; 
  echo "</script>"; 
  ?>
</body>
</html>