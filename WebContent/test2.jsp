<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Ion by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/sknavi/js/jquery.min.js"></script>
<script src="/sknavi/js/skel.min.js"></script>
<script src="/sknavi/js/skel-layers.min.js"></script>
<script src="/sknavi/js/init.js"></script>
<script src="/sknavi/js/share-my-plan.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
   href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
   href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
   src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/sknavi/css/skel.css" />
<link rel="stylesheet" href="/sknavi/css/style.css" />
<link rel="stylesheet" href="/sknavi/css/style-xlarge.css" />
<link rel="stylesheet" href="/sknavi/css/plan-detail-page.css" />
<link rel="stylesheet" href="/sknavi/css/plan-popup.css" />
</head>

<body id="top">

   <div id="header">
      <!-- 여기는 다른 header html파일을 넣자 -->
   </div>

   <!-- Main -->
   <section id="main" class="wrapper style1">
      <header class="major">
         <h2>${schedule.subject}</h2>
         <p>시작일 ${schedule.startDate}</p>
         <p>${schedule.day}일간</p>
      </header>
      <section id="content" class="loc-container">

         <div class="box loc-container-left">
         <c:set var="thisday" value="0"/>
         <c:forEach var="dayinfo" items="${plan}">
            <c:if test="${dayinfo.day != thisday && thisday != 0}">
               </section>
            </c:if>
            <c:if test="${dayinfo.day != thisday}">
            <section class="day box">
                  <h2>Day-${dayinfo.day}</h2>
            </c:if>
                  <hr class="mitem" />
                  <div class="s-item ">
                     <a href="#"><img class="item-image" src="images/banner.jpg" /></a>
                     <div class="item-content">
                        <h3 class="item-loc">${dayinfo.place.placeName}</h3>
                        <p class="item-detail">${dayinfo.place.detail}</p>
                        <span class="${dayinfo.day}_place" style="display:none;">${dayinfo.place.placeLon}/${dayinfo.place.placeLat}</span>
                     </div>
                     <div class="opinion-content hidden">
                        <form>
                           <fieldset>
                              <legend>Your comments</legend>
                              <p>
                                 <textarea class="noscrollbars"></textarea>
                              </p>
                           </fieldset>
                        </form>
                     </div>
                  </div>
               <c:set var="thisday" value="${dayinfo.day}"/>
            </c:forEach>
            </div>
            </section>

            <a href="#share" class="share_btn button alt"> 공유페이지로 올리기 </a>

            <!-- 공유할껀지 물어보는 팝업 -->
            <div class="share-layer">
               <div class="dimBg4"></div>
               <div id="share" class="pop-layer">
                  <div class="pop-container">
                     <div class="pop-conts">
                        <!--content //-->
                        <p class="ctxt mb20">공유하시겠습니까?</p>
                        <div class="button alt">
                           <a href="schedule-detail.html" class="">공유하기</a>
                        </div>
                        <!--// content-->
                     </div>
                  </div>
               </div>
            </div>

         <!-- left fixed box -->
         <div class="fixbox box loc-container-right  col-lg-3">
            <div>fixed map and contents</div>
            <hr class="mitem" />
            <div id="map" style="width: 320px; height: 320px"></div>
         </div>

         <div></div>
      </section>

      <script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d42393d445d048ea9c6342358f80473"></script>
      <script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.452739313807456, 126.5709308145358), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };  

var map = new daum.maps.Map(mapContainer, mapOption);  // 지도를 생성합니다

//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
//스케줄로 부터 받은 장소 좌표를 받아서 입력

var bounds = new daum.maps.LatLngBounds();

   
var linePath = [
  /*   new daum.maps.LatLng(33.452344169439975, 126.56878163224233),
    new daum.maps.LatLng(33.452739313807456, 126.5709308145358),
    new daum.maps.LatLng(33.45178067090639, 126.5726886938753)  */
];

//지도에 표시된 마커 객체를 가지고 있을 배열입니다
var markers = [];

// 마커 하나를 지도위에 표시합니다 
//addMarker(new daum.maps.LatLng(33.452344169439975, 126.56878163224233));
//addMarker(new daum.maps.LatLng(33.452739313807456, 126.5709308145358));
//addMarker(new daum.maps.LatLng(33.45178067090639, 126.5726886938753));

// 마커를 생성하고 지도위에 표시하는 함수입니다
function addMarker(position) {
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: position
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    // 생성된 마커를 배열에 추가합니다
    markers.push(marker);
}

// 지도에 표시할 선을 생성합니다
/* var polyline = new daum.maps.Polyline({
    path: linePath, // 선을 구성하는 좌표배열 입니다
    strokeWeight: 3, // 선의 두께 입니다
    strokeColor: '#FFAE00', // 선의 색깔입니다
    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid' // 선의 스타일입니다
}); */


window.addEventListener('scroll', function() {
   var num = $('.day').length;
   for(var i=0;i<num;i++){
      var obj = $('.day:eq('+i+')');
      var offset = obj.offset();
      var t = offset.top;
      var b = t + obj.height();
      if(window.scrollY >= t && window.scrollY <= b){
      var spannum = $('.day').eq(i).find('span').length;
      for(var c=0;c<linePath.length;c++){
         linePath.shift();
      }
      //alert(linePath);
      for(var j=0;j<spannum;j++){
         var name = $('.day').eq(i).find('h3');
         var n = name[j];
         var placename = n.innerHTML;
         var lonlat = $('.day').eq(i).find('span');
         var ll = lonlat[j];
         var ss = ll.innerHTML;
         var loc = ss.split('/');
         var point = new daum.maps.LatLng(loc[1], loc[0]);
         infowindow = new daum.maps.InfoWindow({
             map: map,
             position: point,
             content: placename
         });
         linePath.push(point);
         bounds.extend(point);
      }
      var polyline = new daum.maps.Polyline({
          path: linePath, // 선을 구성하는 좌표배열 입니다
          strokeWeight: 3, // 선의 두께 입니다
          strokeColor: '#FFAE00', // 선의 색깔입니다
          strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: 'solid' // 선의 스타일입니다
      });
      
      polyline.setMap(map);
      map.setBounds(bounds);
      }
   }
   
});

// 지도에 선을 표시합니다 
//polyline.setMap(map);  

</script>
</body>
</html>