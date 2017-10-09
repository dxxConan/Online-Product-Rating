
  var id

function getId() {
       
    }
var xmlHttp

function showproduct()
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
	var url="edit.php";
	url=url+"?mID"+id;
	xmlHttp.onreadystatechange=stateChanged ;
	xmlHttp.open("GET",url,true);
	xmlHttp.send(null);
}
function GetXmlHttpObject()
{
	var xmlHttp=null;
	try
	 {
	 // Firefox, Opera 8.0+, Safari
	 	xmlHttp=new XMLHttpRequest();
	 }
		catch (e)
	 	{
		 //Internet Explorer
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
function stateChanged()
{
	if (xmlHttp.readyState== 4 || xmlHttp.readyState=="complete")
		 { 
		 	
		 	document.getElementById("content").innerHTML=xmlHttp.responseText 
		 } 
}