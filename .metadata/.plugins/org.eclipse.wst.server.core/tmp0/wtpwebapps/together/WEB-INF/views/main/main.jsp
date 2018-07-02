<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<script type="text/javascript">
$(document).ready(function(){
	/* 클릭시 메뉴 전환 */

	$(".f3_1_submenu").on("click",function(){
		$(".f3_1_submenu").removeClass("view_menu");
		$( this ).addClass("view_menu");
            
        var subject_index=$(".f3_1_submenu").index(this);        
        $(".f3_list").addClass("f3_2_hid");
        $(".f3_list").removeClass("view_sub");
        $( ".f3_list:eq("+subject_index+")" ).addClass("view_sub");
        $( ".f3_list:eq("+subject_index+")" ).removeClass("f3_2_hid");
        
    });
	
	/* 상단 이미지 슬라이드 */
	
	var slideIndex = 1;

	function mainImgSlide(n){
		var i;
		if(n < 0) {
		// <
			slideIndex += n;
			if (slideIndex < 1) { slideIndex = $(".main_img").length; }
			
			for (i = 0; i < $(".main_img").length; i++) {
				$(".main_img").eq(i).css("display", "none");
				$(".main_img").eq(i).removeClass("fade_in");
				$(".main_img").eq(i).removeClass("fade_out");
			}
			
			var index_now = slideIndex-1;
			var index_next = slideIndex;
			if(slideIndex == $(".main_img").length){
				var index_next = 0;
			}

			$(".main_img").eq(index_now).css("display", "block");
			$(".main_img").eq(index_now).addClass("fade_in");
			$(".main_img").eq(index_next).css("display", "block");
			$(".main_img").eq(index_next).addClass("fade_out");
			
		} else if(n > 0) {
		// >
			slideIndex += n;
			if (slideIndex > $(".main_img").length) { slideIndex = 1; }
			
			for (i = 0; i < $(".main_img").length; i++) {
				$(".main_img").eq(i).css("display", "none");
				$(".main_img").eq(i).removeClass("fade_in");
				$(".main_img").eq(i).removeClass("fade_out");
			}
			var index_pre = slideIndex-2;
			if((index_pre) < 0) {
				index_pre = $(".main_img").length-1;
			}
			var index_now = slideIndex-1; 
		
			$(".main_img").eq(index_pre).css("display", "block");
			$(".main_img").eq(index_pre).addClass("fade_out");
			$(".main_img").eq(index_now).css("display", "block");
			$(".main_img").eq(index_now).addClass("fade_in");
			
		}
		
		
	}
	
	$("#f2_arr_l").click(function(){
		mainImgSlide(-1);
	})
	$("#f2_arr_r").click(function(){
		mainImgSlide(1);
	})
	
	/* modal 받은 데이터 저장  */
	
	var all_wall_paper = new Array();
	<c:forEach items="${lists}" var="lists">
		all_wall_paper.push("${lists.wall_paper_name}");
	</c:forEach>
	var all_lists_num = new Array();
	<c:forEach items="${lists}" var="lists">
		all_lists_num.push("${lists.num}");
	</c:forEach>
	var all_lists_sidename = new Array();
	<c:forEach items="${lists}" var="lists">
		all_lists_sidename.push("${lists.sidename}");
	</c:forEach>
	var all_lists_name = new Array();
	<c:forEach items="${lists}" var="lists">
		all_lists_name.push("${lists.name}");
	</c:forEach>
	
	var in_wall_paper = new Array();
	<c:forEach items="${inlists}" var="inlists">
		in_wall_paper.push("${inlists.wall_paper_name}");
	</c:forEach>
	var in_lists_num = new Array();
	<c:forEach items="${inlists}" var="inlists">
		in_lists_num.push("${inlists.num}");
	</c:forEach>
	var in_lists_sidename = new Array();
	<c:forEach items="${inlists}" var="inlists">
		in_lists_sidename.push("${inlists.sidename}");
	</c:forEach>
	var in_lists_name = new Array();
	<c:forEach items="${inlists}" var="inlists">
		in_lists_name.push("${inlists.name}");
	</c:forEach>
	
 	var out_wall_paper = new Array();
	<c:forEach items="${outlists}" var="outlists">
		out_wall_paper.push("${outlists.wall_paper_name}");
	</c:forEach>
	var out_lists_num = new Array();
	<c:forEach items="${outlists}" var="outlists">
		out_lists_num.push("${outlists.num}");
	</c:forEach>
	var out_lists_sidename = new Array();
	<c:forEach items="${outlists}" var="outlists">
		out_lists_sidename.push("${outlists.sidename}");
	</c:forEach>
	var out_lists_name = new Array();
	<c:forEach items="${outlists}" var="outlists">
		out_lists_name.push("${outlists.name}");
	</c:forEach>
	
	/* 전체 리스트 최초 출력 */
	
	var all_startNum = 0;
	var all_endNum = 8;
	
	for (var i = all_startNum; i < all_endNum; i++) {
		$(".all_list").append("<div class='all_view"+i+"'></div>");
		$(".all_view"+i).css("background-image", "url(images/upload/"+all_wall_paper[i]+")");
		$(".all_view"+i).append("<a href='inquiry.do?num="+ all_lists_num[i] +"'></a>");
		$(".all_view"+i).append("<div class='all_name_div" + i + "'></div>");
		$(".all_name_div"+i).append("<p class='all_sidename"+ i +"'>"+ all_lists_sidename[i] +"</p>");
		$(".all_name_div"+i).append("<p class='all_name"+ i +"'>"+ all_lists_name[i] +"</p>");
		if((i+1)%8==0){
			if(i!=0 && i < all_lists_num.length){
				$(".all_list").append("<div class='all_more'></div>");
				$(".all_more").append("<p>더보기</p>");
			}
		}
	}
	
	/* in 리스트 네비클릭시 출력 */
	
	var in_startNum = 0;
	var in_endNum = 8;
	
	$(".f3_1_submenu:eq(2)").one("click", function(){
		for (var i = in_startNum; i < in_endNum; i++) {
			$(".in_list").append("<div class='in_view"+i+"'></div>");
			$(".in_view"+i).css("background-image", "url(images/upload/"+in_wall_paper[i]+")");
			$(".in_view"+i).append("<a href='inquiry.do?num="+ in_lists_num[i] +"'></a>");
			$(".in_view"+i).append("<div class='in_name_div" + i + "'></div>");
			$(".in_name_div"+i).append("<p class='in_sidename"+ i +"'>"+ in_lists_sidename[i] +"</p>");
			$(".in_name_div"+i).append("<p class='in_name"+ i +"'>"+ in_lists_name[i] +"</p>");
			if((i+1)%8==0){
				if(i!=0 && i < in_lists_num.length){
					$(".in_list").append("<div class='in_more'></div>");
					$(".in_more").append("<p>더보기</p>");
				}
			}
		}
	})
	
	/* out 리스트 네비클릭시 출력 */
	
	var out_startNum = 0;
	var out_endNum = 8;
	
	$(".f3_1_submenu:eq(1)").one("click", function(){
		for (var i = out_startNum; i < out_endNum; i++) {
			$(".out_list").append("<div class='out_view"+i+"'></div>");
			$(".out_view"+i).css("background-image", "url(images/upload/"+out_wall_paper[i]+")");
			$(".out_view"+i).append("<a href='inquiry.do?num="+ out_lists_num[i] +"'></a>");
			$(".out_view"+i).append("<div class='out_name_div" + i + "'></div>");
			$(".out_name_div"+i).append("<p class='out_sidename"+ i +"'>"+ out_lists_sidename[i] +"</p>");
			$(".out_name_div"+i).append("<p class='out_name"+ i +"'>"+ out_lists_name[i] +"</p>");
			if((i+1)%8==0){
				if(i!=0 && i < all_lists_num.length){
					$(".out_list").append("<div class='out_more'></div>");
					$(".out_more").append("<p>더보기</p>");
				}
			}
		}
	})
	
	/* 더보기 all, in, out */
	
	$(".all_more").on("click", function(){
		all_startNum += 8;
		
		if(all_endNum + 8 > all_lists_num.length){
			var all_subNum = all_lists_num.length - all_endNum;
			all_endNum += all_subNum;
		} else {
			all_endNum += 8;
		}
		
		for(var i = all_startNum; i < all_endNum; i++){
			$(this).before("<div class='all_view"+i+"'></div>");
			$(".all_view"+i).css("background-image", "url(images/upload/"+all_wall_paper[i]+")");
			$(".all_view"+i).append("<a href='inquiry.do?num="+ all_lists_num[i] +"'></a>");
			$(".all_view"+i).append("<div class='all_name_div" + i + "'></div>");
			$(".all_name_div"+i).append("<p class='all_sidename"+ i +"'>"+ all_lists_sidename[i] +"</p>");
			$(".all_name_div"+i).append("<p class='all_name"+ i +"'>"+ all_lists_name[i] +"</p>");
			if(all_endNum == all_lists_num.length){
				$(this).addClass("hid");
			}
		}
	})
	
	$(".in_list").on("click", ".in_more" ,function(){
		in_startNum += 8;
		
		if(in_endNum + 8 > in_lists_num.length){
			var in_subNum = in_lists_num.length - in_endNum;
			in_endNum += in_subNum;
		} else {
			in_endNum += 8;
		}
		
		for(var i = in_startNum; i < in_endNum; i++){
			$(this).before("<div class='in_view"+i+"'></div>");
			$(".in_view"+i).css("background-image", "url(images/upload/"+in_wall_paper[i]+")");
			$(".in_view"+i).append("<a href='inquiry.do?num="+ in_lists_num[i] +"'></a>");
			$(".in_view"+i).append("<div class='in_name_div" + i + "'></div>");
			$(".in_name_div"+i).append("<p class='in_sidename"+ i +"'>"+ in_lists_sidename[i] +"</p>");
			$(".in_name_div"+i).append("<p class='in_name"+ i +"'>"+ in_lists_name[i] +"</p>");
			if(in_endNum == in_lists_num.length){
				$(this).addClass("hid");
			}
		}
	})
	
	$(".out_list").on("click", ".out_more" ,function(){
		out_startNum += 8;
		
		if(out_endNum + 8 > out_lists_num.length){
			var out_subNum = out_lists_num.length - out_endNum;
			out_endNum += out_subNum;
		} else {
			out_endNum += 8;
		}
		
		for(var i = out_startNum; i < out_endNum; i++){
			$(this).before("<div class='out_view"+i+"'></div>");
			$(".out_view"+i).css("background-image", "url(images/upload/"+out_wall_paper[i]+")");
			$(".out_view"+i).append("<a href='inquiry.do?num="+ out_lists_num[i] +"'></a>");
			$(".out_view"+i).append("<div class='out_name_div" + i + "'></div>");
			$(".out_name_div"+i).append("<p class='out_sidename"+ i +"'>"+ out_lists_sidename[i] +"</p>");
			$(".out_name_div"+i).append("<p class='out_name"+ i +"'>"+ out_lists_name[i] +"</p>");
			if(out_endNum == out_lists_num.length){
				$(this).addClass("hid");
			}
		}
	});
	
});
</script>

