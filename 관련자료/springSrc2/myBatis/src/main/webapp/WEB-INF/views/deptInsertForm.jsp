<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#deptnoChk').click(function() {
			var deptno = $('#deptno').val();
			if (!deptno) {	alert("부서코드를 입력후에 체크하시오");
				$('#deptno').focus(); return;
			}
			$.post('deptChk.do',"deptno="+deptno, function(data) {
				$('#disp').text(data);
			});
		});
	});
</script></head><body><div class="container">
	<h2 class="text-primary">부서정보 입력</h2>
<form action="deptInsert.do" method="post">
<table class="table table-hover">
	<tr><th>부서코드</th><td><input type="number" name="deptno"
	 	required="required" autofocus="autofocus" id="deptno">
	 	<input type="button" value="중복체크" id="deptnoChk"><br>
	 	<span id="disp" class="err"></span></td></tr>
	<tr><th>부서명</th><td><input type="text" name="dname" 
		required="required" ></td></tr>
	<tr><th>근무지</th><td><input type="text" name="loc" 
		required="required" ></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</div>
</body>
</html>