<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록중...</title>
</head>
<body>
<c:if test="${ result > 0 }">
	<script type="text/javascript">
		alert("입력 성공");
		location.href="list.do?pageNum=${pageNum}";
	</script>
</c:if>
<c:if test="${ result == 0 }">
	<script type="text/javascript">
		alert("놀구있넼ㅋ");
		history.go(-1);
	</script>
</c:if>
</body>
</html>