<style>
*{
	-ms-user-select: none; 
   -moz-user-select: -moz-none;
   -khtml-user-select: none;
   -webkit-user-select: none;
	user-select: none;
}
#f2_img {
	position:relative;
	width:100%;
	height:580px;
	top:0;
	border:0;
}
#f2_img ul {
	position:absolute;
	width:100%;
	height:580px;
}
#f2_img ul li img {
	position:absolute;
	width:100%;
	height:580px;
	
}
#f2_arr_r, #f2_arr_l {
	position:absolute;
	z-index:2;
	width:70px;
	top:45%;
	cursor:pointer;
}
#f2_arr_l {
	transform: rotate(180deg);
	left:2%;
}
#f2_arr_r {
	right:2%;
}


.fade_in {
	animation-name: fade_in;
	animation-duration: 0.5s;
	animation-fill-mode:both;
}

@keyframes fade_in {
	0% {
		opacity:0;
		display:none;
	}
	1% {
		opacity:0;
		display:block;
	}
	100% {
		opacity:1;
		display:block;
	}
}

.fade_out {
	animation-name: fade_out;
	animation-duration: 0.5s;
	animation-fill-mode:both;
}

@keyframes fade_out {
	0% {
		opacity:1;
		display:block;
	}
	1% {
		opacity:1;
		display:none;
	}
	100% {
		opacity:0;
		display:none;
	}
}


