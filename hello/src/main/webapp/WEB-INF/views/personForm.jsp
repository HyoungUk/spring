<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보</title>
</head>
<body>
<form action="person.html">
<table class="table table-bordered">
	<caption>개인정보</caption>
	<tr>
		<th><span class="glyphicon glyphicon-user"></span> 이름</th>
		<td><input type="text" name="name" required="required" autofocus="autofocus"></td>
	</tr>
	<tr>
		<th><span class="glyphicon glyphicon-phone-alt"></span> 전화번호</th>
		<td><input type="tel" name="tel" required="required"></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="number" name="age" required="required"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="addr" required="required"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="확인"></th>
	</tr>
</table>
</form>
</body>
</html>