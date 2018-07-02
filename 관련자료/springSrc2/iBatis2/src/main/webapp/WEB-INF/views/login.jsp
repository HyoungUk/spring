<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result== 1 }">
	<script type="text/javascript">
		alert("로그인 성공");
		location.href="main.do";
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("없는 ID입니다. 웬놈이냐");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("암호 다르네, 꺼져");
		history.go(-1);
	</script>
</c:if>
</body>
</html>