#f3_pro {
	position:relative;
	width:100%;
	height:480px;
	border:0;
}
#f3_border {
	wdith:100%;
	border-bottom: 2px solid #e6e6e6;
}
#f3_nav {
	position:relative;
	width:100%;
	height:50px;
	max-width:960px;
}
#f3_nav ul {
	margin:0;
	height:50px;
}
#f3_nav li {
	text-align:center;
	float:left;
	width:25%;
	line-height: 47px;
	font-size:16px;
	cursor: pointer;
}
.f3_list>div{
	position:relative;
	width:320px;
	height:180px;
	float: left;
	border:1px solid #000;
	background-repeat:no-repeat;
	background-size:320px 180px;
}
.f3_list>div>a {
	position:absolute;
	display:inline-block;
	width:320px;
	height:180px;
	z-index:3;
}
.f3_list div img{
	width:100%;
	height:100%;
}
.view_menu {
	border-bottom: 3px solid #2196f3;
}

.view_sub {
	display: block;
}

.f3_2_hid {
	display: none;
}
.f3_list{
	position:relative;
	width:100%;
	max-width:1280px;
	height:450px;
	padding-top:25px;
	margin:0 auto;
}
.f3_list .all_more, .f3_list .out_more, .f3_list .in_more {
	position:relative;
	width:100%;
	height:40px;
	bottom:0;
	text-align:center;
	line-height:40px;
	border: 1px solid #fff;
	border-radius: 15px;
	cursor: pointer;
	-ms-user-select: none; 
   -moz-user-select: -moz-none;
   -khtml-user-select: none;
   -webkit-user-select: none;
	user-select: none;
}
.all_more:hover, .out_more:hover, .in_more:hover {
	background-color: #f2f2f2;
}
.all_more p, .out_more p, .in_more p {
	font-size: 16px;
}
.f3_list>div>div {
	position: absolute;
	bottom: 0;
	width: 320px;
	padding-left: 20px;
}
.f3_list>div>div p {
	color:#fff;
	text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	-moz-text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	-webkit-text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	word-wrap:break-word;
}

