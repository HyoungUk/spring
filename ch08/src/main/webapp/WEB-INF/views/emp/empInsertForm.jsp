<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#empChk').click(function() {
			var empno = frm.empno.value;
			if (!empno) {	alert("사번 입력 후에 체크하시오");
				frm.empno.focuse();	return false;  	}
			$.post('empChk.do', 'empno='+empno, function(data) {
				alert(data);
			});
		});
	});
</script></head><body><div class="container">
	<h2>직원정보 입력</h2>
<form action="empInsert.do" method="post" name="frm">
<table class="table table-bordered">
	<tr><th>사번</th><td><input type="number" name="empno" 
		required="required" autofocus="autofocus">
		<input type="button" value="중복" id="empChk"></td></tr>
	<tr><th>이름</th><td><input type="text" name="ename" 
		required="required"></td></tr>
	<tr><th>업무</th><td><input type="text" name="job" 
		required="required"></td></tr>
	<tr><th>관리자</th><td><select name="mgr">
		<c:forEach var="emp" items="${empList}">
			<option value="${emp.empno}">
				${emp.ename}(${emp.empno})</option>
		</c:forEach>		
	</select></td></tr>
	<tr><th>입사일</th><td><input type="date" name="hiredate"
		required="required"></td></tr>
	<tr><th>급여</th><td><input type="number" name="sal" 
		required="required"></td></tr>
	<tr><th>Comm</th><td><input type="number" name="comm"
		required="required"></td></tr>
	<tr><th>부서코드</th><td><select name="deptno">
		<c:forEach var="dept" items="${deptList}">
			<option value="${dept.deptno}">
			${dept.dname}(${dept.deptno})</option>
		</c:forEach>
	</select></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form> 
</div>
</body>
</html>