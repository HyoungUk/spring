<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 등록</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="container">
		 <div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>

		<div class="container" align="center">
			<h2 class="text-primary">게시판 수정</h2>
			<form action="update.do" method="post">

				<input type="hidden" name="t_num" value="${tboard.t_num}"> 
				<input type="hidden" name="pageNum" value="${pageNum}">
				<table class="table table-striped">
				
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" required="required" value="${tboard.subject}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="5" cols="30" name="content" required="required">${tboard.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" value="확인"></td>
					</tr>
					
				</table>
			</form>
		</div>
			<div id="f5">
				<jsp:include page="../setting/footer.jsp"></jsp:include>
		    </div>
	</div>
	

</body>
</html>