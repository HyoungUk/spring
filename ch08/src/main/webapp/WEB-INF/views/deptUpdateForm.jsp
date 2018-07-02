<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부서정보 수정</title>
</head>
<body>
<div class="container">
<form action="deptUpdate.do" name="frm">
		<h2>부서정보 수정</h2>
			<input type="hidden" name="deptno" value="${ dept.deptno }">
		<table class="table table-hover">
			<tr>
				<th>부서코드</th>
				<td>${ dept.deptno }</td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dname" required="required" autofocus="autofocus" value="${ dept.dname }"></td>
			</tr>
			<tr>
				<th>근무지</th>
				<td><input type="text" name="loc" required="required" value="${ dept.loc }"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="확인"></th>
			</tr>
		</table>
	</form>
</div>
</body>
</html>