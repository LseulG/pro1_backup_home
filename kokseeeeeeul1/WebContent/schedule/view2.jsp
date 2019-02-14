<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>방방콕콕 - 여행 일정 상세</title>
<%@ include file="/include/link.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/schedule.css">
<script>
$(function(){ var $win = $(window); var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
/*사용자 설정 값 시작*/ 
var speed = 500; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing 
var $layer = $('.float_sidebar'); // 레이어 셀렉팅 
var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px 
$layer.css('position', 'relative').css('z-index', '1'); 
/*사용자 설정 값 끝*/ 
 
/// 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해 
if (top > 0 ) 
	$win.scrollTop(layerTopOffset+top); 
else 
	$win.scrollTop(0); 
	
//스크롤이벤트가 발생하면 
$(window).scroll(function(){ 
	yPosition = $win.scrollTop() - 1100; //이부분을 조정해서 화면에 보이도록 맞추세요 
	if (yPosition < 0) { 
		yPosition = 0; 
	} 
	$layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
	}); 
});
$(document).ready(function() { 
	$(window).scroll(function() { 
		$(this).scrollTop() > 1000 ? $(".float_sidebar").fadeIn() : $(".float_sidebar").fadeOut() 
	}) 
});

</script>
</head>
<body>
<%@ include file="/include/nav.jsp"%>

    <!-- 내용 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg');">
      <div class="overlay"></div>
      <div class="container slcontainer">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span class="mr-2"><a href="blog.jsp">Schedule</a></span> <span>TripRead</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 일정 보기</h1>
          </div>
        </div>
      </div>
    </div>

<!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
<!-- 왼쪽 -->
		<div class="col-md-4 sidebar ftco-animate">
        	<div class="sidebar-box ftco-animate">
				<div class="float_sidebar">
            	<div id="daumMap" style="width:300px;height:500px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e"></script>
				<script>
					//http://apis.map.daum.net/web/sample/basicMarkerImage/
					//참고사이트
							var mapContainer = document.getElementById('daumMap'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						        level: 3 // 지도의 확대 레벨
						    };  
						
							var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
							
					// 스크롤 생성		
							// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
							var mapTypeControl = new daum.maps.MapTypeControl();
							
							// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
							// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
							map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
					
							// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
							var zoomControl = new daum.maps.ZoomControl();
							map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
							
					// 핀 여러개 찍기
							// 마커를 표시할 위치와 title 객체 배열입니다 
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
							        title: '텃밭', 
							        latlng: new daum.maps.LatLng(33.450879, 126.569940)
							    },
							    {
							        title: '근린공원',
							        latlng: new daum.maps.LatLng(33.451393, 126.570738)
							    }
							];
							
							// 마커 이미지의 이미지 주소입니다. 이미지 링크만 바꾸면 변경 가능.
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
							
					// 지도에 선 잇기
							// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
							var linePath = [
							    new daum.maps.LatLng(33.450705, 126.570677),
							    new daum.maps.LatLng(33.450879, 126.569940),
							    new daum.maps.LatLng(33.450936, 126.569477),
							    new daum.maps.LatLng(33.451393, 126.570738)
							];
							
							// 지도에 표시할 선을 생성합니다
							var polyline = new daum.maps.Polyline({
							    path: linePath, // 선을 구성하는 좌표배열 입니다
							    strokeWeight: 5, // 선의 두께 입니다
							    strokeColor: '#FFAE00', // 선의 색깔입니다
							    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
							    strokeStyle: 'solid' // 선의 스타일입니다
							});
							
							// 지도에 선을 표시합니다 
							polyline.setMap(map); 
				</script>
				</div>
            </div>
        
            <div class="sidebar-box ftco-animate">
              <h3><i class="icon-tag"></i> 태그aa</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">전라남도</a>
                <a href="#" class="tag-cloud-link">여수</a>
                <a href="#" class="tag-cloud-link">순천</a>
                <a href="#" class="tag-cloud-link">광양</a>
                <a href="#" class="tag-cloud-link">봄</a>
                <a href="#" class="tag-cloud-link">나혼자</a>
              </div>
            </div>

		</div>
<!-- 왼쪽 End -->
      
