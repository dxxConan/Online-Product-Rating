
  var id

function getId() {
       
    }
var xmlHttp

function showUser()
{ 
   var locurl = window.location.href; 
        var startplace = locurl.indexOf("?"); 
        if (startplace != -1) { 
            var params = locurl.substr(startplace + 1); 
            id = params.substr(3);
            
        }
xmlHttp=GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="company_detail.php"

url=url+"?aID="+id

xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)

xmlHttp.send(null)
}

function stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 

document.getElementById("content").innerHTML=xmlHttp.responseText 
 } 
}



function GetXmlHttpObject()
{
var xmlHttp=null;
try
 {
 xmlHttp=new XMLHttpRequest();
 }
catch (e)
 {
 try
  {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e)
  {
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}