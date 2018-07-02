<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>호스트신청</title>
</head>
<body>
<div id="container">
    <div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>
	<form action="hostApply.do" method="post">
		<ul>
			<li>호스트명<input type="text" name="host_name"></li>
			<li id="send_btn"><input type="button" value="취소"> <input
				type="submit" value="확인"></li>
		</ul>
	</form>
    <div id="f5">
		<jsp:include page="../setting/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>