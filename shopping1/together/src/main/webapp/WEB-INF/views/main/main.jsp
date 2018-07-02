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
	$(".f3_1_submenu").on("click",function(){
		$(".f3_1_submenu").removeClass("view_menu");
		$( this ).addClass("view_menu");
            
        var subject_index=$(".f3_1_submenu").index(this);        
        $(".f3_list").addClass("f3_2_hid");
        $(".f3_list").removeClass("view_sub");
        $( ".f3_list:eq("+subject_index+")" ).addClass("view_sub");
        $( ".f3_list:eq("+subject_index+")" ).removeClass("f3_2_hid");
    });
	
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
	
});
</script>
<style>
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
	height: 502px;
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
.f3_list div{
	width:320px;
	height:180px;
	float: left;
	border:1px solid #000;
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
	height:440px;
	padding-top:10px;
	margin:0 auto;
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
            <li><a href="#"><img class="main_img" src="images/main/advertising/f2_01.jpg"></a></li>
            <li><a href="#"><img class="main_img fade" src="images/main/advertising/f2_02.jpg"></a></li>
            <li><a href="#"><img class="main_img fade" src="images/main/advertising/f2_03.jpg"></a></li>
        </ul>
		<img id="f2_arr_r" src="images/main/arr_le.png"
			onmouseover="this.src='images/main/arr_le_on.png'"
			onmouseout="this.src='images/main/arr_le.png'">
    </div>
    
    <div id="f3_pro">
    	<div id="f3_border">
			<div id="f3_nav">
				<ul>
					<li class="f3_1_submenu view_menu">전체</li>
					<li class="f3_1_submenu">아웃도어</li>
					<li class="f3_1_submenu">지식/나눔</li>
				</ul>
			</div>
		</div>

			
			<div class="f3_list view_sub ">
				<c:forEach var="pgmlist" items="${lists}" varStatus="a">
					<div>
						<a href="inquiry.do?num=${pgmlist.num}">
							<img src="images/upload/${pgmlist.wall_paper_name}">
						</a>
					</div>
				</c:forEach>
			</div>
			
			<div class="f3_list f3_2_hid">
				<c:forEach var="pgmlist" items="${outlists}" varStatus="a">
						<div>
							<a href="inquiry.do?num=${pgmlist.num}">
								<img src="images/upload/${pgmlist.wall_paper_name}">
							</a>
						</div>
				</c:forEach>
			</div>
				
				<div class="f3_list f3_2_hid">
					<c:forEach var="pgmlist" items="${inlists}" varStatus="a">
						<div>
							<a href="inquiry.do?num=${pgmlist.num}">
								<img src="images/upload/${pgmlist.wall_paper_name}">
							</a>
						</div>
				</c:forEach>
				</div>
		</div>
		
    <jsp:include page="../setting/footer.jsp"></jsp:include>
    
</div>
</body>
</html>