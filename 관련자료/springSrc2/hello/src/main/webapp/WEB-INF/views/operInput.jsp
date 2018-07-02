<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
	<h2>두수 입력</h2>
<form action="oper.do">
<table class="table table-hover">
	<tr><th>첫번째 수</th><td><input type="number" name="num1" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>두번째 수</th><td><input type="number" name="num2" 
		required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"	></td></tr>
</table>	
</form>
</div>
</body>
</html>