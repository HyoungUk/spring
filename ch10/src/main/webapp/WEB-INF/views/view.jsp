<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#list').load('list.do?pageNum=${pageNum}')
	});
</script>
</head><body>
<div class="container">
	<h2 class="text-primary">게시글 상세정보</h2>
<table class="table table-striped">
	<tr><th>제목</th><td>${board.subject }</td></tr>
	<tr><th>작성자</th><td>${board.writer }</td></tr>
	<tr><th>조회수</th><td>${board.readcount }</td></tr>
	<tr><th>IP</th><td>${board.ip }</td></tr>
	<tr><th>이메일</th><td>${board.email}</td></tr>
	<tr><th>내용</th><td><pre>${board.content}</pre></td></tr>
</table>
<a class="btn btn-warning" href="updateForm.do?num=${board.num}&pageNum=${pageNum}">수정</a>
<a class="btn btn-danger" href="deleteForm.do?num=${board.num}&pageNum=${pageNum}">삭제</a>
<a class="btn btn-info" href="insertForm.do?nm=${board.num}&pageNum=${pageNum}">답변</a>
<a class="btn btn-default" href="list.do?pageNum=${ pageNum }">목록</a>
<div id="list"></div>
</div>
</body>
</html>

