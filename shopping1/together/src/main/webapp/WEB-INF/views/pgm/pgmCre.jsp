<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${check > 0}">
	<script type="text/javascript">
	alert("프로그램이 등록되었습니다.");
	location.href="main.do";
	</script>
</c:if>

<c:if test="${check == 0}">
	<script type="text/javascript">
	alert("실패했습니다. 처음부터 다시 시도해주십시오.");
	history.go(-1);
	</script>
</c:if>
</body>
</html>