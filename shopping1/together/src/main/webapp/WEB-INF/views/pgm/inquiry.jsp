<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<style>
#container {
	background-color: #eeeeee;
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
	/*                                                         임시 높이                                                  */
	height: 800px;
	/*                                                         임시 높이                                                  */
	border:0;
}
#f3_border {
	wdith:100%;
	background-color:#dadada;
	border-bottom: 2px solid #e6e6e6;
}
#f3_nav {
	position:relative;
	width:100%;
	height:48px;
	max-width:1200px;
}
#f3_nav ul {
	margin:0;
	height:48px;
}
#f3_nav li {
	text-align:center;
	float:left;
	width:17%;
	line-height: 47px;
	font-size:16px;
	cursor: pointer;
	color:#727272;
}

.view_menu {
	color:#2196f3;
	border-bottom: 3px solid #2196f3;
	background-color: #fff;
}

.view_sub {
	display: inline;
}

.f3_2_hid {
	display: none;
}
.f3_list_wrap{
	position:relative;
	width:100%;
	max-width:1200px;
	height:440px;
	padding-top:10px;
	margin:0 auto;
}
.f3_list{
	position:relative;
	float:left;
	width:65%;
	height:440px;
	margin:0;
	background-color: #fff;
	border:1px solid #fff;
	border-radius: 1%;
}
.f3_list_div{
	position: relative;
	margin:0 20px;
}

.apply_info_div {
	position:relative;
	float:left;
	width:34%;
	min-height:300px;
	margin:0;
	margin-left:10px;
	padding:12px;
	background-color: #fff;
	border:1px solid #fff;
	border-radius: 1%;
}

#info_title{
	position:relative;
}

.sub_tit{
	position:relative;
	width:360px;
	margin:20px 0 2px;
}

#name_margin {
	position:relative;
	margin-bottom: 49px;
}

.p_name{
	display:inline-block;
	width:250px;
	font-size:18px;
}

.price{
	height: 22px;
	position: absolute;
	right: 30px;
	bottom: 0;
	color:#2196f3;
}

#info_playce{
	position:relative;
	width:80%;
}

p span{
	margin-left: 3px;
}

.play_day{
	height: 22px;
	margin-bottom: 10px;
}
.day_select{
	display: inline-block;
	width: 285px;
	height: 25px;
}
option {
	font-size: 16px;
}

.playce{
	height: 22px;
}

.max_mem{
	height: 22px;
}

.limit_day{
	height: 22px;
}

#info_apply{
	position:relative !important;
	width: 100% !important;
	height: 40px !important;
	margin-top: 20px;
	margin-bottom: 20px;
}

#apply_btn{
	width: 100% !important;
	height: 40px !important;
	background-color:#ff5722 !important;
	color:#fff;
}


/* 본문 내용 */

h4{
	margin-top: 20px !important;
}
#host_logo_div {
	position:relative;
	width: 100px;
	left: 0;
}
.host_logo {
	display:block;
	width: 80px;
	margin:0;
}
#host_info span {
	width:80px;
	text-align: center;
}
</style>
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
</head>
<body>
<div id="container">
	<jsp:include page="../setting/header.jsp"></jsp:include>
	
	<div id="f2_img">
        <ul>
            <li><img class="main_img" src="images/upload/${pgmInfo.wall_paper_name}"></li>
        </ul>
    </div>
    
    <div id="f3_pro">
    	<div id="f3_border">
			<div id="f3_nav">
				<ul>
					<li class="f3_1_submenu view_menu">상품정보</li>
					<li class="f3_1_submenu">Q&A</li>
					<li class="f3_1_submenu">후기</li>
				</ul>
			</div>
		</div>


			<div class="f3_list_wrap">
				<div class="f3_list view_sub">
					<div class="f3_list_div">
						<h4>호스트 명 = ${host.host_name}</h4>
						<div id="host_info">
							<div id="host_logo_div">
								<img class="host_logo" src="images/main_logo.png" alt="호스트로고">
							</div>
							<div>
								<p>프로그램 소개 = ${pgmInfo.sidename} </p>
							</div>
						</div>

						<div>
							<p>프로그램 상세설명 = ${pgmInfo.content}</p>
						</div>
					</div>
				</div>

				<div class="f3_list f3_2_hid">
					호스트번호
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아2</p>
				</div>
				<div class="f3_list f3_2_hid">
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아</p>
					<p>아아아아3</p>
				</div>
				
				<div class="apply_info_div">
					<!-- (프로그램번호) -->
					<div id="info_title">
						<p class="sub_tit">${pgmInfo.sidename}</p>
						<div id="name_margin">
							<span class="p_name">프로그램이름 = ${pgmInfo.name}</span>
							<span class="price">${pgmInfo.price}원</span>
						</div>
					</div>
					<div id="info_playce">
						<div class="play_day">
							<i class="glyphicon glyphicon-time" aria-hidden="true"></i>
								${pgmInfo.start_date}에서 ~ ${pgmInfo.end_date}까지
						</div>

						<p>
							<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><span
								class="playce">${pgmInfo.place}</span>
						</p>
						<p>
							<i class="glyphicon glyphicon-user" aria-hidden="true"></i><span
								class="max_mem">최대 ${pgmInfo.maximum}명까지</span>
						</p>
						<p>
							<i class="glyphicon glyphicon-hourglass" aria-hidden="true"></i><span
								class="limit_day">${pgmInfo.period_start} ~ ${pgmInfo.period_end}일 까지 신청가능</span>
						</p>
					</div>
					<div id="info_apply">
						<a href="pgmApplyForm.do?num=${pgmInfo.num}">
							<button id="apply_btn" class="btn btn-denger">신청하기!</button>
						</a>
					</div>
				</div>
			</div>
		</div>
    
    
	
	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>