<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
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
			location.href="logininfo.do"
		});
		$('#menu_sub1').click(function() {
			location.href="logininfo.do"
		});
		$('#menu_sub2').click(function() {
			location.href="logininfo.do"
		});
		$('#memberDeleteForm').click(function() {
			if(confirm("정말 회원탈퇴 하실건가요?")){
				location.href="memberDeleteForm.do";
			}
		});
		//호버관련
		$(".menus").on("mouseover",function(){
			$(".hid").css( "display" ,"block");
			$(".menus").css( "background-color" ,"blue");
		});
		$(".menus").on("mouseout",function(){
			$(".hid").css( "display","none");
			$(".menus").css( "background-color" ,"white");
		});
		$(".menu_sub").on("mouseover",function(){
			$(".hid").css( "display" ,"block");
			$(".menus").css( "background-color" ,"blue");
		});
		$(".menu_sub").on("mouseout",function(){
			$(".hid").css( "display","none");
			$(".menus").css( "background-color" ,"white");
		});
	});
	
	function chk() {
		if(frm.password_Origin.value != frm.password_Origin2.value){
			alert("현재 비밀번호가 다릅니다");
			frm.password_Origin2.value="";
			frm.password_Origin2.focus();
			return false; 
		}else if(frm.password.value != frm.password2.value){
			alert("변경할 비밀번호가 다릅니다");
			frm.password.value="";
			frm.password2.value="";
			frm.password.focus();
			return false; 
		}else if(frm.password_Origin.value == frm.password.value){
			alert("현재와 변경할 비밀번호가 같습니다");
			frm.password.value="";
			frm.password2.value="";
			frm.password.focus();
			return false; 
		}
	}
</script>
<style>
#f3 {
	position:relative;
	width:100%;
	max-width:600px;
}
#f3_info{
	position:relative;
	width:100%;
}
h2{
	margin: 0px !important;
	padding: 20px 0px 20px 0px !important;
}
th {
	width:150px !important;
	padding-left: 30px !important;
	padding-top: 13px !important;
}
td {
	padding-left: 100px !important;
	height: 52px;
}
#f3_menu{
	position:fixed;
	width:100%;
	max-width:220px;
	height:100%
}
.menu{
	text-align: center;
	cursor: pointer;
}
.menus{
	text-align: center;
	cursor: default;
}
.menu:hover, .menus:hover{
	background-color: blue;
}
#menu_sub1:hover, #menu_sub2:hover{
	background-color: aqua;
}
#menu_sub1, #menu_sub2{
	cursor: pointer;
	height: 37px;
	border: 1px solid #000;
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
	border: 1px solid #000;
	border-top: 0px;
}
</style>
</head>
<body>
<div id="container">
    <jsp:include page="../setting/header.jsp"></jsp:include>
    
	<div id="f3_menu">
		<div class="menu" id="logininfo"><h2 class="text-primary">회원정보</h2></div>
		<div class="menu" id="memberUpdateForm"><h2 class="text-primary">회원정보수정</h2></div>
		<c:if test="${ member.host == 'n'}">
			<div class="menu" id="hostForm"><h2 class="text-primary">호스트 신청</h2></div>
		</c:if>
			<div class="menu_sub hid">
				<c:if test="${ member.host == 'y'}">
					<div id="menu_sub1"><h4 class="text-primary">만든 투게더</h4></div>
				</c:if>
				<div id="menu_sub2"><h4 class="text-primary">신청한 투게더</h4></div>
			</div>
		<div class="menus"><h2 class="text-primary">프로그램관리</h2></div>
		<div class="menu" id="memberDeleteForm"><h2 class="text-primary">회원탈퇴</h2></div>
	</div>
	
	<div id="f3">
		<div id="f3_info">
		<form action="memberUpdate.do" name="frm" onsubmit="return chk()">
			<input type="hidden" name=id value="${member.id}">
			<input type="hidden" name=password_Origin value="${member.password}">
			<h2 class="text-primary">회원 수정</h2>
			<table class="table table-bordered">
				<tr>
					<th>아이디</th>
					<td>${member.id}</td>
				</tr>
				<tr>
					<th>현재비밀번호</th>
					<td><input type="password" name="password_Origin2" autofocus="autofocus" required="required"></td>
				</tr>
				<tr>
					<th>변경할비밀번호</th>
					<td><input type="password" name="password" required="required"></td>
				</tr>
				<tr>
					<th>변경할비밀번호확인</th>
					<td><input type="password" name="password2" required="required"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name="nick_name" value="${member.nick_name}" required="required"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${member.name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" value="${member.tel}" required="required"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr" value="${member.addr}" required="required"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>${member.gender}</td>
				</tr>
				<tr>
					<th>생일</th>
					<td>${member.birth}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" value="${member.email}" required="required"></td>
				</tr>
				<tr>
					<th id="send_btn" colspan="2">
						<input class="btn btn-info" type="submit" value="확인">
					</th>
				</tr>
			</table>
		</form>
		</div>
	</div>

	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>