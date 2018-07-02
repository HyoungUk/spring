<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<table class="table table-hover">
	<caption class="text-primary">부서 목록</caption>
	<tr><th>부서코드</th><th>부서명</th><th>근무지 </th></tr>
<c:forEach var="dept" items="${deptList }">
	<tr><td>${dept.deptno }</td>
		<td>${dept.dname }</td>
		<td>${dept.loc }</td></tr>
</c:forEach>
</table>
</div>
</body>
</html>