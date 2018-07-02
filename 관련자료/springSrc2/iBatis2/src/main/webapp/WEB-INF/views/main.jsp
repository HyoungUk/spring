<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
	<h2 class="text-primary">${member.name}님 환영합니다</h2>
	<table class="table table-hover">
		<tr><td><a href="detail.do" 
			class="btn btn-success">회원정보 보기</a></td></tr>
		<tr><td><a href="updateForm.do" 
			class="btn btn-warning">회원정보 수정</a></td></tr>
		<tr><td><a href="delete.do" 
			class="btn btn-danger">회원탈퇴</a></td></tr>
		<tr><td><a href="logout.do" 
			class="btn btn-info">로그 아웃</a></td></tr>
	</table>
</div>

</body>
</html>