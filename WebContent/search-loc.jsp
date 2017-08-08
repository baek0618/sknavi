<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="js/index.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>


<link rel="stylesheet" href="css/index.css" />

<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-xlarge.css" />
<link rel="stylesheet" href="css/my-page.css" />
<link rel="stylesheet" href="css/search-loc.css" />

<title>여행지검색사이트</title>

<script>
	<!-- header load -->
	$(document).ready(function() {
		$("#header").load("header.html");
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$(document).on('click', '.travel_city', function() {
			var _this_show = $(this).attr('data-show');
			$('.travel_city').each(function() {
				if ($(this).attr('data-show') != _this_show) {
					$(this).removeClass('on');
					$('.city_arrow', this).attr('src', $('.city_arrow').attr('src').replace('_on.gif', '.gif'));
					$(this).attr('data-on', 'off');
					$('.travel_hide[data-id=' + $(this).attr('data-show') + ']').slideUp('fast');
				}
			});

			if ($(this).attr('data-on') == 'off') {
				$(this).addClass('on');
				$('.city_arrow', this).attr('src', $('.city_arrow').attr('src').replace('.gif', '_on.gif'));
				$(this).attr('data-on', 'on');
				$('.travel_hide[data-id=' + $(this).attr('data-show') + ']').slideDown();
			} else {
				$('.travel_city').removeClass('on');
				$('.city_arrow', this).attr('src', $('.city_arrow').attr('src').replace('_on.gif', '.gif'));
				$(this).attr('data-on', 'off');
				$('.travel_hide[data-id=' + $(this).attr('data-show') + ']').slideUp();
			}
		});


	});
</script>
</head>

