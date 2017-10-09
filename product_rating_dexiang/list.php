<?php 
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

$result = mysql_query("SELECT * FROM `products` ");
echo ' <table style = "width:90%">
    <tr>
    <th>image</th>
    <th style="padding-left:20px">Product ID</th>
    <th style="padding-right:20px">Product name</th>
    <th>Price</th>
    <th>Rating</th>
    <th>Origin</th>
    <th colspan="2">operation</th>
  </tr>';
while($row = mysql_fetch_array($result))
 {
    echo "<tr>";

       echo '<td><a  href="show.html?mID='.$row['productID'].'">' ;
       echo' <img  class="image" src="images/details/'.$row['productID'].'.jpg" width="40px" height="40px"/>';
       echo '  </a></td>';
       echo '<td style="padding-left:40px">'.$row['productID'].'</td>';
       echo '<td style="padding-left:60px">'.$row['productName'].'</td>';
       echo '<td style="padding-left:20px">'.$row['price'].'</td>';
       echo '<td style="padding-left:20px">'.$row['mrates'].'</td>';
       echo '<td style="padding-left:60px">'.$row['origin'].'</td>';
           echo '<td><a  href="edit.html?mID='.$row['productID'].'" >' ;
           echo' edit';
           echo '</a></td>';
           echo '<td><a  href="delete.php?mID='.$row['productID'].'">' ;
           echo' delete';
           echo '</a></td>';

 }
 echo "</tr></table>";
 mysql_close($con);
?>
</body>
</html>