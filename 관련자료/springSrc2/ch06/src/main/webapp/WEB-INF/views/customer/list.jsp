<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
<h2 class="text-primary">고객 목록</h2>
<table class="table table-hover">
	<tr><th>아이디</th><th>이름</th><th>주소</th><th>이메일</th>
		<th>상세</th><th>편집</th></tr>
<c:forEach var="ct" items="${customers }">
	<tr><td>${ct.id }</td><td>${ct.name }</td>
		<td>${ct.address }</td><td>${ct.emailAddress}</td>
		<td><%-- <c:url var="url1" value="/customer/${ct.id}"/>
			<a href="${url1}">상세</a> --%>
			<a href="${path}/customer/${ct.id}">상세</a></td>
		<td><c:url var="url2" value="/customer/${ct.id}/edit"/>
			<a href="${url2}">편집</a></td></tr>
</c:forEach>
</table>
</div>
</body>
</html>