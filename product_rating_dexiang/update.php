<?php
$mID=$_GET["id"];
$mname=$_POST["productname"];
$mdate=$_POST["price"];
$nation=$_POST["mnation"];
$md=$_POST["origin"];
$company=$_POST["company"];
$category=$_POST["category"];
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
#get category id
$cate = mysql_query("SELECT * FROM `category` WHERE `caName`='$category'");
$row = mysql_fetch_array($cate);
$catID = $row['caID'];
#get company id
$company = mysql_query("SELECT * FROM `company` WHERE `aName`='$company'");
$row3 = mysql_fetch_array($company);
$companyID = $row3['companyID'];
$result = mysql_query("UPDATE `products` SET `productName`='$mname',`price`='$mdate',`origin`='$md',`mnation`='$nation' WHERE `productID`='$mID'");
$mcate = mysql_query("UPDATE `mcate` SET `caID`='$catID' WHERE `productID`='$mID'");
$mcompany = mysql_query("UPDATE `mcompany` SET `companyID`='$companyID' WHERE `productID`='$mID'");
if($result &&$mcate &&$mcompany)
{
	echo "update success!";
	echo '<br><a href=Admin.html>Back<a/>';
}
else
{
	echo 'Update failed!';
}
 

mysql_close($con)
?>
</body>
</html>