(function($) {
	$("#to_products").click(function() {
		$('html, body').animate({
			scrollTop: $("#product").offset().top
		}, 2000);
	});
})(jQuery);
