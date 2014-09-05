$(document).ready(function() {
	$('#faq h4').each(function() {
	    var current = $(this);
	    var state = false;
        var response = current.next('div').hide().css('height', 'auto').slideUp();
		current.click(function() {
			state = !state;
			response.slideToggle(state);
			current.toggleClass('active',state);
		});
	});
});