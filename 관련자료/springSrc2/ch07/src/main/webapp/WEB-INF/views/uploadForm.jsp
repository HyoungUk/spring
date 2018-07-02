<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<form action="upload.do" method="post"
		enctype="multipart/form-data">
	<table class="table table-bordered">
		<tr><th>파일</th><td><input type="file" name="file" 
			required="required" autofocus="autofocus"></td></tr>
		<tr><th colspan="2"><input type="submit" value="확인"></th></tr> 
	</table>
</form>
</div>
</body>
</html>