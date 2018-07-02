<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<table class="table table-hover">
	<caption class="text-primary">부서 목록</caption>
	<tr><th>부서코드</th><th>부서명</th><th>근무지</th>
		<th>수정</th><th>삭제</th></tr>
<c:if test="${empty list }">
	<tr><th colspan="5">데이터가 없습니다</th></tr>
</c:if>	
<c:if test="${not empty list }">
  <c:forEach var="dept" items="${list}">
	<tr><td>${dept.deptno}</td>
		<td><a href="empList.do?deptno=${dept.deptno}" 
			class="btn btn-sm btn-success">${dept.dname}</a></td>
		<td>${dept.loc}</td>
		<td><a href="deptUpdateForm.do?deptno=${dept.deptno}" 
			class="btn btn-sm btn-warning">수정</a></td>
		<td><a href="deptDelete.do?deptno=${dept.deptno}" 
			class="btn btn-sm btn-danger">삭제</a></td>
  </c:forEach>
</c:if></table>
<a href="deptInsertForm.do" class="btn btn-info">부서정보 입력</a>
<a href="empAll.do" class="btn btn-success">전직원정보</a>
</div>
</body>
</html>