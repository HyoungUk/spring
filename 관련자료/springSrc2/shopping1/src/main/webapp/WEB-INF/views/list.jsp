<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<table class="table table-bordered">
	<caption class="text-primary">과일 목록</caption>
	<tr><th>아이디</th><th>이름</th><th>가격</th><th>설 명</th></tr>
<c:forEach var="item" items="${list}">
	<tr><td>${item.itemId }</td><td>${item.itemName }</td>
		<td>${item.price }</td><td>${item.description }</td></tr>
</c:forEach>
</table>
</div>
</body>
</html>