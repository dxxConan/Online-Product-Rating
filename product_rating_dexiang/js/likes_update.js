
$("#votes>img").click(function(){
  $cID=$("#comID").attr("value");
  alert($cID);
  
  $.ajax({
  url: 'likes_update.php',
  type: 'GET',
  data: 'commentID=$cID',
  success: function(data) {
	//called when successful
	$('#votes').html(data);
  },
  error: function(e) {
	//called when there is an error
	//console.log(e.message);
  }
});
});