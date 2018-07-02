<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body><div class="container">
	<h2>직원정보 입력</h2>
<form action="empUpdate.do" method="post">
	<input type="hidden" name="empno" value="${emp.empno}">
<table class="table table-bordered">
	<tr><th>사번</th><td>${emp.empno}</td></tr>
	<tr><th>이름</th><td><input type="text" name="ename" 
		required="required" autofocus="autofocus" 
		value="${emp.ename }"></td></tr>
	<tr><th>업무</th><td><input type="text" name="job" 
		required="required" value="${emp.job }"></td></tr>
	<tr><th>관리자</th><td><select name="mgr">
		<c:forEach var="e" items="${empList}">
			<c:if test="${e.empno==emp.mgr}">
				<option value="${e.empno}" selected="selected">
					${e.ename}(${e.empno})</option>
			</c:if>
			<c:if test="${e.empno!=emp.mgr}">
				<option value="${e.empno}">
					${e.ename}(${e.empno})</option>
			</c:if>		</c:forEach>		
	</select></td></tr>
	<tr><th>입사일</th><td><input type="date" name="hiredate"
		required="required" value="${emp.hiredate }"></td></tr>
	<tr><th>급여</th><td><input type="number" name="sal" 
		required="required" value="${emp.sal }"></td></tr>
	<tr><th>Comm</th><td><input type="number" name="comm"
		required="required" value="${emp.comm }"></td></tr>
	<tr><th>부서코드</th><td><select name="deptno">
		<c:forEach var="dept" items="${deptList}">
			<c:if test="${dept.deptno==emp.deptno }">
				<option value="${dept.deptno}" selected="selected">
				${dept.dname}(${dept.deptno})</option>
			</c:if>
			<c:if test="${dept.deptno!=emp.deptno }">
				<option value="${dept.deptno}">
				${dept.dname}(${dept.deptno})</option>
			</c:if>
		</c:forEach>
	</select></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form> 
</div>
</body>
</html>