<?php 
$aID=$_GET["aID"];
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

$result = mysql_query("SELECT * FROM `company` WHERE `companyID` = $aID");

while($row = mysql_fetch_array($result))
 {
  echo  '<h1>'.$row['aName'].'</h1>';
  echo "<hr>";
  echo '<div id="logo" class="">';
   
       if ($row['aName'] == "Nike" or $row['aName'] == "Sony" or $row['aName'] == "Microsoft"){
        
       echo' <img class="height_small left" src="images/company/'.$row['aName'].'.jpg" width="200px" height="50px" />';
       }
       else {
          echo' <img class="height_small left" src="images/company/'.$row['aName'].'.jpg" width="100px" height="100px" />';
       }
  echo ' </a></div>';
  echo ' <div id="info">';
    //    echo '<a  href=$row['website']>' ;
        echo ' <p class="pl">website: <span class="attrs">'.$row['website'].'</a></span></p><br/>';
        echo '<p class="pl">Origin: <span class="attrs" >'.$row['aNation']. '</span></p><br/>';
        echo ' <p class="pl">Founded: <span class="attrs" property="v:genre">'.$row['founded'].'</span></p><br/>';
  echo' </div>';
  echo '<div id="detail">';
        echo '<p class="pl paddingb">Details:</p>';
        echo ' <p class="details">'.$row['ainfo'].'</p>';
  echo ' </div>';
  
 }



mysql_close($con);
?>
</body>
</html>