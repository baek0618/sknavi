<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
   Ion by TEMPLATED
   templated.co @templatedco
   Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
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

<script>

var id;
var pw;
var ph;

    function checkId() {                         //id를 한 글자 입력할때 마다 '실시간' 아이디 check
        id = $("#sign_id");   
         if (id.val().length <= 3) {   
            $("#idCheck").val("4자 이상 입력해주세요");
         } else {
            $.ajax({
               url : 'http://localhost:8087/sknavi/duplicate.do',            //db에 이 아이디가 존재하는지 비동기식 확인
               type : 'POST',
               data : {
                  "id" : id.val()
               },
               dataType : "text",
               success : function(data) {
               if (data != "fail") {
                     $("#idCheck").val("중복된 아이디 입니다.");
                     //$("#btn_click").attr("type", "hidden");
                  } else {
                     $("#idCheck").val("ok");
                     
                  //   $("#btn_click").attr("type", "submit");
                  }
               },
               error : function(request, status, error) {
                  alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
               }
            });
         }
   }
    function checkPw() {                               //pw의 한 글자 단위로 입력할때마다 '실시간'으로 비밀번호 check
        pw = $("#sign_pw");
       if (pw.val().length <= 5) {
         $("#pwCheck").val("6자 이상 입력해주세요");
      //   $("#btn_click").attr("type", "hidden");
      }else 
         $("#pwCheck").val("ok");
    }
    
    function checkPh() {            //phone을 한 글자 단위로 입력할때마다 '실시간'으로 전화번호 check
       
        ph = $("#sign_ph");
    
       if (ph.val().length <= 6) {
       //   $("#btn_click").attr("type", "hidden");
         $("#phCheck").val("올바른 번호가 아닙니다");
      }else 
         $("#phCheck").val("ok");
    }
    
function addMember(){                                      //회원가입 버튼을 눌렀을때 호출 .. 모든 필드값의 조건이 충족되어야 submit 한다.
   var name = $("#sign_name");
   var birth= $("#sign_birth");
      id = $("#sign_id");
      pw = $("#sign_pw");
      ph = $("#sign_ph");
   
   if (id.val().length <= 3){
      alert("아이디 4글자 이상 입력해주세요.");
      return;
   }
   console.log("ddd"+pw.val());
   if (pw.val().length <= 5 || pw.val()===null){
      alert("비밀번호를 6글자 이상 입력해주세요.");
      return;
   }
   if (ph.val().length <= 6) {
      alert("올바른 번호를 입력해주세요.");
      return;
   }
   if (name.val().length <= 1) {
      alert("올바른 이름을 입력해주세요.");
      return;
   }
   if (birth.val().length <= 0) {
      alert("올바른 생일을 입력해주세요.");
      return;
   }
   document.form1.submit();
   alert("회원가입 완료되었습니다!!");
}

// This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
  console.log('statusChangeCallback');
  console.log(response);
  
  // response 객체는 현재 로그인 상태를 나타내는 정보를 보여준다. 
  // 앱에서 현재의 로그인 상태에 따라 동작하면 된다.
  // FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능하다.
  if (response.status === 'connected') {
    // 페이스북을 통해서 로그인이 되어있다.
    testAPI();
  } else if (response.status === 'not_authorized') {
    // 페이스북에는 로그인 했으나, 앱에는 로그인이 되어있지 않다.
    document.getElementById('status').innerHTML = 'Please log ' +
      'into this app.';
  } else {
    // 페이스북에 로그인이 되어있지 않다. 따라서, 앱에 로그인이 되어있는지 여부가 불확실하다.
    document.getElementById('status').innerHTML = 'Please log ' +
      'into Facebook.';
  }
}

// 이 함수는 누군가가 로그인 버튼에 대한 처리가 끝났을 때 호출된다.
// onlogin 핸들러를 아래와 같이 첨부하면 된다.

