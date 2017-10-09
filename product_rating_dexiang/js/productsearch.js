

var xmlHttp

function search()
{ 
   var locurl = window.location.href; //获得页面的URL
        var startplace = locurl.indexOf("?"); //得到网址与参数分隔符的位置，一般都用“？”分隔
        if (startplace != -1) { //判断网址中有没有参数
            var params = locurl.substr(startplace + 1); //获得参数字符串，从分隔符位置+1处开始获取
            id = params.substr(3);
            
        }
xmlHttp=GetXmlHttpObject()
alert(id);
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
 var name=document.getElementById("detail").value;
var url="search.php"

url=url+"?mname="+name
xmlHttp.onreadystatechange=stateChanged 

xmlHttp.open("GET",url,true)

xmlHttp.send(null)

}

function stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 

//document.getElementById("detail").innerHTML=xmlHttp.responseText 
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