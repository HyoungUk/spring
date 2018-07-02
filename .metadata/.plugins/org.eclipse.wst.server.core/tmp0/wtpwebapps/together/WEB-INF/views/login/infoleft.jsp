<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(function() {
	//클릭관련
	$('#logininfo').click(function() {
		location.href="logininfo.do"
	});
	$('#memberUpdateForm').click(function() {
		location.href="memberUpdateForm.do"
	});
	$('#hostForm').click(function() {
		location.href="hostApplyForm.do"
	});
	$('#menu_sub1').click(function() {
		location.href="myCrePgmForm.do?mb_num=${member.mb_num}"
	});
	$('#menu_sub2').click(function() {
		location.href="myAppPgmForm.do?mb_num=${member.mb_num}"
	});
	$('#memberDeleteForm').click(function() {
		if(confirm("정말 회원탈퇴 하실건가요?")){
			location.href="memberDeleteForm.do";
		}
	});
	//호버관련
	$(".menus").on("mouseover",function(){
		$(".hid").css( "display" ,"block");
		$(".menus").css("background-color", "#4c91cd");
	});
	$(".menus").on("mouseout",function(){
		$(".hid").css( "display","none");
		$(".menus").css("background-color", "#609dd2");
	});
	$('#menu_sub1, #menu_sub2').on("mouseover",function(){
		$(this).css("background-color", "#4c91cd");
	});
	$('#menu_sub1, #menu_sub2').on("mouseout",function(){
		$(this).css("background-color", "#609dd2");
	});
	$(".menu_sub").on("mouseover",function(){
		$(".hid").css( "display" ,"block");
		$(".menus").css("background-color", "#4c91cd");
		$(this).css("background-color", "#4c91cd");
	});
	$(".menu_sub").on("mouseout",function(){
		$(".hid").css( "display","none");
		$(".menus").css("background-color", "#609dd2");
		$(this).css("background-color", "#609dd2");
	});
});
</script>
<style>
#f3_menu{
	position:fixed;
	width:100%;
	max-width:220px;
	height:100%;
	background-color:#609dd2;
	z-index: 2;
}
.menu{
	width:220px;
	height:65px;
	text-align: center;
	cursor: pointer;
}
.menu:hover, .menus:hover{
	background-color: #4c91cd;
}
.menus{
	width:220px;
	height:65px;
	text-align: center;
	cursor: pointer;
}

#menu_sub1, #menu_sub2{
	cursor: pointer;
	height: 37px;
	background-color:#609dd2;
}
#menu_sub1{
	border-bottom: 0px;
}
.menu_sub{
	position: absolute;
	left: 218px;
	width: 150px;
	text-align: center;
}
.hid {
	display: none;
}
.menu, .menus{
	border-top: 0px;
}
#f3_nav h2, #f3_nav h4{
	color:white;
	font-size: 20px;
	margin:0 !important;
	padding:20px 0 !important;
}
#f3_nav h4 {
	font-size: 15px !important;
	padding:10px 0 !important;
	margin:0 !important;
}
</style>
</head>
<body>
	<div id="f3_menu">
			<div id="f3_nav">
				<div class="menu" id="logininfo">
					<h2>회원정보</h2>
				</div>
				
				<div class="menu" id="memberUpdateForm">
					<h2>회원정보수정</h2>
				</div>
				
				<c:if test="${ member.host == 'n'}">
					<div class="menu" id="hostForm"><h2>호스트 신청</h2></div>
				</c:if>
				
				<div class="menu_sub hid">
					<c:if test="${ member.host == 'y'}">
						<div id="menu_sub1"><h4>만든 투게더</h4></div>
					</c:if>
					<div id="menu_sub2"><h4>신청한 투게더</h4></div>
				</div>
				
				<div class="menus">
					<h2>프로그램관리</h2>
				</div>
				
				<div class="menu" id="memberDeleteForm">
					<h2>회원탈퇴</h2>
				</div>
			</div>
	</div>
</body>
</html>