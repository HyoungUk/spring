<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<h1 class="text-primary">확인 화면</h1>
<form method="post">
<table class="table table-hover">
	<tr><th>이름</th><td>${editCustomer.name}</td></tr>
	<tr><th>주소</th><td>${editCustomer.address}</td></tr>
	<tr><th>이메일 주소</th><td>${editCustomer.emailAddress}</td></tr>
</table>
<button type="submit" name="_event_confirmed">갱신</button>
<button type="submit" name="_event_revise">재입력</button>
</form></div>
</body>
</html>