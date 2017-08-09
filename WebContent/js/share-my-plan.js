/**
 * 
 */ $(document).ready(function() {


	$('.share_btn').click(function() {
		
		if ($(".opinion-content").hasClass("hidden") === true) {
			// 속성값이 존재함.
			$('.opinion-content').removeClass('hidden').addClass('show');
		}
		else if  ($(".opinion-content").hasClass("show") === true) {
			$('.opinion-content').removeClass('show').addClass('hidden');
		}
		else{
			alert('error');
		}
		
	});

});