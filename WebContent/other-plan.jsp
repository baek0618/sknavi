<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>다른여행계획보기</title>

<script>
	<!-- header load -->
	$(document).ready(function() {
		$("#header").load("header.html");
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
		<h2>다른 계획 보기</h2>
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
				<div class="area_title">다른 여행 계획 필터</div>
				<div class="travel_box">
					<div class="travel_section">
						<div class="travel_left">지역</div>
						<a href="#" class="travel_a_city"> 서울<input type="checkbox"
							name="box1" />
						</a> <a href="/ko/city/jeju_312" class="travel_a_city"> 제주 </a> <a
							href="#" class="travel_a_city"> 부산 </a> <a href="#"
							class="travel_a_city"> 경주 </a> <a href="#" class="travel_a_city">
							양평 </a> <a href="/ko/city/taean-gun_10991" class="travel_a_city">
							태안 </a> <a href="/ko/city/jinju-si_11036" class="travel_a_city">
							진주 </a> <a href="/ko/city/gangneung-si_10933" class="travel_a_city">
							강릉 </a>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</section>



	<section>
	<div class="container">

		<c:set var="i" value="0" />
		<c:set var="j" value="3" />

		<c:forEach var="A" items="${board}">
			<c:if test="${i%j == 0 }">
				<div class="row">
			</c:if>
			<!--  value  -->
			<div class="4u">
				<section class="special box"> <a href="#"><img
					class="item-image" src="images/banner.jpg" /></a>
				<hr class="mitem" />
				<h3 class="item-loc">
					<a href="viewDetailBoard.do?board_id=${A.board_id}">${A.schedule.subject}</a>
				</h3>
				<p class="item-detail">${A.board_content}</p>
				hit : <a href="viewDetailBoard.do?board_id=${A.board_id}">${A.board_hit}</a>
				like : <a href="viewDetailBoard.do?board_id=${A.board_id}">${A.board_like}</a>

				</section>
			</div>
			<c:if test="${i%j == j-1 }">
			</c:if>
			<c:set var="i" value="${i+1 }" />
		</c:forEach>
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