$(document).ready(function() {


	$('#make-plan').click(function() {
		var $href = $(this).attr('href');
		alert($href); //layer2
		layer_popup($href);
	});


	$('#login_btn').click(function() {
		var $href = $(this).attr('href');

		login_popup($href);
	});
	
	$('#sign-btn').click(function() {
		
		var $href = $(this).attr('href');
		sign_popup($href);
	});
	
	function login_popup(el) {
		var $el = $(el); // 레이어의 id를 $el 변수에 저장
		var isDim = $el.prev().hasClass('dimBg2'); //dimmed 레이어를 감지하기 위한 boolean 변수


		isDim ? $('.log-layer').fadeIn() : $el.fadeIn();

		var $elWidth = ~~($el.outerWidth()),
			$elHeight = ~~($el.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el.css({
				marginTop : -$elHeight / 2,
				marginLeft : -$elWidth / 2
			})
		} else {
			$el.css({
				top : 0,
				left : 0
			});
		}

		$el.find('a.btn-layerClose').click(function() {
			isDim ? $('.log-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
		});

		$('.layer .dimBg2').click(function() {
			$('.log-layer').fadeOut();
			return false;
		});

	}

	function layer_popup(el) {
		var $el = $(el); // 레이어의 id를 $el 변수에 저장
		var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수


		isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

		var $elWidth = ~~($el.outerWidth()),
			$elHeight = ~~($el.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el.css({
				marginTop : -$elHeight / 2,
				marginLeft : -$elWidth / 2
			})
		} else {
			$el.css({
				top : 0,
				left : 0
			});
		}

		$el.find('a.btn-layerClose').click(function() {
			isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
			
		});

		$('.layer .dimBg').click(function() {
			$('.dim-layer').fadeOut();
			return false;
		});

	}
	
	
	function sign_popup(el) {
		var $el = $(el); // 레이어의 id를 $el 변수에 저장
		var isDim = $el.prev().hasClass('dimBg3'); //dimmed 레이어를 감지하기 위한 boolean 변수
		
	
		isDim ? $('.sign-layer').fadeIn() : $el.fadeIn();

		var $elWidth = ~~($el.outerWidth()),
			$elHeight = ~~($el.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el.css({
				marginTop : -$elHeight / 2,
				marginLeft : -$elWidth / 2
			})
		} else {
			$el.css({
				top : 0,
				left : 0
			});
		}

		$el.find('a.btn-layerClose').click(function() {
			isDim ? $('.sign-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
		});

		$('.layer .dimBg3').click(function() {
			$('.sign-layer').fadeOut();
			return false;
		});

	}






});