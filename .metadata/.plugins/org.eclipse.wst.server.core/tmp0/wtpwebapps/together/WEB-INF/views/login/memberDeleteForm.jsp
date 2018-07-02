<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function chk() {
		if(frm.password.value != frm.password2.value){
			alert("비밀번호가 다릅니다");
			frm.password2.value="";
			frm.password2.focus();
			return false; 
		}
	}
</script>
<style>
#f3_info {
   width: 350px;
   margin-top: 10%;
}
.input_div {
   margin-top:20px;
}
</style>
</head>
<body>
<div id="container">
    
	<div id="f3">
		<div id="f3_info">
		<form action="memberDelete.do" name="frm" onsubmit="return chk()">
			<input type="hidden" name="password" value="${password}">
			<h2 class="text-primary">회원 탈퇴</h2>
			회원 탈퇴 하시려면 비밀번호를 입력해주세요<br>
			비밀번호 : <input type="password" name="password2" autofocus="autofocus">
			<input type="submit" value="확인">
		</form>
		</div>
	</div>
	
	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>