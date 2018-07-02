<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<table class="table table-bordered">
				<tr>
					<th>메인</th>
					<th>프로그램 명</th>
					<th>프로그램 종류</th>
				</tr>
				<c:if test="${pp.total == 0 }">
					<tr>
						<th colspan="9">데이터가 없습니다</th>
					</tr>
				</c:if>
				<c:if test="${pp.total > 0 }">
					<c:forEach var="pgm" items="${list}">
						<tr>
							<td class="img_td">
								<a href="myCrePgmView.do?mb_num=${member.mb_num}&num=${pgm.num}"><img src="images/upload/${pgm.wall_paper_name}"></a>
							</td>
							<td>${pgm.name}</td>
							<td>
								<c:if test="${pgm.prgtype eq 'in'}">
									문 화 / 예 술
								</c:if>
								<c:if test="${pgm.prgtype eq 'out'}">
									아 웃 도 어
								</c:if>
							</td>
						</tr>
						<c:set var="no" value="${no - 1}"></c:set>
					</c:forEach>
				</c:if>
			</table>
		</div>
		
		<jsp:include page="../setting/footer.jsp"></jsp:include>

	</div>
</body>
</html>