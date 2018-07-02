<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>enter</title>
</head>
<body>
<div class="container">
	<h2>고객정보 수정</h2>
	<form:form modelAttribute="editCustomer">
	<table class="table table-hover">
		<tr>
			<th>이름</th>
			<th>
				<form:input path="name" />
				<form:errors path="name" cssClass="err" />
			</th>
		</tr>
		
		<tr>
			<th>주소</th>
			<th>
				<form:input path="address" />
				<form:errors path="address" cssClass="err" />
			</th>
		</tr>
		
		<tr>
			<th>이메일</th>
			<th>
				<form:input path="email" />
				<form:errors path="email" cssClass="err" />
			</th>
		</tr>
		
		<tr>
			<th colspan="2">
				<button type="submit" name="_event_process" value="process">다음</button>
			</th>
		</tr>
	</table>
	</form:form>
</div>
</body>
</html>