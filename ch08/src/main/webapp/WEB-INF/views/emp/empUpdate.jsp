<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("대박 수정됐네");
		location.href="empList.do?deptno=${deptno}";
	</script>	
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("헐 ~ 안되네");
		history.go(-1);
	</script>	
</c:if>
</body>
</html>