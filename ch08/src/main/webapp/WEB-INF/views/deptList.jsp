<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
	<h2 class="text-primary">부서 목록</h2>
<table class="table striped">
	<tr><th>부서코드</th><th>부서명</th><th>근무지</th>
		<th>수정</th><th>삭제</th></tr>
<c:if test="${empty list}">
	<tr><th colspan="5">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="dept" items="${list}">
		<tr><td>${dept.deptno}</td>
			<td><a class="btn btn-sm btn-success"
				href="empList.do?deptno=${dept.deptno}">${dept.dname}</a></td>
			<td>${dept.loc }</td>
			<td><a class="btn btn-sm btn-warning"
				href="updateForm.do?deptno=${dept.deptno}">수정</a></td>
			<td><a class="btn btn-sm btn-danger" 
				href="delete.do?deptno=${dept.deptno}">삭제</a></td></tr>
	</c:forEach>
</c:if>
</table>
<a class="btn btn-info" href="deptInsertForm.do">부서정보 입력</a>
<a class="btn btn-success" href="empAllList.do">전직원 목록</a>
</div>
</body>
</html>



