<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="container">
		<div class="container" align="center">
			<h2 class="text-primary">자유게시판</h2>
			<table class="table table-bordered">
				<tr>
					<th></th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>

				</tr>
				<c:if test="${pp.total == 0 }">
					<tr>
						<th colspan="5">데이터가 없습니다</th>
					</tr>
				</c:if>
				<c:if test="${pp.total > 0 }">
					<c:forEach var="tboard" items="${list}">
						<tr>
							<td>${no}</td>
							<c:if test="${tboard.del=='y'}">
								<th colspan="4">삭제된 글 입니다</th>
							</c:if>
							<c:if test="${tboard.del!='y'}">
								<td title="${tboard.content}"><c:if
										test="${tboard.re_level > 0 }">
										<img alt="" src="images/level.gif" height="2"
											width="${tboard.re_level*15}">
										<img alt="" src="images/re.gif">
									</c:if> <a class="btn btn-success btn-sm"
									href="tboardView.do?t_num=${tboard.t_num}&pageNum=${pp.currentPage}">
										${tboard.subject}</a> <c:if test="${tboard.readcount > 30 }">
										<img alt="" src="images/hot.gif">
									</c:if></td>
								<td>${tboard.nick_name}</td>
								<td>${tboard.readcount}</td>
								<td>${tboard.reg_date}</td>
							</c:if>
						</tr>
						<c:set var="no" value="${no - 1}"></c:set>
					</c:forEach>
				</c:if>
			</table>

			<form action="freeBoardList.do">
				<input type="hidden" name="pageNum" value="1"> <select
					name="search">
					<option value="subject"
						<c:if test="${search=='subject'}">selected="selected"</c:if>>제목
					</option>

					<option value="content"
						<c:if test="${search=='content'}">selected="selected"</c:if>>내용
					</option>

					<option value="nick_name"
						<c:if test="${search=='nick_name'}">selected="selected"</c:if>>작성자
					</option>

					<option value="subcon"
						<c:if test="${search=='subcon'}">selected="selected"</c:if>>제목+내용
					</option>
				</select> <input type="text" name="keyword"> <input type="submit"
					value="확인">
			</form>

			<ul class="pagination">
				<c:if test="${not empty keyword}">
					<c:if test="${pp.startPage > pp.pagePerBlk }">
						<li><a
							href="freeBoardList.do?pageNum=${pp.startPage - 1}&search=${search}&keyword=${keyword}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
						<li <c:if test="${pp.currentPage==i}">class="active"</c:if>><a
							href="freeBoardList.do?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
					</c:forEach>
					<c:if test="${pp.endPage < pp.totalPage}">
						<li><a
							href="freeBoardList.do?pageNum=${pp.endPage + 1}&search=${search}&keyword=${keyword}">다음</a></li>
					</c:if>
				</c:if>
				<c:if test="${empty keyword}">
					<c:if test="${pp.startPage > pp.pagePerBlk }">
						<li><a href="freeBoardList.do?pageNum=${pp.startPage - 1}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
						<li <c:if test="${pp.currentPage==i}">class="active"</c:if>><a
							href="freeBoardList.do?pageNum=${i}">${i}</a></li>
					</c:forEach>
					<c:if test="${pp.endPage < pp.totalPage}">
						<li><a href="freeBoardList.do?pageNum=${pp.endPage + 1}">다음</a></li>
					</c:if>
				</c:if>
			</ul>
			<div align="center">
				<c:if test="${result > 0}">
					<a class="btn btn-info" href="insertForm.do">글입력</a>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>