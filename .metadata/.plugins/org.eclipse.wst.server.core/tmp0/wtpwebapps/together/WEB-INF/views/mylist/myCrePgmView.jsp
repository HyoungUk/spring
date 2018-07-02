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
					<td class="img_td">
						<img src="images/upload/${pgminfo.wall_paper_name}">
					</td>
				<tr>
					<th>프로그램 명</th>
					<td>${pgminfo.name}</td>
				</tr>
				<tr>
					<th>프로그램 종류</th>
					<td>
						<c:if test="${pgminfo.prgtype eq 'in'}">
							문 화 / 예 술
						</c:if>
						<c:if test="${pgminfo.prgtype eq 'out'}">
							아 웃 도 어
						</c:if>
					</td>
				</tr>
				<tr>
					<th>프로그램 부제</th>
					<td>${pgminfo.sidename}</td>
				</tr>
				<tr>
					<th>프로그램 가격</th>
					<td>${pgminfo.price}</td>
				</tr>
				<tr>
					<th>프로그램 실행장소</th>
					<td>${pgminfo.place}</td>
				</tr>
				<tr>
					<th>프로그램 내용</th>
					<td>${pgminfo.content}</td>
				</tr>
				<tr>
					<th>프로그램 최대인원</th>
					<td>${pgminfo.maximum}</td>
				</tr>
				<tr>
					<th>신청시작일 ~ 종료일</th>
					<td>${pgminfo.period_start} ~ ${pgminfo.period_end}</td>
				</tr>
				<tr>
					<th>프로그램시작일 ~ 종료일</th>
					<td>${pgminfo.start_date} ~ ${pgminfo.end_date}</td>
				</tr>
				<tr>
						<th>프로그램 생성일</th>
						<td>${pgminfo.make_date}</td>
				</tr>
				<c:set var="no" value="${no - 1}"></c:set>
				<tr>
					<th colspan="2">
						<a href="myCrePgmUpdateForm.do?mb_num=${member.mb_num}&num=${pgm.num}">프로그램 정보수정</a>
					</th> 
				</tr>
			</table>
		</div>
		
		<jsp:include page="../setting/footer.jsp"></jsp:include>

	</div>
</body>
</html>