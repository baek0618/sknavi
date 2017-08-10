<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 세부 스케줄</title>
</head>
<body>
   <table style="width:100%;padding: 100px;">
      <tr>
         <td style="position:relative;width:70%;">
            <h2> 나의 첫번째 여행 장소</h2><br>
            <h3>detail</h3>
            <h4>tel</h4>
         </td>
         <td   style="position:relative;width:30%;">
            <div id="map" style="width:100%;height:350px;"></div>    
         </td>
      </tr>
   </table>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d42393d445d048ea9c6342358f80473"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.452739313807456, 126.5709308145358), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
//스케줄로 부터 받은 장소 좌표를 받아서 입력
var linePath = [
    new daum.maps.LatLng(33.452344169439975, 126.56878163224233),
    new daum.maps.LatLng(33.452739313807456, 126.5709308145358),
    new daum.maps.LatLng(33.45178067090639, 126.5726886938753) 
];

//지도에 표시된 마커 객체를 가지고 있을 배열입니다
var markers = [];

// 마커 하나를 지도위에 표시합니다 
addMarker(new daum.maps.LatLng(33.452344169439975, 126.56878163224233));
addMarker(new daum.maps.LatLng(33.452739313807456, 126.5709308145358));
addMarker(new daum.maps.LatLng(33.45178067090639, 126.5726886938753));

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
var polyline = new daum.maps.Polyline({
    path: linePath, // 선을 구성하는 좌표배열 입니다
    strokeWeight: 3, // 선의 두께 입니다
    strokeColor: '#FFAE00', // 선의 색깔입니다
    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid' // 선의 스타일입니다
});

// 지도에 선을 표시합니다 
polyline.setMap(map);  

</script>
</body>
</html>