$(function (){
	var slideIndex = 1;
	count = $("#fslider>img").length;

	showSlide(slideIndex);
	

	$("#left").click(function(){
		slideIndex = slideIndex - 1;
		if (slideIndex < 1) {
			slideIndex = count;
		}
		showSlide(slideIndex);
	});

	$("#right").click(function(){
		var index = parseInt(slideIndex);
		index += 1; 
		if (index > count) {
			index = 1;
		}
		showSlide(index);
	});

	$(".bullets").find("li").each(function(){
		
		$(this).click(function(){
			var id = $(this).attr("id");
			slideIndex = id;
			showSlide(id);
			
		});	

	});
	function showSlide(id) {
		$(".bullets").find("li").removeClass("bulletIndex").eq(id-1).addClass("bulletIndex");
		$("#fslider>img").hide();
		$("#fslider>img#" + id).fadeIn(300);
		slideIndex = id;
	}
});




