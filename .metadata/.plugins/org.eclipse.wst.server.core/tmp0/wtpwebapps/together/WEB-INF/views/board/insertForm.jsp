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

		<jsp:include page="../setting/header.jsp"></jsp:include>

		<div class="container" align="center">
			<h2 class="text-primary">게시판 글쓰기</h2>
			<form action="insert.do" method="post">

				<input type="hidden" name="t_num" value="${t_num}"> <input
					type="hidden" name="ref" value="${ref}"> <input
					type="hidden" name="re_step" value="${re_step}"> <input
					type="hidden" name="re_level" value="${re_level}"> <input
					type="hidden" name="pageNum" value="${pageNum}">

				<table class="table table-striped">
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" required="required"
							autofocus="autofocus"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="5" cols="30" name="content"
								required="required"></textarea></td>
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