<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<form action="addr.html">
	<h2>이름과 주소</h2>
<table class="table table-bordered">
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>주소</th><td><input type="text" name="addr" 
		required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form>
</div>
</body>
</html>