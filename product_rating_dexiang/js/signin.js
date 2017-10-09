function trim(str){
	return str.replace(/^\s+|\s+$/g, '');
}

function Username(){
	//alert("aa");

	 var url = "loginsession.php";
  //var postStr="username="+ username +"&psw="+ userpsw  +"&dob="+userdob+"&email="+useremail;
  var xhr=new XMLHttpRequest()||new ActiveXObject("Microsoft.XMLHTTP");
  //if(xhr){alert("success");}
  xhr.open("POST", url, true);
  //if(xhr){alert("success");}
  xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  xhr.send(); 
  //if(xhr){alert("success");}
  //
  //
  xhr.onreadystatechange = function() { 
    if (xhr.readyState == 4 && (xhr.status == 200||xhr.status == 0)) { 
    	//alert(trim(xhr.responseText));
    	if(trim(xhr.responseText)==""){
    		
    	}
    	
    	else{
    		//alert(trim(xhr.responseText))
        if(trim(xhr.responseText)=='Dexiang')
        {
           document.getElementById("uprofile").innerHTML = "ADMIN" 
           document.getElementById("uprofile").getAttributeNode("href").value="Admin.html";

        }else{
          document.getElementById("uprofile").innerHTML = "PROFILE"
          document.getElementById("uprofile").getAttributeNode("href").value="comments.html";
        }
        document.getElementById("usermore").innerHTML = trim(xhr.responseText)    
 		    document.getElementById("ulog").innerHTML = "LOG OUT"
 		    document.getElementById("ulog").getAttributeNode("href").value="destorysession.php";
 		    document.getElementById("uprofile").removeAttribute("data-toggle");
 		    document.getElementById("uprofile").removeAttribute("data-target");
 		    document.getElementById("ulog").removeAttribute("data-toggle");
 		    document.getElementById("ulog").removeAttribute("data-target");
 		    document.getElementById("ucomment").removeAttribute("data-toggle");
 		    document.getElementById("ucomment").removeAttribute("data-target");
 		    document.getElementById("ucomm").getAttributeNode("onclick").value="saveCommentInfo(this.form)";
    	} 
    } 
}
}