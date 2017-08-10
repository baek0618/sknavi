/**
 * 
 */ $(document).ready(function() {

	$('.share-layer').fadeOut();
	$('.share_btn').click(function() {

		if ($(".opinion-content").hasClass("hidden") === true) {
			// 속성값이 존재함.
			$('.opinion-content').removeClass('hidden').addClass('show');

		} else if ($(".opinion-content").hasClass("show") === true) {

			$('.opinion-content').removeClass('show').addClass('hidden');


			var $href = $(this).attr('href');
			share_popup($href);
		// 페이지 넘기기 공유페이지로
		} else {
			alert('error');
		}

	});


	function share_popup(el) {
		var $el = $(el); // 레이어의 id를 $el 변수에 저장
		var isDim = $el.prev().hasClass('dimBg4'); //dimmed 레이어를 감지하기 위한 boolean 변수

		isDim ? $('.share-layer').fadeIn() : $el.fadeIn();

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
		$('.pop-conts input').val("");
		$el.find('a.btn-layerClose').click(function() {

			isDim ? $('.share-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
		});

		$('.layer .dimBg4').click(function() {
			$('.share-layer').fadeOut();
			return false;
		});

	}

});