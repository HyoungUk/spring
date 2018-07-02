<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
	<table class="table table-striped">
		<tr><th><h2>구구단 ${num }단</h2></th></tr>
		<tr><td>
			<c:forEach var="i" begin="1" end="9">
				${num } * ${i } = ${num*i}<br>
			</c:forEach>		
		</td></tr>
	</table>
</div>
</body>
</html>