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
   <!-- 내용 -->
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

<!-- left search bar -->	
    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
        	<div class="col-lg-3 sidebar ftco-animate">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">검색 옵션</h3>
        			<form action="#">
        				<div class="fields">
        			  <div class="form-group">
		                <input type="text" class="form-control" placeholder="지역/장소 검색">
		              </div>
        			  <div class="form-group">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                      <option value="">모든 일정</option>
		                      <option value="">여행 계획</option>
		                      <option value="">여행 후기</option>
		                    </select>
	                  	</div>
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                      <option value="">조회기간 전체</option>
		                      <option value="">1일</option>
		                      <option value="">1주</option>
		                      <option value="">1개월</option>
		                      <option value="">6개월</option>
		                      <option value="">1년</option>
		                    </select>
	                  	</div>
		              </div>
		              <div class="form-group">
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
		              <div class="form-group">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="" id="" class="form-control" placeholder="Keyword search">
		                      <option value="">인기순</option>
		                      <option value="">최신순</option>
		                    </select>
	                  	</div>
		              </div>
		              <!--  달력
		              <div class="form-group">
		                <input type="text" id="checkin_date" class="form-control" placeholder="여행 시작일">
		              </div>
		              <div class="form-group">
		                <input type="text" id="checkin_date" class="form-control" placeholder="여행 마지막일">
		              </div>
		               -->
		              <div class="form-group">
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
		              
		              <div class="form-group">
		                <input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
        		</div>
        		<!-- 
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">볌점</h3>
        			<form method="post" class="star-rating">
							  <div class="form-check">
									<input type="checkbox" class="form-check-input" id="exampleCheck1">
									<label class="form-check-label" for="exampleCheck1">
										<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
									</label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						    	   <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
						      </label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
						     </label>
							  </div>
							  <div class="form-check">
							    <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
						      </label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
							    </label>
							  </div>
							</form>
        		</div>
        		 -->
          </div>

<!-- contents -->
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">여행제목1 입니다d</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">후기</span>
		    							</div>
		    						</div>
		    						<!--  <div class="tag-widget post-tag-container mb-5 mt-5"> -->
							              <div class="tagcloud">
							                <a href="#" class="tag-cloud-link location">전라남도</a>
							                <a href="#" class="tag-cloud-link location">여수</a>
							                <a href="#" class="tag-cloud-link location">순천</a>
							                <a href="#" class="tag-cloud-link location">광양</a>
							              </div>
							           <!-- </div>-->
		    						<p>2018.05.18 - 20018.05.20 (3일)</p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<!--  <div class="tag-widget post-tag-container mb-5 mt-5"> -->
							              <div class="tagcloud">
							                <a href="#" class="tag-cloud-link season">겨울</a>
							                <a href="#" class="tag-cloud-link thema">친구끼리</a>
							              </div>
							           <!-- </div>-->
		    						</p>
		    					</div>
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
		    							<span><i class="icon-map-o"></i>제주도</span> 
		    							<span class="ml-auto"><a href="#">찜하기</a></span>
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
		    							<p>#전라남도 #여수 #순천 #광양<br>#여수 #겨울 #친구끼리</p><br>
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
		    							<p>#전라남도 #여수 #순천 #광양<br>#저기 #봄 #나혼자.</p><br>
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
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">dirEngine</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Become a partner</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="js/range.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>