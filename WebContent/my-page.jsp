<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Ion by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>


<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-xlarge.css" />
<link rel="stylesheet" href="css/my-page.css" />



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
			<h2>나의 여행 계획 리스트</h2>

		</div>
	</section>

	<!-- Main -->
	<section id="main" class="wrapper style1 container">
		<header class="major m_top">
			<div class="m-tab">
				완성된 일정(<span class="com-cnt">0</span>)
			</div>
			<div class="mtab-line"></div>
			<div class="m-tab">
				계획중인 일정(<span class="plan-cnt">0</span>)
			</div>
			<div class="mtab-line"></div>
			<div class="m-tab">
				좋아한 일정(<span class="like-cnt">0</span>)
			</div>
			<div class="m-tab-r">
				<a href="#" class="button alt">여행일정만들기</a>
			</div>
		</header>
		<section id="content" class="plans-container">
			<div class="row">

				<div class="4u">
					<a href="plan-detail.jsp">
						<section class="special box">
							<img class="item-image" src="images/banner.jpg" />
							<hr class="mitem" />
							<h3 class="item-loc">구 서울역사</h3>
							<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
								faucibus accumsan enim lacinia adipiscing metus urna adipiscing
								cep commodo id. Ac quis arcu amet. Arcu n</p>
						</section>
					</a>
				</div>
				<div class="4u">
					<section class="special box">
						<a href="#"><img class="item-image" src="images/banner.jpg" /></a>
						<hr class="mitem" />
						<h3 class="item-loc">구 서울역사</h3>
						<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
							faucibus accumsan enim lacinia adipiscing metus urna adipiscing
							cep commodo id. Ac quis arcu amet. Arcu n</p>
					</section>
				</div>
				<div class="4u">
					<section class="special box">
						<a href="#"><img class="item-image" src="images/banner.jpg" /></a>
						<hr class="mitem" />
						<h3 class="item-loc">구 서울역사</h3>
						<p class="item-detail">간단한 설명 - et mi ac magna cep lobortis
							faucibus accumsan enim lacinia adipiscing metus urna adipiscing
							cep commodo id. Ac quis arcu amet. Arcu n</p>
					</section>
				</div>
			</div>


		</section>
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