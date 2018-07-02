<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<div class="container">
<h2 class="text-primary">로그인</h2>
<form action="login.do">
<table class="table table-hover">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" required="required" autofocus="autofocus"></td>
	</tr>
	<tr>
		<th>암호</th>
		<td><input type="password" name="pass" required="required"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="확인"></th>
	</tr>
</table>
</form>
</div>
</body>
</html>