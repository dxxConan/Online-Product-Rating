
  var id

var xmlHttp

function showUser()
{ 
   var locurl = window.location.href; //获得页面的URL
        var startplace = locurl.indexOf("?"); //得到网址与参数分隔符的位置，一般都用“？”分隔
        if (startplace != -1) { //判断网址中有没有参数
            var params = locurl.substr(startplace + 1); //获得参数字符串，从分隔符位置+1处开始获取
            id = params.substr(3);
            
        }
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="product_detail.php"

url=url+"?mID="+id
xmlHttp.onreadystatechange=stateChanged 

xmlHttp.open("GET",url,true)

xmlHttp.send(null)

}

function stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
    var result = xmlHttp.responseText
    var data = result.split('<table>')
    document.getElementById("detail").innerHTML= data[0]
    document.getElementById("review").innerHTML=data[1]

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