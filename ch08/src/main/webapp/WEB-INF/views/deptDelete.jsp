<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제중...</title>
</head>
<body>
<c:if test="${ result > 0 }">
	<script type="text/javascript">
		alert("삭제되었습니다. ㅋㅋ");
		location.href="deptList.do";
	</script>
</c:if>
<c:if test="${ result == 0 }">
	<script type="text/javascript">
		alert("해당하는 부서의 직원이 있으면 안됩니다.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>