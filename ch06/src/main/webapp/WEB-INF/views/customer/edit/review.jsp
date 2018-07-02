<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review</title>
</head>
<body>
<div class="container">
	<h2 class="text-primary">확인 화면</h2>
	<form action="" method="post">
	<table class="table table-bordered">
		<tr>
			<th>이름</th><td>${ editCustomer.name }</td>
		</tr>
		<tr>
			<th>주소</th><td>${ editCustomer.address }</td>
		</tr>
		<tr>
			<th>이메일</th><td>${ editCustomer.email }</td>
		</tr>
	</table>
	<button type="submit" name="_event_confirm">확인</button>
	<button type="submit" name="_event_revice">취소</button>
	</form>
</div>
</body>
</html>