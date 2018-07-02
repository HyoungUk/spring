<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연산</title>
</head>
<body>
<div class="container">
<form action="oper.html">
	<table class="table table-bordered">
		<caption>연산</caption>
		<tr>
			<th>첫번째 수</th>
			<td><input type="number" name="number1" required="required" autofocus="autofocus"></td> 
		</tr>
		<tr>
			<th>두번째 수</th>
			<td><input type="number" name="number2" required="required"></td> 
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="확인"></th>
		</tr>
	</table>
</form>
</div>
</body>
</html>