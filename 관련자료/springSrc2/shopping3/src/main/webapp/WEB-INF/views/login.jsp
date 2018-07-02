<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<form:form method="post" action="login.do" modelAttribute="user">
	<spring:hasBindErrors name="user">
		<c:forEach var="err" items="${errors.globalErrors }">
			<span class="err">
				<spring:message code="${err.code}" />
			</span>
		</c:forEach>
	</spring:hasBindErrors>
<table class="table table-hover">
	<caption class="text-primary">로그인</caption>
	<tr><th><span class="glyphicon glyphicon-user"></span></th>
		<td><form:input path="userId"/>
			<form:errors path="userId" cssClass="err"/></td></tr>
	<tr><th><span class="glyphicon glyphicon-lock"></span></th>
		<td><form:input path="password"/>
			<form:errors path="password" cssClass="err"/></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>	
</table></form:form>
</div>
</body>
</html>