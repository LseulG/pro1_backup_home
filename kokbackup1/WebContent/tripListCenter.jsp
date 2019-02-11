<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>KokKok</title>
  	<%@ include file="include/link.jsp"%>
  </head>
  <body>
   <%@ include file="include/nav.jsp"%>
   
<!-- 이미지 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Tour</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 일정</h1>
          </div>
        </div>
      </div>
    </div>

<!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
<!-- 상단 검색창 -->	
		<div class="col-lg-12">
        <div class="sidebar-wrap bg-light ftco-animate">
			<h3 class="heading mb-4">검색 옵션</h3>
        	<form action="#">
        	<div class="fields col-lg-12">
				<div class="row">
					<!-- 일정(계획/후기) -->
        			<div class="form-group col-md-3 ftco-animate">
		            	<div class="select-wrap one-third">
		                	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                    	<option value="">모든 일정</option>
		                    	<option value="">여행 계획</option>
		                    	<option value="">여행 후기</option>
		                    </select>
	                  	</div>
        			</div>
        			
        			<!-- 검색기간 -->
		            <div class="form-group col-md-3 ftco-animate">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                    	<option value="">검색기간</option>
		                    	<option value="">전체</option>
		                    	<option value="">1일</option>
		                    	<option value="">1주</option>
		                    	<option value="">1개월</option>
		                    	<option value="">6개월</option>
		                    	<option value="">1년</option>
		                    </select>
	                  	</div>
		            </div>
		            
		            <!-- 테마 -->
		            <div class="form-group col-md-3 ftco-animate">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                    	<option value="">테마 전체</option>
		                    	<option value="">나혼자</option>
		                    	<option value="">친구랑</option>
		                    	<option value="">가족과</option>
		                    	<option value="">단체</option>
		                      	<option value="">패키지</option>
		                      	<option value="">커플</option>
		                    </select>
	                  	</div>
		            </div>
		            
		            <!-- 정렬 -->
		            <div class="form-group col-md-3 ftco-animate">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                      	<option value="">인기순</option>
		                      	<option value="">최신순</option>
		                    </select>
	                  	</div>
		            </div>
				</div>
				<!-- row -->				
				<div class="row">
					<!-- 여행기간 -->
		        	<div class="form-group col-md-3 ftco-animate">
		            	<div class="range-slider">
		              		<label for="name">여행기간</label>
		              		<span>
								<input type="number" value="1" min="1" max="60"/>일  -
								<input type="number" value="60" min="1" max="60"/>일
							</span>
							<p>
								<input value="1" min="1" max="60" step="1" type="range"/>
								<input value="60" min="1" max="60" step="1" type="range"/>
							</p>
						</div>
		        	</div>
		        	
		        	<!-- 검색 칸 -->
		        	<div class="form-group col-md-6 ftco-animate">
		                <input type="text" class="form-control" placeholder="검색어를 입력하세요">
		        	</div>
		        	
		        	<!-- 검색 버튼 -->
		        	<div class="form-group col-md-3 ftco-animate">
		            	<input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		        	</div>
				</div>
		    </div>
			</form>
        </div>
		</div>
<!-- 상단 검색창 END -->

<!-- 하단 목록 -->
		<div class="col-lg-12">
<!-- 목록들 -->
        	<div class="row">
				<div class="col-md-4 ftco-animate destination">
		    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
			    		<div class="icon d-flex justify-content-center align-items-center">
	    					<span class="icon-search2"></span>
	    				</div>
		    		</a>
		    		<div class="text p-3">
		    			<div class="d-flex">
				    		<h3><a href="#">여행 제목이 들어갑니다!! </a></h3>
		    			</div>
		    			<p>#전라남도 #여수 #순천 #광양 #저기 <br>#봄 #나혼자.</p>
		    			<br>
		    			<p class="days"><span>18.08.18 - 18.09.18 (30일)</span></p>
		    			<hr>
		    			<p class="bottom-area d-flex">
		    				<span><i class="icon-map-o"></i> 작성자id</span> <!-- icon변경 -->
		    				<span class="ml-auto">후기기</span>
		    			</p>
		    		</div>
				</div>
				
				
				
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">여행제목 2222</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">계획</span>
		    							</div>
		    						</div>
		    						<p>2018.08.18 - 2018.08.28</p>
		    						<p class="days"><span>10 days</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 작성자id</span> 
		    							<span class="ml-auto">후기기</span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">제목 3333333</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">후기</span>
		    							</div>
		    						</div>
		    						<p>2018.05.18 - 20018.05.20 </p>
		    						<p class="days"><span>3 days</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> 전라남도</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">제목44444</a></h3>
			    						</div>
		    						</div>
		    							<p class="days"><span>2018.08.18-2018.08.28 (10일)</span></p>
		    							<p>#전라남도 #여수 #순천 #광양 #여수 #겨울 #친구끼리</p><br>
		    						<hr>
		    						<div class="d-flex">
		    							<div class="one">
				    						<i class="icon-map-o"></i> 작성자a
			    						</div>
			    						<div class="two">
			    							후기
		    							</div>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">5555555555555555</a></h3>
			    						</div>

		    						</div>
		    							<p>#전라남도 #여수 #순천 #광양 #저기 <br>#봄 #나혼자.</p><br>
		    							<p class="days"><span>2018.08.18-2018.09.18 (30일)</span></p>
		    						<hr>
		    						<div class="d-flex">
		    							<div class="one">
				    						<i class="icon-map-o"></i> 작성자b
			    						</div>
			    						<div class="two">
			    							후기
		    							</div>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-6.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">제목 6번입니당</a></h3>
			    						</div>
		    						</div>
		    							<p class="days"><span>2018.08.18 (당일)</span></p>
		    							<p>#제주도 #겨울 #가족끼리</p><br>
		    						<hr>
		    						<div class="d-flex">
		    							<div class="one">
				    						<i class="icon-map-o"></i> 작성자c
			    						</div>
			    						<div class="two">
			    							계획
		    							</div>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
          	</div>
<!-- 목록들 END -->

<!-- page -->
          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
          	</div>
<!-- page END -->          	
		</div> 
<!-- 하단 목록  END-->
	</div> <!-- 큰 row END -->
	</div> <!-- 큰 container END -->
	</section>
<!-- 내용끝 -->

    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/chart.js/chart-pie-demo.js"></script>              
	<%@ include file="include/footer.jsp"%>
	<%@ include file="include/loader.jsp"%>    
	<%@ include file="include/arrowup.jsp"%>
  </body>
</html>