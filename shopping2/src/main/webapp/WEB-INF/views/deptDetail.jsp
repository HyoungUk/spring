<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<table class="table table-striped">
	<caption class="text-primary">부서정보 상세</caption>
	<tr><th>부서코드</th><td>${dept.deptno }</td></tr>
	<tr><th>부서명</th><td>${dept.dname }</td></tr>
	<tr><th>근무지</th><td>${dept.loc }</td></tr>
</table>
<a href="deptList.html" class="btn btn-danger">부서 목록</a>
</div>
</body>
</html>