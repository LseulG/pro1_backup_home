<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>원, 선, 사각형, 다각형 표시하기</title>
    <style>
    #menu_wrap {
    	position:absolute;top:0;left:0;bottom:0;width:150px;height:30px;
    	margin:20px 0 0 20px;padding:5px;overflow-y:auto;
    	background:rgba(255, 255, 255, 0.7);
    	z-index: 1;font-size:12px;border-radius: 5px;
    }
    #menu_wrap .select-wrap .form-control {
    	width:150px; height:30px; padding-left: 10px;border-radius: 5px;
	}
    </style>
</head>
<body>
<div class="map_wrap">
	<div id="ddmap" style="width:100%;height:350px;"></div>  
	<div id="menu_wrap" class="bg_white">
        <div class="select-wrap">
            <select name="" id="mapDay" class="form-control" onchange="selectChange2()">
            	<option value="day_1">1일차</option>
            	<option value="day_2">2일차</option>
            	<option value="day_3">3일차</option>
            </select>
		</div>
    </div>
</div>  

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
<script>
var mapContainer = document.getElementById('ddmap'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '카카오', 
        latlng: new daum.maps.LatLng(33.450705, 126.570677)
    },
    {
        title: '생태연못', 
        latlng: new daum.maps.LatLng(33.450936, 126.569477)
    },
    {
        title: '근린공원',
        latlng: new daum.maps.LatLng(33.451393, 126.570738)
    }
];

var positions2 = [
    {
        title: '삼성혈', 
        latlng: new daum.maps.LatLng(33.50447265411531, 126.52866057839657)
    },
    {
        title: '제주도 민속 자연사 박물관', 
        latlng: new daum.maps.LatLng(33.506502954430196, 126.53149082314155)
    },
    {
        title: '제주문예회관',
        latlng: new daum.maps.LatLng(33.504605724083916 , 126.53524624985677 )
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}

// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
var linePath = [
    new daum.maps.LatLng(33.450705, 126.570677),
    new daum.maps.LatLng(33.450936, 126.569477),
    new daum.maps.LatLng(33.451393, 126.570738) 
];

// 지도에 표시할 선을 생성합니다
var polyline = new daum.maps.Polyline({
	endArrow : true, // 화살표 여부
    path: linePath, // 선을 구성하는 좌표배열 입니다
    strokeWeight: 4, // 선의 두께 입니다
    strokeColor: '#f85959', // 선의 색깔입니다
    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'shortdash' // 선의 스타일입니다
});

// 지도에 선을 표시합니다 
polyline.setMap(map);  

</script>
</body>
</html>