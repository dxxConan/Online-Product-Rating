function spanclear(x){
	document.getElementById(x).innerHTML=""
	document.getElementById("ack").innerHTML=""
}

function saveUserInfo(f){
	
  	var username = f.username.value;
  	var userdob  = f.dob.value;
  	var userpsw   = f.psw.value;
   	var useremail   = f.email.value;
  	var val_holder = 0;
	var email_regex = /^[A-Za-zd0-9]+([-_.][A-Za-zd0-9]+)*@([A-Za-zd]+[-.])+[A-Za-zd]{2,5}$/; // reg ex email check
	var psw_regex = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;

	if(username == "") {
		$("span.username_val").html("This field is empty.");
		val_holder = 1;
	}
	if( userpsw == ""){
		$("span.password_val").html("This field is empty.");

		val_holder = 1;
	}
	if( userpsw != ""){
		if(!psw_regex.test(userpsw))
		{ // if invalid email
		$("span.password_val").html("This password is invalid.");
		val_holder = 1;
		}
	}
	if(userdob == "") {
		$("span.dob_val").html("This field is empty.");
		val_holder = 1;
	}
	if( useremail == ""){
		$("span.email_val").html("This field is empty.");
		val_holder = 1;
	}
	if(useremail != "") {
	if(!email_regex.test(useremail)){ // if invalid email
	$("span.email_val").html("Your email is invalid.");
	val_holder = 1;
	}
	}
	if(val_holder == 1) {
	return false;
	}
	else{  
  var url = "signup.php";
  var postStr="username="+ username +"&psw="+ userpsw  +"&dob="+userdob+"&email="+useremail;
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
   // 	alert(xhr.responseText);
    	if(xhr.responseText==3){
    		$("#ack").html("<ul><li>user name exists</li><li>email exists</li></ul>");
    	}
    	else if(xhr.responseText==2){
    		$("#ack").html("<ul><li>user name exists</li></ul>");
    	}
    	else if(xhr.responseText==1){
    		$("#ack").html("<ul><li>email exists</li></ul>");
    	}
    	else{
    		$("#ack").html("registration succeed!");
    	} 
    } 
  }

}

}
