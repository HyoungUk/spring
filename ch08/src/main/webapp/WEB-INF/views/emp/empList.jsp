<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#disp').load('deptList.do');
	});
</script></head><body>
<div class="container">
	<h2 class="text-primary">직원 목록</h2>
<table class="table table-striped">
	<tr><th>사번</th><th>이름</th><th>업무</th><th>급여</th>
		<th>부서코드</th></tr>
<c:if test="${empty list}">
	<tr><th colspan="5">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="emp" items="${list}">
		<tr><td>${emp.empno}</td>
			<td><a class="btn btn-sm btn-success"
				href="empView.do?empno=${emp.empno}">${emp.ename}</a></td>
			<td>${emp.job}</td><td>${emp.sal}</td>
			<td>${emp.deptno}</td></tr>
	</c:forEach>
</c:if>
</table>
	<a class="btn btn-info" href="deptList.do">목록</a>
	<a class="btn btn-default" href="empInsertForm.do">직원입력</a>
</div>
<div id="disp"></div>
</body>
</html>

