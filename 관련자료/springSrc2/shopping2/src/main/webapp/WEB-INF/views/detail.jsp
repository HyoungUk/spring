<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<table class="table table-bordered">
	<caption class="text-primary">과일 정보 상세</caption>
	<tr><td rowspan="4"><img alt="" src="img/${item.pictureUrl}"></td>
		<td>아이디</td><td>${item.itemId }</td></tr>
	<tr><td>이름</td><td>${item.itemName }</td></tr>
	<tr><td>가격</td><td>${item.price }</td>
	<tr><td>설명</td><td>${item.description }</td></tr>
</table>
<a href="list.do" class="btn btn-warning">목록보기</a>
</div>
</body>
</html>