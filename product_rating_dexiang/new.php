<?php
$name = $_POST['productname'];
$year = $_POST['price'];
$ratings = $_POST['ratings'];
$origin = $_POST['origin'];
$company = $_POST['company'];
$category = $_POST['category'];
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
	#insert a new product
	$query = mysql_query("INSERT INTO `products` (`productName` ,`price` ,`mrates`,`origin`,`mnation`)
	VALUES ('$name', '$year', '$ratings', '$origin','$nation')");
	#get product id
	$products = mysql_query("SELECT * FROM `products` WHERE `productName`='$name'");
	$row2 = mysql_fetch_array($products);
	$mID = $row2['productID'];
	#get company id
	$company = mysql_query("SELECT * FROM `company` WHERE `aName`='$company'");
	$row3 = mysql_fetch_array($company);
	$companyID = $row3['companyID'];
	#insert relation to product and category
	$mcate = mysql_query("INSERT INTO `mcate`(`caID`, `productID`) VALUES ('$catID','$mID')");
	#inter relation to product and company
	$mcompany = mysql_query("INSERT INTO `mcompany`(`companyID`, `productID`) VALUES ('$companyID','$mID')");
	echo "insert product success!<br>";
	echo '<a href="admin.html">back</a>';
	?>
</body>
</html>