<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>detail</title>
</head>
<body>
<div class="container">
<h2 class="text-primary">고객 상세정보</h2>
<table class="table table-striped">
<tr>
	<th>아이디</th><td>${ ct.id }</td>
</tr>
<tr>
	<th>이름</th><td>${ ct.name }</td>
</tr>
<tr>
	<th>주소</th><td>${ ct.address }</td>
</tr>
<tr>
	<th>이메일</th><td>${ ct.email }</td>
</tr>
<tr><th colspan="2"><a class="btn btn-success" href="${ path }/customer">리스트 보기</a></th></tr>
</table>
</div>
</body>
</html>