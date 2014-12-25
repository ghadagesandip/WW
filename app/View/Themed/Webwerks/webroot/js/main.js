	$(document).ready(function(){
			$(".accordion h2 a").click(function(){
				$(".accordion h2").removeClass("active-acc");
				$(this).parent("h2").addClass("active-acc");
				
				$(".accordion section div").stop().slideUp(500);
				$(this).parent().siblings("div").stop().slideDown(500);
			})
		});
$(function(){
	
	var $window = $(window);		//Window object
	
	var scrollTime = 1;			//Scroll time
	var scrollDistance = 350;		//Distance. Use smaller value for shorter scroll and greater value for longer scroll
		
	$window.on("mousewheel DOMMouseScroll", function(event){
		
		event.preventDefault();	
										
		var delta = event.originalEvent.wheelDelta/120 || -event.originalEvent.detail/3;
		var scrollTop = $window.scrollTop();
		var finalScroll = scrollTop - parseInt(delta*scrollDistance);
			
		TweenMax.to($window, scrollTime, {
			scrollTo : { y: finalScroll, autoKill:true },
				ease: Power1.easeOut,	//For more easing functions see http://api.greensock.com/js/com/greensock/easing/package-detail.html
				autoKill: true,
				overwrite: 5							
			});
					
	});
	
});

 function init() {
        window.addEventListener('scroll', function(e){
            var distanceY = window.pageYOffset || document.documentElement.scrollTop,
                shrinkOn = 50,
                header = document.querySelector("header");
            if (distanceY > shrinkOn) {
                classie.add(header,"smaller");
            } else {
                if (classie.has(header,"smaller")) {
                    classie.remove(header,"smaller");
                }
            }
        });
    }
    window.onload = init();

// Testimonials Slider
jQuery(window).load(function() {	

	jQuery('.testimonials-slider[id^="owl-testimonials"]').each( function() { 	

		var $div = jQuery(this);
		var token = $div.data('token');

		var settingObj = window['dt_testimonials_' + token];	

		jQuery("#owl-testimonials-"+settingObj.id+"").owlCarousel({
			autoHeight : true,
			singleItem : true,
			navigation:true,
			slideSpeed : 1000
		});

	});
});