.f3_list>div>div p:last-child {
	font-size:20px;
}

.f3_list>div>div p:first-child {
	font-size:15px;
}
.hid {
	display: none;
}
</style>
</head>

<body>
	<div id="container">
		<jsp:include page="../setting/header.jsp"></jsp:include>

		<div id="f2_img">
			<img id="f2_arr_l" src="images/main/arr_le.png"
				onmouseover="this.src='images/main/arr_le_on.png'"
				onmouseout="this.src='images/main/arr_le.png'">
			<ul>
				<li><a href="#"><img class="main_img"
						src="images/main/advertising/f2_01.jpg"></a></li>
				<li><a href="#"><img class="main_img fade"
						src="images/main/advertising/f2_02.jpg"></a></li>
				<li><a href="#"><img class="main_img fade"
						src="images/main/advertising/f2_03.jpg"></a></li>
			</ul>
			<img id="f2_arr_r" src="images/main/arr_le.png"
				onmouseover="this.src='images/main/arr_le_on.png'"
				onmouseout="this.src='images/main/arr_le.png'">
		</div>

		<div id="f3_pro">
			<div id="f3_border">
				<div id="f3_nav">
					<ul>
						<li class="f3_1_submenu view_menu">전 체</li>
						<li class="f3_1_submenu">아 웃 도 어</li>
						<li class="f3_1_submenu">문 화 / 예 술</li>
						<li class="f3_1_submenu">이 벤 트</li>
					</ul>
				</div>
			</div>

			<div class="f3_list view_sub all_list">
			</div>
			
			<div class="f3_list f3_2_hid out_list">
			</div>
				
			<div class="f3_list f3_2_hid in_list">
			</div>
			
			<div class="f3_list f3_2_hid">
				<h1>현재 진행중인 이벤트가 없습니다.</h1>
			</div>
			
		</div>

		<jsp:include page="../setting/footer.jsp"></jsp:include>

	</div>
</body>
</html>