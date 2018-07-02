<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
<style>
#f5 {
	position:absolute;
	bottom:0;
	width:100%;
	height:150px;
	border:1px solid #999;
	background-color:#eee;
	z-index: 3;
}
#f5_addr {
	position:absolute;
	width:50%;
	right:350px;
	padding-top:20px;
}
#f5_addr p {
	margin-bottom:2px;
}
#f5_copy {
	position:absolute;
	width:50%;
	right:0px;
	padding-top:75px;
}
</style>
</head>
<body>
<div id="f5">
		<div id="f5_addr">
			<p>주소 : 서울특별시 xx구 xx동 xxx빌딩 x층</p>
			<p>이메일 : nugunga0642@naver.com</p>
			<p>대표전화 : 010-20xx-xxxx</p>
			<p>고객센터 : 02-24x-xxxx</p>
			<p>업무시간 : 9:00 ~ 18:00</p>
		</div>
		<div id="f5_copy">
			<p>Copyright 2018. all rights reserved</p>
			<p>Open Source Software License</p>
		</div>
    </div>
</body>
</html>