<!-- 오른쪽 -->    
		<div class="col-md-8 ftco-animate destination">
			<div class="text p-3">
				<h3 class="mb-3">소제목 입니다</h3>
				<p>여행 내용을 간략히 소개하는 부분 입니다.<br>*이 부분을 위로 12로 잡고 배경색 넣어서 올릴까요?<br>지도는 왼쪽에서 스크롤해도 따라다니게 하면 좋을것 같다.<br>n일차 부분을 div, a, span, p 등으로 class 지정해주고 n일차(n) ^ 아이콘<br>밑에 부분 글씨 더 연하게 </p>
				<hr>
				<p class="days">
					<span>
						<i class="icon-person"></i> 작성자id &nbsp;|&nbsp; <i class="icon-bookmark-o"></i> 북마크 : 18 &nbsp;|&nbsp; <i class="icon-thumbs-o-up"></i> 추천 : 18<br>
						<i class="icon-today"></i> 여행기간 : 18.08.18 - 18.09.18 (30일)<br>
						<i class="icon-pencil"></i> 게시일 : 18.08.18 수요일 &nbsp;|&nbsp; <i class="icon-pencil"></i> 최종 수정일 : 18.08.18 수요일<br>
						
					</span>
				</p>
			</div>		
			<br>
			
			<div><h2 class="mb-3">1일차</h2><hr></div>
			<div class="sl-loc"><h5><i class="flaticon-meeting-point"></i> 장소장소장소</h5></div>
			<div class="sl-loc"><h5><i class="flaticon-hotel"></i> 숙박숙박</h5></div>
				<div class="sl-loc-cont p-3">
		            <p> 2번째 내용내용 Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
		            <p><img src="${root}/resources/images/image_8.jpg" alt="" class="img-fluid"></p>
		            <p> 내용이구영 Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
	            </div>
			<div class="sl-loc"><h5><i class="flaticon-fork"></i> 식당맛집식도락</h5></div>
				<div class="sl-loc-cont p-3">
	            	<p> 내용내용 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
	            	<p><img src="${root}/resources/images/image_7.jpg" alt="" class="img-fluid"></p>
	           		<p> 내용 이어서 내용내용 Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
	            </div>
            <div class="sl-loc"><h5><i class="flaticon-shopping-bag"></i> 쇼핑최고</h5></div>
            	<div class="sl-loc-cont p-3">
	            	<p> 내용내용 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
	            	<p><img src="${root}/resources/images/image_7.jpg" alt="" class="img-fluid"></p>
	           		<p> 내용 이어서 내용내용 Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
	            </div>
            <div class="sl-loc"><h5><i class="flaticon-meeting-point"></i> 장소멋진장소</h5></div>
	            <div class="sl-loc-cont p-3">
		            <p> 2번째 내용내용 Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
		            <p><img src="${root}/resources/images/image_8.jpg" alt="" class="img-fluid"></p>
		            <p> 내용이구영 Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
	            </div>
	            
			<div><h2 class="mb-3">2일차</h2><hr></div>
			<div><h2 class="mb-3">3일차</h2><hr></div>	       
            

<!-- 댓글 목록 ***li,ul 짝 안맞는거 찾기~ -->
            <div class="pt-5">
            <h5 class="mb-4"><i class="icon-comment"></i> 댓글 6</h5>
            <ul class="comment-list">
            	<li class="comment">
                  <div class="comment-body">
                  	<div class="row">
                  		<h3><i class="icon-person"></i> 작성자 11</h3>
                  		<div class="meta">2018.08.18 2:21</div>
                  		<a href="#" class="reply">답글</a>
                  	</div>
                  		<p>작성내용1 댓글이다 댓글</p>
                  </div>
                </li>

                <li class="comment">
                  <div class="comment-body">
                  	<div class="row">
                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
                  		<div class="meta">2018.08.18 2:21</div>
                  		<a href="#" class="reply">답글</a>
                  	</div>
                  		<p>222222</p>
                  </div>


                  <ul class="slchild">
                    <li class="comment">
                      <div class="comment-body">
	                  	<div class="row">
	                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
	                  		<div class="meta">2018.08.18 2:21</div>
	                  		<a href="#" class="reply">답글</a>
	                  	</div>
	                  		<p>222222</p>
	                  </div>


                      <ul class="slchild">
                        <li class="comment">
                          <div class="comment-body">
		                  	<div class="row">
		                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
		                  		<div class="meta">2018.08.18 2:21</div>
		                  		<a href="#" class="reply">답글</a>
		                  	</div>
		                  		<p>222222</p>
		                  </div>

                            <ul class="slchild">
                              <li class="comment">
                                <div class="comment-body">
				                  	<div class="row">
				                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
				                  		<div class="meta">2018.08.18 2:21</div>
				                  		<a href="#" class="reply">답글</a>
				                  	</div>
				                  		<p>222222aaaaaa</p>
			                  	</div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="comment-body">
                  	<div class="row">
                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
                  		<div class="meta">2018.08.18 2:21</div>
                  		<a href="#" class="reply">답글</a>
                  	</div>
                  		<p>222222</p>
                  </div>
                </li>
              </ul>
              <!-- END comment-list -->
              
  <!-- 댓글달기 -->           
              <div class="comment-form-wrap pt-5">
                <form action="#" class="p-4 bg-light">
                	<div class="form-group">
                    	<p>댓글달기</p>
                    	<textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="내용과 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
                 	 </div>
                  	<div class="form-group">
                   		 <input type="submit" value="등록" class="btn py-3 px-4 btn-primary">
                 	 </div>
                </form>
              </div>
            </div>

		</div>
<!-- 오른쪽 END -->
	</div>
	</div>
	</section>
<!-- 내용끝 -->



<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>