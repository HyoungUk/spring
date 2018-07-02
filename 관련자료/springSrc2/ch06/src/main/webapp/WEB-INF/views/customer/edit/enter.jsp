<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
<h2 class="text-primary">고객내용 변경</h2>
<form:form modelAttribute="editCustomer">
<table class="table table-striped">
	<tr><th>이름</th><td><form:input path="name"/>
		<form:errors path="name" cssClass="err"/></td></tr>
	<tr><th>주소</th><td><form:input path="address"/>
		<form:errors path="address" cssClass="err"/></td></tr>
	<tr><th>이메일</th><td><form:input path="emailAddress"/>
		<form:errors path="emailAddress" cssClass="err"/></td></tr>
	<tr><th colspan="2"><button type="submit" 
		name="_event_proceed" value="process">다음</button></th></tr>
</table>
</form:form>
</div>
</body>
</html>