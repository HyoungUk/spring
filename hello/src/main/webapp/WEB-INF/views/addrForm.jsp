<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름과 주소</title>
</head>
<body>
<div class="container">
<form action="addr.do">
	<table class="table table-bordered">
		<caption>이름과 주소</caption>
		<tr>
			<th>이름<span class="glyphicon glyphicon-user"></span>
			</th>
			<td><input type="text" name="name" required="required" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>주소<span class="glyphicon glyphicon-bell"></span>
			<td><input type="text" name="addr" required="required"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="확인"></td>
		</tr>
	</table>
</form>
</div>

</body>
</html>