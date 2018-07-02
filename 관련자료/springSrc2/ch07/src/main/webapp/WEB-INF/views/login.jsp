<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
	<c:if test="${empty id}">
		<script type="text/javascript">
			alert("아이디 또는 패스워드가 잘못 됐습니다");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${not empty id}">
		${id }님 반가워 ~   대박<p>
		<a href="uploadForm.do" class="btn btn-success">파일 업로드</a>
	</c:if>
</body>
</html>