<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#dispEmp').load('empList.do?deptno=${emp.deptno}');
	});
</script></head><body>
<div class="container">
	<h2 class="text-primary">직원 상세정보</h2>
<table class="table table-hover">
	<tr><th>사번</th><td>${emp.empno}</td></tr>
	<tr><th>이름</th><td>${emp.ename}</td></tr>
	<tr><th>업무</th><td>${emp.job}</td></tr>
	<tr><th>관리자</th><td>${emp.mgr}</td></tr>
	<tr><th>입사일</th><td>${emp.hiredate}</td></tr>
	<tr><th>급여</th><td>${emp.sal}</td></tr>
	<tr><th>comm</th><td>${emp.comm}</td></tr>
	<tr><th>부서코드</th><td>${emp.deptno}</td></tr>
</table>
<a href="empList.do?deptno=${emp.deptno}"
	class="btn btn-default">직원목록</a>
<a class="btn btn-warning" href="empUpdateForm.do?empno=${emp.empno}">수정</a>
<a class="btn btn-danger" href="empDelete.do?empno=${emp.empno}">삭제</a>
</div>
<div id="dispEmp"></div>
</body>
</html>