function checkLoginState() {        //페이스북 로그인 누르면 호출
   
    document.fLogin.submit();
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

window.fbAsyncInit = function() {
FB.init({
  appId      : '496209107383276',
  cookie     : true,  // 쿠키가 세션을 참조할 수 있도록 허용
  xfbml      : true,  // 소셜 플러그인이 있으면 처리
  version    : 'v2.1' // 버전 2.1 사용
});

// 자바스크립트 SDK를 초기화 했으니, FB.getLoginStatus()를 호출한다.
//.이 함수는 이 페이지의 사용자가 현재 로그인 되어있는 상태 3가지 중 하나를 콜백에 리턴한다.
// 그 3가지 상태는 아래와 같다.
// 1. 앱과 페이스북에 로그인 되어있다. ('connected')
// 2. 페이스북에 로그인되어있으나, 앱에는 로그인이 되어있지 않다. ('not_authorized')
// 3. 페이스북에 로그인이 되어있지 않아서 앱에 로그인이 되었는지 불확실하다.
//
// 위에서 구현한 콜백 함수는 이 3가지를 다루도록 되어있다.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

};

// SDK를 비동기적으로 호출
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// 로그인이 성공한 다음에는 간단한 그래프API를 호출한다.
// 이 호출은 statusChangeCallback()에서 이루어진다.
function testAPI() {
  console.log('Welcome!  Fetching your information.... ');
  FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
      console.log(JSON.stringify(response));
      $("#name").text("이름 : "+response.name);
      $("#email").text("이메일 : "+response.email);
      $("#gender").text("성별 : "+response.gender);
      $("#birthday").text("생년월일 : "+response.birthday);
      $("#id").text("아이디 : "+response.id);                             //콘솔창 확인해 보면 필드값들을 출력해놨음 
      
      
      $("#fID").val   (response.id);
      $("#fPW").val(response.name);
  //    document.fLogin.submit();
  });
}
    
    
</script>
 
</head>


<link rel="stylesheet" href="css/index.css" />
<link rel="stylesheet" href="css/plan-popup.css" />
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-xlarge.css" />
<link rel="stylesheet" href="css/my-page.css" />


</head>

