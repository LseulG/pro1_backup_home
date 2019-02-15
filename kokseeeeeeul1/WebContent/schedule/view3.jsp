<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>방방콕콕 - 여행 일정 상세</title>
<%@ include file="/include/link.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/schedule.css">
<script type="text/javascript">
$(document).ready(function() {
	$("div.sl-loc").click(function(){
		$(this).next(".sl-loc-cont").slideDown(500);
	});
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
			
			<div class="sl-day"><h2 class="mb-3">1일차</h2><hr></div>
			<div class="sl-loc"><h5><i class="flaticon-hotel"></i> 다다시</h5></div>
				<div class="sl-loc-cont">
		            <p> 2번째 내용내용 Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.<br>
		            <img src="${root}/resources/images/image_8.jpg" alt="" class="img-fluid"><br>
		                  내용이구영 Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
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


<script src="${root}/resources/js/sl-map-view.js"></script>
<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>