<body id="top">

	<div id="header">
		<!-- 여기는 다른 header html파일을 넣자 -->
	</div>

	<!-- banner -->
	<section id="banner">
	<div class="inner">
		<h2>여행지 검색</h2>
		<p class="search-box ">
			<span class="input-group"> <input type="text"
				class="form-control" placeholder="Search for..."> <span
				class="input-group-btn">
					<button class="btn btn-default" type="button">Go!</button>
			</span>
			</span>
		</p>

	</div>
	</section>

	<!-- Main -->


	<!-- One -->
	<section id="one" class="wrapper style1">

	<div class="content_filter container">
		<div class="area_silver">
			<div class="wrap">
				<div class="area_title">국내 여행지</div>
				<div class="travel_box">
					<div class="travel_section">
						<div class="travel_left">주요도시</div>
						<a href="#" class="travel_a_city"> 서울 </a> <a
							href="/ko/city/jeju_312" class="travel_a_city"> 제주 </a> <a
							href="/ko/city/busan_311" class="travel_a_city"> 부산 </a> <a
							href="/ko/city/gyeongju-si_10995" class="travel_a_city"> 경주 </a>
						<a href="/ko/city/yangpyeong-gun_10920" class="travel_a_city">
							양평 </a> <a href="/ko/city/taean-gun_10991" class="travel_a_city">
							태안 </a> <a href="/ko/city/jinju-si_11036" class="travel_a_city">
							진주 </a> <a href="/ko/city/gangneung-si_10933" class="travel_a_city">
							강릉 </a>
						<div class="clear"></div>
					</div>
					<div class="travel_section pa10">
						<div class="travel_city" data-on="off" data-show="001">
							<div>
								<span>강원도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="travel_city" data-on="off" data-show="002">
							<div>
								<span>경기도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="travel_city" data-on="off" data-show="003">
							<div>
								<span>경상남도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="travel_city" data-on="off" data-show="004">
							<div>
								<span>경상북도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<a href="/ko/city/gwangju_10205" class="travel_city" data-on="off"
							data-show="link">
							<div>
								<span>광주</span>
								<div class="clear"></div>
							</div>
						</a> <a href="/ko/city/daegu_10204" class="travel_city" data-on="off"
							data-show="link">
							<div>
								<span>대구</span>
								<div class="clear"></div>
							</div>
						</a> <a href="/ko/city/daejeon_10203" class="travel_city"
							data-on="off" data-show="link">
							<div>
								<span>대전</span>
								<div class="clear"></div>
							</div>
						</a> <a href="/ko/city/busan_311" class="travel_city" data-on="off"
							data-show="link">
							<div>
								<span>부산</span>
								<div class="clear"></div>
							</div>
						</a>
						<div class="clear"></div>
					</div>

					<div class="travel_hide" data-id="001">
						<a href="#" class="travel_ar"> 강릉 </a> <a href="#"
							class="travel_ar"> 고성 </a> <a href="#" class="travel_ar"> 동해
						</a> <a href="#" class="travel_ar"> 삼척 </a> <a href="#"
							class="travel_ar"> 속초 </a> <a href="#" class="travel_ar"> 양구
						</a> <a href="#" class="travel_ar"> 양양 </a> <a href="#"
							class="travel_ar"> 영월 </a> <a href="#" class="travel_ar"> 원주
						</a> <a href="#" class="travel_ar"> 인제 </a> <a href="#"
							class="travel_ar"> 정선 </a> <a href="#" class="travel_ar"> 철원
						</a> <a href="#" class="travel_ar"> 춘천 </a> <a href="#"
							class="travel_ar"> 태백 </a> <a href="#" class="travel_ar"> 평창
						</a> <a href="#" class="travel_ar"> 홍천 </a> <a href="#"
							class="travel_ar"> 화천 </a> <a href="#" class="travel_ar"> 횡성
						</a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="002">
						<a href="#" class="travel_ar"> 가평 </a> <a href="#"
							class="travel_ar"> 고양 </a> <a href="#" class="travel_ar"> 과천
						</a> <a href="#" class="travel_ar"> 광명 </a> <a href="#"
							class="travel_ar"> 광주 </a> <a href="#" class="travel_ar"> 구리
						</a> <a href="#" class="travel_ar"> 군포 </a> <a href="#"
							class="travel_ar"> 김포 </a> <a href="#" class="travel_ar"> 남양주
						</a> <a href="#" class="travel_ar"> 동두천 </a> <a href="#"
							class="travel_ar"> 부천 </a> <a href="#" class="travel_ar"> 성남
						</a> <a href="#" class="travel_ar"> 수원 </a> <a href="#"
							class="travel_ar"> 시흥 </a> <a href="#" class="travel_ar"> 안산
						</a> <a href="#" class="travel_ar"> 안성 </a> <a href="#"
							class="travel_ar"> 안양 </a> <a href="#" class="travel_ar"> 양주
						</a> <a href="#" class="travel_ar"> 양평 </a> <a href="#"
							class="travel_ar"> 여주 </a> <a href="#" class="travel_ar"> 연천
						</a> <a href="#" class="travel_ar"> 오산 </a> <a href="#"
							class="travel_ar"> 용인 </a> <a href="#" class="travel_ar"> 의왕
						</a> <a href="#" class="travel_ar"> 의정부 </a> <a href="#"
							class="travel_ar"> 이천 </a> <a href="#" class="travel_ar"> 파주
						</a> <a href="#" class="travel_ar"> 평택 </a> <a href="#"
							class="travel_ar"> 포천 </a> <a href="#" class="travel_ar"> 하남
						</a> <a href="#" class="travel_ar"> 화성 </a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="003">
						<a href="#" class="travel_ar"> 거제 </a> <a href="#"
							class="travel_ar"> 거창 </a> <a href="#" class="travel_ar"> 고성
						</a> <a href="#" class="travel_ar"> 김해 </a> <a href="#"
							class="travel_ar"> 남해 </a> <a href="#" class="travel_ar"> 마산
						</a> <a href="#" class="travel_ar"> 밀양 </a> <a href="#"
							class="travel_ar"> 사천 </a> <a href="#" class="travel_ar"> 산청
						</a> <a href="#" class="travel_ar"> 양산 </a> <a href="#"
							class="travel_ar"> 의령 </a> <a href="#" class="travel_ar"> 진주
						</a> <a href="#" class="travel_ar"> 진해 </a> <a href="#"
							class="travel_ar"> 창녕 </a> <a href="#" class="travel_ar"> 창원
						</a> <a href="#" class="travel_ar"> 통영 </a> <a href="#"
							class="travel_ar"> 하동 </a> <a href="#" class="travel_ar"> 함안
						</a> <a href="#" class="travel_ar"> 함양 </a> <a href="#"
							class="travel_ar"> 합천 </a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="004">
						<a href="#" class="travel_ar"> 경산 </a> <a href="#"
							class="travel_ar"> 경주 </a> <a href="#" class="travel_ar"> 고령
						</a> <a href="#" class="travel_ar"> 구미 </a> <a href="#"
							class="travel_ar"> 군위 </a> <a href="#" class="travel_ar"> 김천
						</a> <a href="#" class="travel_ar"> 문경 </a> <a href="#"
							class="travel_ar"> 봉화 </a> <a href="#" class="travel_ar"> 상주
						</a> <a href="#" class="travel_ar"> 성주 </a> <a href="#"
							class="travel_ar"> 안동 </a> <a href="#" class="travel_ar"> 영덕
						</a> <a href="#" class="travel_ar"> 영양 </a> <a href="#"
							class="travel_ar"> 영주 </a> <a href="#" class="travel_ar"> 영천
						</a> <a href="#" class="travel_ar"> 예천 </a> <a href="#"
							class="travel_ar"> 울릉 </a> <a href="#" class="travel_ar"> 울진
						</a> <a href="#" class="travel_ar"> 의성 </a> <a href="#"
							class="travel_ar"> 청도 </a> <a href="#" class="travel_ar"> 청송
						</a> <a href="#" class="travel_ar"> 칠곡 </a> <a href="#"
							class="travel_ar"> 포항 </a>
						<div class="clear"></div>
					</div>

					<div class="travel_section">
						<a href="#" class="travel_city" data-on="off" data-show="link">
							<div>
								<span>서울</span>
								<div class="clear"></div>
							</div>
						</a> <a href="#" class="travel_city" data-on="off" data-show="link">
							<div>
								<span>울산</span>
								<div class="clear"></div>
							</div>
						</a> <a href="#" class="travel_city" data-on="off" data-show="link">
							<div>
								<span>인천</span>
								<div class="clear"></div>
							</div>
						</a>
						<div class="travel_city" data-on="off" data-show="005">
							<div>
								<span>전라남도</span> <img src="/res/img/area/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="travel_city" data-on="off" data-show="006">
							<div>
								<span>전라북도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<a href="#" class="travel_city" data-on="off" data-show="link">
							<div>
								<span>제주도</span>
								<div class="clear"></div>
							</div>
						</a>
						<div class="travel_city" data-on="off" data-show="007">
							<div>
								<span>충청남도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="travel_city" data-on="off" data-show="008">
							<div>
								<span>충청북도</span> <img src="images/area_arrow.gif" alt=""
									class="city_arrow" />
								<div class="clear"></div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="005">
						<a href="#" class="travel_ar"> 강진 </a> <a href="#"
							class="travel_ar"> 고흥 </a> <a href="#" class="travel_ar"> 곡성
						</a> <a href="#" class="travel_ar"> 광양 </a> <a href="#"
							class="travel_ar"> 구례 </a> <a href="#" class="travel_ar"> 나주
						</a> <a href="#" class="travel_ar"> 담양 </a> <a href="#"
							class="travel_ar"> 목포 </a> <a href="#" class="travel_ar"> 무안
						</a> <a href="#" class="travel_ar"> 보성 </a> <a href="#"
							class="travel_ar"> 순천 </a> <a href="#" class="travel_ar"> 신안
						</a> <a href="#" class="travel_ar"> 여수 </a> <a href="#"
							class="travel_ar"> 영광 </a> <a href="#" class="travel_ar"> 영암
						</a> <a href="#" class="travel_ar"> 완도 </a> <a href="#"
							class="travel_ar"> 장성 </a> <a href="#" class="travel_ar"> 장흥
						</a> <a href="#" class="travel_ar"> 진도 </a> <a href="#"
							class="travel_ar"> 함평 </a> <a href="#" class="travel_ar"> 해남
						</a> <a href="#" class="travel_ar"> 화순 </a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="006">
						<a href="#" class="travel_ar"> 고창 </a> <a href="#"
							class="travel_ar"> 군산 </a> <a href="#" class="travel_ar"> 김제
						</a> <a href="#" class="travel_ar"> 남원 </a> <a href="#"
							class="travel_ar"> 무주 </a> <a href="#" class="travel_ar"> 부안
						</a> <a href="#" class="travel_ar"> 순창 </a> <a href="#"
							class="travel_ar"> 완주 </a> <a href="#" class="travel_ar"> 익산
						</a> <a href="#" class="travel_ar"> 임실 </a> <a href="#"
							class="travel_ar"> 장수 </a> <a href="#" class="travel_ar"> 전주
						</a> <a href="#" class="travel_ar"> 정읍 </a> <a href="#"
							class="travel_ar"> 진안 </a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="007">
						<a href="#" class="travel_ar"> 공주 </a> <a href="#"
							class="travel_ar"> 금산 </a> <a href="#" class="travel_ar"> 논산
						</a> <a href="#" class="travel_ar"> 당진 </a> <a href="#"
							class="travel_ar"> 보령 </a> <a href="#" class="travel_ar"> 부여
						</a> <a href="#" class="travel_ar"> 서산 </a> <a href="#"
							class="travel_ar"> 서천 </a> <a href="#" class="travel_ar"> 아산
						</a> <a href="#" class="travel_ar"> 예산 </a> <a href="#"
							class="travel_ar"> 천안 </a> <a href="#" class="travel_ar"> 청양
						</a> <a href="#" class="travel_ar"> 태안 </a> <a href="#"
							class="travel_ar"> 홍성 </a> <a href="#" class="travel_ar"> 계룡
						</a>
						<div class="clear"></div>
					</div>
					<div class="travel_hide" data-id="008">
						<a href="#" class="travel_ar"> 괴산 </a> <a href="#"
							class="travel_ar"> 단양 </a> <a href="#" class="travel_ar"> 보은
						</a> <a href="#" class="travel_ar"> 영동 </a> <a href="#"
							class="travel_ar"> 옥천 </a> <a href="#" class="travel_ar"> 음성
						</a> <a href="#" class="travel_ar"> 제천 </a> <a href="#"
							class="travel_ar"> 진천 </a> <a href="#" class="travel_ar"> 청원
						</a> <a href="#" class="travel_ar"> 청주 </a> <a href="#"
							class="travel_ar"> 충주 </a> <a href="#" class="travel_ar"> 증평
						</a>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</section>

	<section>
	<div class="container">
		<div class="row">
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
		</div>
		
		<div class="row">
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">구 서울역사</h3>
				<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
					faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep
					commodo id. Ac quis arcu amet. Arcu n</p>
				</section>
			</div>
		</div>
	</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
	<div class="container">
		<div class="row double">
			<div class="6u">
				<div class="row collapse-at-2">
					<div class="6u">
						<h3>Accumsan</h3>
						<ul class="alt">
							<li><a href="#">Nascetur nunc varius</a></li>
							<li><a href="#">Vis faucibus sed tempor</a></li>
							<li><a href="#">Massa amet lobortis vel</a></li>
							<li><a href="#">Nascetur nunc varius</a></li>
						</ul>
					</div>
					<div class="6u">
						<h3>Faucibus</h3>
						<ul class="alt">
							<li><a href="#">Nascetur nunc varius</a></li>
							<li><a href="#">Vis faucibus sed tempor</a></li>
							<li><a href="#">Massa amet lobortis vel</a></li>
							<li><a href="#">Nascetur nunc varius</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="6u">
				<h2>Aliquam Interdum</h2>
				<p>Blandit nunc tempor lobortis nunc non. Mi accumsan. Justo
					aliquet massa adipiscing cubilia eu accumsan id. Arcu accumsan
					faucibus vis ultricies adipiscing ornare ut. Mi accumsan justo
					aliquet.</p>
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-linkedin"><span
							class="label">LinkedIn</span></a></li>
					<li><a href="#" class="icon fa-pinterest"><span
							class="label">Pinterest</span></a></li>
				</ul>
			</div>
		</div>
		<ul class="copyright">
			<li>&copy; Untitled. All rights reserved.</li>
			<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
			<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
		</ul>
	</div>
	</footer>

</body>
</html>