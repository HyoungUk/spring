<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<style>
#f1 {
	position:relative;
	width:100%;
	height:64px;
	margin:0;
	top:0;
	border:0;
}
#f1 a {
	color:#fff;
	font-weight:bold;
}
#f1_fixed {
	position:fixed;
	width:100%;
	height:64px;
	background-color:#505050;
	z-index:4;
}
#f1_nav {
	position:relative;
	width:100%;
	max-width:960px;
	height:64px;
}
#f1_main_menu {
	position:relative;
	width:100%;
	heigth:64px;
	left:0;
	margin:0;
} 
#f1_main_menu li {
	margin-top:8px;
	margin-left:60px;
	float:left;
	line-height:45px;
	float:left;
}
#f1_main_menu li:first-child {
	margin-top:6px;
	margin-left:0;
}
#f1_main_menu li a {
	font-size:16px;
}

#f1_member_menu {
	position:absolute;
	width:220px;
	height:60px;
	right:0;
}
#f1_member_menu li{
	margin-top:8px;
	margin-right:50px;
	line-height: 45px;
	float:left;
}
#f1_member_menu li a {
	font-size:16px;
}
#login_btn {
	cursor:pointer;
}
#f1_member_info {
	position:absolute;
	width:200px;
	height:50px;
	right:20px;
}

#f1_member_info li {
	width:50%;
	float:left;
}

.modal-content {
	width:400px;
	height:200px;
}
</style>
</head>
<body>
<div id="f1">
    	<div id="f1_fixed">
    		<div id="f1_nav">
	            <ul id="f1_main_menu">
	                <li><a href="main.do"><img src="images/main_logo.png" alt="로고" width="50px"></a></li>
	                <li><a href="introduce.do">투게더소개</a></li>
	                <li><a href="noticeBoardList.do">공지사항</a></li>
	                <li><a href="freeBoardList.do">자유게시판</a></li>
	                <li><a href="pgmCreForm.do">투게더만들기</a></li>
	            </ul>
	            
	            <ul id="f1_member_menu">
	        	<c:if test="${result==0}">
	           	 	<li><a href="loginForm.do">로그인</a></li>
	            	<li><a href="joinForm.do">회원가입</a></li>
	            </c:if>
	            <c:if test="${result>0}">
	            	<li><a href="logininfo.do">내정보</a></li>
	            	<li><a href="logout.do">로그아웃</a></li>
	            </c:if>
	      	  </ul>
        	</div>
            
		</div>        
    </div>
</body>
</html>