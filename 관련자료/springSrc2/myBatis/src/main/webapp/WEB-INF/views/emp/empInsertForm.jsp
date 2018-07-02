<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title><script type="text/javascript">
	$(function() {
		$('#empnoChk').click(function() {
			var empno = $('#empno').val();
			if (!empno) { alert("사번 입력후에 체크하세요");
				$('#empno').focus(); return;
			}
			$.post('empnoChk.do',"empno="+empno, function(data) {
				$('#result').text(data);
			});
		});
	});
</script></head><body>
<div class="container">
	<h2 class="text-primary">직원정보 수정</h2>
<form action="empInsert.do" method="post">
<table class="table table-hover table-bordered">
	<tr><th>사번</th><td><input type="number" name="empno" 
		required="required" autofocus="autofocus" id="empno">
		<button id="empnoChk">중복체크</button><br>
		<span class="err" id="result"></span></td></tr>
	<tr><th>이름</th><td><input type="text" name="ename" 
		required="required" ></td></tr>
	<tr><th>업무</th><td><input type="text" name="job" 
		required="required"></td></tr>
	<tr><th>관리자</th><td><select name="mgr">
	<c:forEach var="e" items="${empList}">
		<option value="${e.empno}">${e.ename}(${e.empno})</option>
	</c:forEach></select></td></tr>
	<tr><th>입사일</th><td><input type="date" name="hiredate" 
		required="required"></td></tr>
	<tr><th>급여</th><td><input type="number" name="sal" 
		required="required"></td></tr>
	<tr><th>comm</th><td><input type="text" name="comm" 
		required="required"></td></tr>
	<tr><th>부서코드</th><td><select name="deptno">
	<c:forEach var="dept" items="${deptList}">
			<option value="${dept.deptno}">${dept.dname}(${dept.deptno})</option>
	</c:forEach></select></td></tr>
	<tr><th colspan="2"> <input type="submit" value="확인"></th></tr>
</table></form>
</div>
</body>
</html>