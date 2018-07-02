<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
	<h2 class="text-primary">회원정보 상세</h2>
<table class="table table-striped">
	<tr><th>아이디</th><td>${member.id }</td></tr>
	<tr><th>암호</th><td>${member.password }</td></tr>
	<tr><th>이름</th><td>${member.name }</td></tr>
	<tr><th>이메일</th><td>${member.email }</td></tr>
	<tr><th>등록일</th><td>${member.regdate }</td></tr>
</table>
<a href="main.do" class="btn btn-info">메인</a>
</div>
</body>
</html>