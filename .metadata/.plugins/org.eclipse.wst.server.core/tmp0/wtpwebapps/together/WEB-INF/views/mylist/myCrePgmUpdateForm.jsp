<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 만든 투게더</title>
<style>
.wrapper {
	position: relative;
	width: 80%;
	margin-left: 220px;
}
.wrapper h2 {
	margin-left: 30px;
	margin-bottom: 20px;
}
table {
	position: relative !important;
	max-width: 95% !important;
	margin-left: 20px !important;
}
.img_td{
	width:320px;
	height: 160px;
}
.img_td img {
	width:100%;
	height:100%;
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="../setting/header.jsp"></jsp:include>
		<jsp:include page="../login/infoleft.jsp"></jsp:include>

		<div class="wrapper">
			<h2 class="text-primary">내가 만든 프로그램</h2>
			<form action="" method="post">
			<table class="table table-bordered">
				<tr>
					<th>메인</th>
					<td class="img_td">
						<img src="images/upload/${pgminfo.wall_paper_name}">
					</td>
				<tr>
					<th>프로그램 명</th>
					<td><input type="text" name="name" value="${pgminfo.name}"></td>
				</tr>
				<tr>
					<th>프로그램 부제</th>
					<td><input type="text" name="sidename" value="${pgminfo.sidename}"></td>
				</tr>
				<tr>
					<th>프로그램 실행장소</th>
					<td><input type="text" name="place" value="${pgminfo.place}"></td>
				</tr>
				<tr>
					<th>프로그램 내용</th>
					<td><textarea rows="7" cols="30" name="content">${pgminfo.content}</textarea></td>
				</tr>
				<tr>
					<th colspan="2"><input type="button" value="수정"></th>
				</tr>
			</table>
			</form>
		</div>
		
		<jsp:include page="../setting/footer.jsp"></jsp:include>

	</div>
</body>
</html>