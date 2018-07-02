<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
	<h3 class="text-primary">고객 상세정보</h3>
<table class="table table-striped">
	<tr><th>아이디</th><td>${customer.id }</td></tr>
	<tr><th>이름</th><td>${customer.name }</td></tr>
	<tr><th>주소</th><td>${customer.address }</td></tr>
	<tr><th>이메일</th><td>${customer.emailAddress }</td></tr>
	<tr><th colspan="2"><c:url var="url" value="/customer"/>
			<a href="${url}">목록</a></th></tr>
</table>
</div>
</body>
</html>