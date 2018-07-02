<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#deptnoChk').click(function() {
			var sendData = "deptno="+$('#deptno').val();
			if ($('#deptno').val()=="") {
				alert("부서코드 입력하고 체크하세요 ");
				frm.deptno.focus(); return false; 	}
			$.post('deptnoChk.do',sendData, function(data) {
				alert(data);	
			});
		});
	});
</script></head><body>
<div class="container">
<form action="deptInsert.do" name="frm">
<h2>부서정보 입력</h2>
<table class="table table-hover">
	<tr><th>부서코드</th><td><input type="number" name="deptno"
		required="required" autofocus="autofocus" id="deptno">
		<input type="button" id="deptnoChk" value="중복체크"></td></tr>
	<tr><th>부서명</th><td><input type="text" name="dname"
		required="required"></td></tr>
	<tr><th>근무지</th><td><input type="text" name="loc" 
		required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form>
</div>
</body>
</html>
