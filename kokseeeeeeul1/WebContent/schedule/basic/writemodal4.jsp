<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root}/resources/css/community.css">
<link rel="stylesheet" href="${root}/resources/css/map-search.css">

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
</head>
<body>

<div class="black_content" id=writeModal>
	<div class="modal">
		<h3 class="modal-header">리뷰 작성</h3>
		
		<div class="smap_wrap">
		    <div id="daummap" style="width:100%;height:300px;position:relative;overflow:hidden;"></div>
		
		    <div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;">
		                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
		                    <button type="submit">검색하기</button> 
		                </form>
		            </div>
		        </div>
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
		    </div>
		</div>
 		
       	<div class="form-group">
			<input type="text" id="localTitle" class="form-control" placeholder="장소" readonly="readonly">
		</div>
		
		<div id="summernote"></div>
		
		<div class="form-group" align="right" style="float: left; width: 50%; padding:10px;">
			<input type="button" value="등록" class="btn btn-primary py-3 px-5">
		</div>
		
		<div class="form-group" align="left" style="float: left; width: 50%; padding:10px;">
			<a href="#close">
				<input type="reset" data-dismiss="modal" value="취소" class="btn btn-primary py-3 px-5">
			</a>
		</div>
	</div>
</div>
 
<script>
$('#summernote').summernote({
  placeholder: '내용을 적어주세요.',
  dialogsInBody: true,
  tabsize: 2,
  height: 300
});
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
<script src="${root}/resources/js/map-search.js"></script>
</body>
</html>

