<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<h2>로그인</h2>
<form action="login2.do" method="post">
<table class="table table-hover">
	<tr><th><span class="glyphicon glyphicon-user"></span></th>
		<td><input type="text" name="userId" required="required"
			autofocus="autofocus"></td></tr>
	<tr><th><span class="glyphicon glyphicon-lock"></span></th>
		<td><input type="password" name="password" 
			required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</div>
</body>
</html>