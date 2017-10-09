
function trim(str){
  return str.replace(/^\s+|\s+$/g, '');
}
function saveCommentInfo(f){

  var ctext = f.ctext.value;
  var rating  = f.rating.value;
  var uname = document.getElementById("usermore").innerHTML;
  var c  = new Date();
  var day =c.getDate();
  var month=c.getMonth();
  var year =c.getFullYear();
  var ctime= year+"-"+month+"-"+day;
  var clike = 0;
  var id
  var locurl = window.location.href; //获得页面的URL
        var startplace = locurl.indexOf("?"); //得到网址与参数分隔符的位置，一般都用“？”分隔
        if (startplace != -1) { //判断网址中有没有参数
            var params = locurl.substr(startplace + 1); //获得参数字符串，从分隔符位置+1处开始获取
            id = params.substr(3);
            
        }
 
  var url = "product_detail_addcomment.php";
  var postStr="uname="+uname+"&ctext="+ ctext +"&rating="+ rating +"&ctime="+ctime+"&clike="+clike+"&mID="+id;
  var xhr=new XMLHttpRequest()||new ActiveXObject("Microsoft.XMLHTTP");
  //if(xhr){alert("success");}
  xhr.open("POST", url, true);
  //if(xhr){alert("success");}
  xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  xhr.send(postStr); 
  //if(xhr){alert("success");}
  //
  //
  xhr.onreadystatechange = function() { 
    if (xhr.readyState == 4 && (xhr.status == 200||xhr.status == 0)) { 
    } 
  }
}