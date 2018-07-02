<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.passwd.value != frm.passwd2.value) {
			alert("암호가 다릅니다"); 
			frm.passwd2.focus(); return false;
		}
	}
</script></head><body><div class="container">
	<h2 class="text-primary">게시글 삭제</h2>
<form action="${path}/delete" name="frm" onsubmit="return chk()" 
	method="post">
	<input type="hidden" name="passwd" value="${board.passwd}">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<table class="table table-hover">
		<tr><th>암호</th><td><input type="password" name="passwd2" 
			required="required" autofocus="autofocus"></td></tr>
		<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form>
</div>
</body>
</html>