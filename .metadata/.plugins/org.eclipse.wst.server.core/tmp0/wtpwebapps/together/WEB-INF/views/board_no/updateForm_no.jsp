<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="container">

		<jsp:include page="../setting/header.jsp"></jsp:include>

		<div class="container" align="center">
			<h2 class="text-primary">공지사항 수정</h2>
			<form action="update_no.do" method="post">
				<input type="hidden" name="n_num" value="${tboard_no.n_num}">
				<input type="hidden" name="pageNum" value="${pageNum}">
				<table class="table table-striped">

					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" required="required"
							value="${tboard_no.subject}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="5" cols="30" name="content"
								required="required">${tboard_no.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="확인"></td>
					</tr>

				</table>
			</form>
		</div>

		<jsp:include page="../setting/footer.jsp"></jsp:include>

	</div>
</body>
</html>