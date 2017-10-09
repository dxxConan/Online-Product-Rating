function cdelete(x){
	xmlHttp = GetHttpObject();
	if(xmlHttp ==null)
	{
		alert("Browser does not support HTTP Request");
		return
	}
	var cID=x;
	var url="comment_delete.php?cID="+cID;
	xmlHttp.onreadystatechange=state;
	xmlHttp.open("GET",url,true);
	xmlHttp.send(null);
}
function GetHttpObject()
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
function state()
{
	if (xmlHttp.readyState== 4 || xmlHttp.readyState=="complete")
		 { 
		 	location.reload();
		 
		 } 
}