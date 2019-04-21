//Go to top
$(function () {
			var save = document.getElementById("save");
			var tel = document.getElementById("tel");
			var web = document.getElementById("web");
			var objectInput = document.getElementById("objectInput");
			var ad = document.getElementById("ad");
			var skill1 = document.getElementById("skill1");
			var skill2 = document.getElementById("skill2");
			var editable = document.getElementById("editable");
			
			editable.addEventListener("click",function(){
				console.log(ad);
				ad.contentEditable = "true";
				tel.contentEditable = "true";
				web.contentEditable = "true";
				objectInput.contentEditable = "true";
				skill1.contentEditable = "true";
				skill2.contentEditable = "true";
				ad.style.color = "red";
				tel.style.color = "red";
				web.style.color = "red";
				objectInput.style.color = "red";
				skill1.style.color="red";
				skill2.style.color="red";
			});
			save.addEventListener("click",function(){
				ad.contentEditable = "false";
				tel.contentEditable = "false";
				web.contentEditable = "false";
				objectInput.contentEditable = "false";
				skill1.contentEditable = "false";
				skill2.contentEditable = "false";
				ad.style.color = "black";
				tel.style.color = "black";
				web.style.color = "black";
				objectInput.style.color = "black";
				skill1.style.color="black";
				skill2.style.color="black";
			});
			var scroll_timer;
			var displayed = false;
			var $message = $('#message');
			var $window = $(window);
			var top = $(document.body).children(0).position().top;

			$window.scroll(function () {
				window.clearTimeout(scroll_timer);
				scroll_timer = window.setTimeout(function () {
					if($window.scrollTop() <= top) 
					{
						displayed = false;
						$message.fadeOut(500);
					}
					else if(displayed == false) 
					{
						displayed = true;
						$message.stop(true, true).fadeIn(500).click(function () { $message.fadeOut(500); });
					}
				}, 100);
			});
			$('#top-link').click(function(e) { 
				e.preventDefault();
				$.scrollTo(0,300); 
			   });
		});
		
		
		
//Tipsy
		
$(function() {

    $('.north').tipsy({gravity: 'n'});
    
});


//Contact Form Box
  
  $(document).ready(function(){
  				$("a[rel='gallery']").colorbox();
				$("#contact").colorbox({width:"500", height:"580", iframe:true});
			});