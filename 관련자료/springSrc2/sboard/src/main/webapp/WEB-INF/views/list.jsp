<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
	<h2>게시판 목록</h2>
<table class="table table-striped">
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
		<th>조회수</th></tr>
<c:if test="${empty list }">
	<tr><th colspan="5">게시글이 없습니다</th></tr>
</c:if>
<c:set var="total" value="${total}"></c:set>
<c:if test="${not empty list}">
<c:forEach var="board" items="${list}">
	<tr><td>${total}</td>
	<c:if test="${board.del=='y' }">
		<td colspan="4">삭제된 데이터입니다</td>
	</c:if>
	<c:if test="${board.del!='y' }">
		<td><c:if test="${board.re_level > 0}">
				<img alt="" src="${path}/images/level.gif" height="10" 
					width="${board.re_level * 10}">
				<img alt="" src="${path}/images/re.gif"></c:if>
			<a href="${path}/view/num/${board.num}/pageNum/${pageNum}"
				class="btn btn-sm btn-success">${board.subject}</a>
			<c:if test="${board.readcount > 30 }">
				<img alt="" src="${path}/images/hot.gif"></c:if></td>
		<td>${board.writer}</td><td>${board.reg_date}</td>
		<td>${board.readcount}</td>
	</c:if></tr>
	<c:set var="total" value="${total - 1}"></c:set>
</c:forEach></c:if>
</table>
<form action="${path}/list">
	<select name="search">
		<c:forTokens var="s" items="subject,content,writer,subcon" 
			delims="," varStatus="vt">
			<c:if test="${s==search}">
				<option value="${s}" selected="selected">
					${sh[vt.index]}</option> 
			</c:if>
			<c:if test="${s!=search}">
				<option value="${s}">${sh[vt.index]}</option> 
			</c:if>
		</c:forTokens>	
<!-- 	<option value="subject">제목</option>
		<option value="content">내용</option>
		<option value="writer">작성자</option> -->
	</select>
	<input type="text" name="keyword" value="${keyword}">
	<input type="submit" value="검색">
</form>
<ul class="pagination">
	<c:if test="${pb.startPage > pb.PAGEPERBLOCK }">
		<li><a href="${path}/list/pageNum/${pb.startPage - 1}?search=${search}&keyword=${keyword}">이전</a>
	</li></c:if>
	<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage}">
		<c:if test="${pb.currentPage==i }">
			<li class="active"><a href="${path}/list/pageNum/${i}?search=${search}&keyword=${keyword}">${i}</a></li>
		</c:if>
		<c:if test="${pb.currentPage!=i }">
			<li><a href="${path}/list/pageNum/${i}?search=${search}&keyword=${keyword}">${i}</a></li>
		</c:if>
	</c:forEach>
	<c:if test="${pb.endPage < pb.totalPage }"><li>		
		<a href="${path}/list/pageNum/${pb.endPage + 1}?search=${search}&keyword=${keyword}">다음</a>
	</li></c:if>
</ul><br>
<a href="${path}/writeForm/pageNum/1" class="btn btn-success">글쓰기</a>
</div>
</body>
</html>