<body id="top">

   <!-- Header -->
   <header id="header" class="skel-layers-fixed">
      <h1>
         <a href="#">Ion</a>
      </h1>
      <nav id="nav">
         <ul>
            <li><a href="my-page.html">나의일정리스트</a></li>
            <li><a id="make-plan" href="#layer2">일정만들기</a></li>
          <!-- other-plan.jsp -->
            <li><a href="viewBoards.do?">여행일정보기</a></li>
            <li><a href="search-loc.jsp">여행지검색</a></li>
            <c:choose>
               <c:when test="${userId == null}">         <!-- userId 세션값이 없으면 로그인 버튼 노출 -->
                  <li><a id="login_btn" href="#login" class="button special">login</a></li>
               </c:when>
               <c:otherwise>                  <!-- 로그인 성공하여 userId 세션값이 없으면 로그인 버튼 노출 -->
                 ${userId}님이 로그인중입니다.
                    <li><a id="login_btn" href="logout.do"
                     class="button special">logout</a></li>
               </c:otherwise>
            </c:choose>
            <c:choose>
               <c:when test="${err != null}">         <!-- 로그인에 실패하면 err 세션이 생김 -->
                  <script>alert("아이디 또는 비밀번호를 확인해 주세요.")
                  </script>
                  <%
                     session.removeAttribute("err");      //로그인 err 세션 삭제 
                  %>
               </c:when>
               <c:otherwise>
               </c:otherwise>
            </c:choose>
            <li><a id="sign-btn" href="#sign-in" class="button special">Sign Up</a></li>
         </ul>
      </nav>
   </header>



   <!-- Banner -->
   <section id="banner">
      <div class="inner">
         <h2>PLANAVI</h2>
         <p>planavi 슬로건 한줄</p>

         <p class=" search-box ">
            <span class="input-group"> <input type="text"
               class="form-control" placeholder="Search for..."> <span
               class="input-group-btn">
                  <button class="btn btn-default" type="button">Go!</button>
            </span>
            </span>
         </p>
         <br>
         <ul class="actions">
            <li><a href="#content" class="button big special">새일정만들기</a></li>
            <li><a href="#elements" class="button big alt">다른일정보러가기</a></li>
         </ul>
      </div>
   </section>


   <!-- pop-up  ::: login   -->
   <div class="log-layer">
      <div class="dimBg2"></div>
      <div id="login" class="pop-layer">
         <div class="pop-container">
            <div class="pop-conts">
               <!--content //-->
               <p class="ctxt mb20">로그인해주세요</p>
               <form name ="" action="login.do" method="post">
                  id : <input id="user_id" name = "user_id" type="text" class="plan-title"/>
                  pw : <input id="user_pw" name = "user_pw" type="password" class="plan-title"/>
                  <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">   <!-- 페북 로그인 버튼 -->
                  </fb:login-button>
                  
                  
                  
                  
                  <div class="btn-r">
                  <input type="submit" value="전송"/> 
                  
                  <a href="#" class="btn-layerClose"><input type="button" value="닫기"> </a>
                  </div>
               </form>
                  <form id = "fLogin" name = "fLogin" action="fLogin.do" method="post">
                  <input type="hidden" id = "fID" name = "fID" value=""/>
                  <input type="hidden" id = "fPW" name = "fPW" value=""/>
                  </form>
            
               <!--// content-->
            </div>
         </div>
      </div>
   </div>

   <!-- pop-up  ::: sign in   -->
   <div class="sign-layer">
      <div class="dimBg3"></div>
      <div id="sign-in" class="pop-layer">
         <div class="pop-container">
            <div class="pop-conts">
               <!--content //-->
               <form id="form1" name="form1" method="post"
                  action="insertMember.do">
                  <p class="ctxt mb20">회원가입</p>
                  <div class="form-group">
                     id : <input type="textarea"  id = "idCheck" style="border: 0px; background-color: white;" value="" readonly/>
                     <input id="sign_id" name="id" type="text" size="10px" oninput="checkId()"/>
                  </div>
                  <div class="form-group">
                     이름 : <input id="sign_name" name="name" type="text" 
                        class="plan-title" size=""/> 
                        pw : <input type="textarea" id = "pwCheck" tabindex="-1" style="border: 0px; background-color: white;" value="" readonly/>
                        <input id="sign_pw"  
                        width="50px" name="password" type="password" class="plan-title"  oninput="checkPw()"/>
                  </div>
                  <div class="form-group">
                     <!-- pw check: <input id="sign_pw" name="password" type="password" class="plan-title"> -->
                     phone : <input type="textarea" id = "phCheck" tabindex="-1" style="border: 0px; background-color: white;" value="" readonly/>
                     <input id="sign_ph" name="phone" type="text"
                        class="plan-title" oninput="checkPh()" />
                  </div>
                  <div class="form-group">
                     <label>birth : </label> <input id = "sign_birth" type="date" name="birth" />
                  </div>
               
                  <div class="btn-r">
                     <!--    <a href="schedule-detail.html" class="btn-layerClose">만들기</a> -->
                     <input id="btn_click" type="button" value="확인" onclick="addMember()"/> 
                     <a href="#" class="btn-layerClose">
                     <input id="cancel" type="button" class="" value="취소" />
                     </a>
                  </div>
               </form>
               <!-- <div class="btn-r">
                  <a href="schedule-detail.html" class="">만들기</a> 닫기
               </div> -->

               <!--// content-->
            </div>
         </div>
      </div>
   </div>

   <!-- pop-up  ::: planiing  -->
   <div class="dim-layer">
      <div class="dimBg"></div>
      <div id="layer2" class="pop-layer">
         <div class="pop-container">
            <div class="pop-conts">
               <!--content //-->
               <p class="ctxt mb20">여행 계획을 입력해 주세요.</p>
               <label> title : </label> <input id="plan-title" type="text"
                  class="plan-title"> </input>
               <form>
                  <label>날짜 선택 : </label> <input type="date">
               </form>
               <label> 여행 가는 기간 : </label> <input id="travel-day" type="text"
                  class="plan-title"> </input>
               <div class="btn-r">
                  <a href="schedule-detail.html" class="">만들기</a> <a
                     href="#" class="btn-layerClose">닫기</a>
               </div>
               <!--// content-->
            </div>
         </div>
      </div>
   </div>




   <!-- One -->
   <section id="one" class="wrapper style1">
      <header class="major">
         <h2>인기 여행지 top3</h2>
         <p>인기있는 여행지로 여행을 떠나 보세요</p>
      </header>
      <div class="container">

         <div class="row">
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
      </div>
   </section>

   <!-- Two -->
   <section id="two" class="wrapper style2">
      <header class="major">
         <h2>Commodo accumsan aliquam</h2>
         <p>Amet nisi nunc lorem accumsan</p>
      </header>
      <div class="container">
         <div class="row">
            <div class="6u">
               <section class="special">
                  <a href="#" class="image fit"><img src="images/pic01.jpg"
                     alt="" /></a>
                  <h3>Mollis adipiscing nisl</h3>
                  <p>Eget mi ac magna cep lobortis faucibus accumsan enim
                     lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis
                     arcu amet. Arcu nascetur lorem adipiscing non faucibus odio
                     nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac
                     posuere volutpat lorem arcu aliquam lorem.</p>
                  <ul class="actions">
                     <li><a href="#" class="button alt">Learn More</a></li>
                  </ul>
               </section>
            </div>
            <div class="6u">
               <section class="special">
                  <a href="#" class="image fit"><img src="images/pic02.jpg"
                     alt="" /></a>
                  <h3>Neque ornare adipiscing</h3>
                  <p>Eget mi ac magna cep lobortis faucibus accumsan enim
                     lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis
                     arcu amet. Arcu nascetur lorem adipiscing non faucibus odio
                     nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac
                     posuere volutpat lorem arcu aliquam lorem.</p>
                  <ul class="actions">
                     <li><a href="#" class="button alt">Learn More</a></li>
                  </ul>
               </section>
            </div>
         </div>
      </div>
   </section>

   <!-- Three -->
   <section id="three" class="wrapper style1">
      <div class="container">
         <div class="row">
            <div class="8u">
               <section>
                  <h2>Mollis ut adipiscing</h2>
                  <a href="#" class="image fit"><img src="images/pic03.jpg"
                     alt="" /></a>
                  <p>Vis accumsan feugiat adipiscing nisl amet adipiscing
                     accumsan blandit accumsan sapien blandit ac amet faucibus aliquet
                     placerat commodo. Interdum ante aliquet commodo accumsan vis
                     phasellus adipiscing. Ornare a in lacinia. Vestibulum accumsan ac
                     metus massa tempor. Accumsan in lacinia ornare massa amet. Ac
                     interdum ac non praesent. Cubilia lacinia interdum massa faucibus
                     blandit nullam. Accumsan phasellus nunc integer. Accumsan euismod
                     nunc adipiscing lacinia erat ut sit. Arcu amet. Id massa aliquet
                     arcu accumsan lorem amet accumsan commodo odio cubilia ac eu
                     interdum placerat placerat arcu commodo lobortis adipiscing
                     semper ornare pellentesque.</p>
               </section>
            </div>
            <div class="4u">
               <section>
                  <h3>Magna massa blandit</h3>
                  <p>Feugiat amet accumsan ante aliquet feugiat accumsan. Ante
                     blandit accumsan eu amet tortor non lorem felis semper. Interdum
                     adipiscing orci feugiat penatibus adipiscing col cubilia lorem
                     ipsum dolor sit amet feugiat consequat.</p>
                  <ul class="actions">
                     <li><a href="#" class="button alt">Learn More</a></li>
                  </ul>
               </section>
               <hr />
               <section>
                  <h3>Ante sed commodo</h3>
                  <ul class="alt">
                     <li><a href="#">Erat blandit risus vis adipiscing</a></li>
                     <li><a href="#">Tempus ultricies faucibus amet</a></li>
                     <li><a href="#">Arcu commodo non adipiscing quis</a></li>
                     <li><a href="#">Accumsan vis lacinia semper</a></li>
                  </ul>
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