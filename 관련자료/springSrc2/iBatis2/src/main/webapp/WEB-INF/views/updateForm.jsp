<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.password.focus();  return false;
		}
	}
</script></head><body><div class="container">
	<h2 class="text-primary">회원정보 상세</h2>
<form action="update.do" name="frm" onsubmit="return chk()"
	method="post">
	<input type="hidden" name="id" value="${member.id }">
<table class="table table-striped">
	<tr><th>아이디</th><td>${member.id }</td></tr>
	<tr><th>암호</th><td><input type="password" name="password" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>암호</th><td><input type="password" name="password2" 
		required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required" value="${member.name}"></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" 
		required="required" value="${member.email}"></td></tr>
	<tr><th>등록일</th><td>${member.regdate }</td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form>
<a href="main.do" class="btn btn-info">메인</a>
</div>
</body>
</html>