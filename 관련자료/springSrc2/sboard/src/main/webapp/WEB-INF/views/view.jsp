<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#sDisp').load('${path}/sList/bno/${board.num}');
		$('#disp').load('${path}/list/pageNum/${pageNum}');
		$('#rInsert').click(function() {
			var formData = $('#rFrm').serialize();
/* 			var formData =  "bno="+rFrm.bno.value+
							"replyer="+rFrm.replyer.value+
							"replytext="+rFrm.replytext.value; */
			$.post('${path}/rInsert', formData, function(data) {
				alert("추가되었습니다");
				$('#sDisp').html(data);
				rFrm.replytext.value = "";
			});
		});
	});
</script></head><body>
<div class="container">
	<h2>게시글 상세</h2>
<table class="table table-striped">
	<tr><th>제목</th><td>${board.subject}</td></tr>
	<tr><th>작성자</th><td>${board.writer}</td></tr>
	<tr><th>작성일</th><td>${board.reg_date}</td></tr>
	<tr><th>IP</th><td>${board.ip}</td></tr>
	<tr><th>조회수</th><td>${board.readcount}</td></tr>
	<tr><th>이메일</th><td>${board.email}</td></tr>
	<tr><th>내용</th><td><pre>${board.content}</pre></td></tr>
</table>
<a href="${path}/updateForm/num/${board.num}/pageNum/${pageNum}" 
	class="btn btn-warning">수정</a>
<a href="${path}/deleteForm/num/${board.num}/pageNum/${pageNum}" 
	class="btn btn-danger">삭제</a>
<a href="${path}/writeForm/pageNum/${pageNum}?nm=${board.num}"
	class="btn btn-success">답변글</a>
<a href="${path}/list/pageNum/${pageNum}" class="btn btn-info">목록</a>
<h3 class="text-primary">댓글입력</h3>
<form method="post" id="rFrm" name="rFrm">
	<input type="hidden" name="bno" value="${board.num}">
	<input type="hidden" name="replyer" value="${board.writer}">
	<%-- <input type="hidden" name="pageNum" value="${pageNum}"> --%>
<table class="table table-bordered">
	<tr><td><textarea rows="3" cols="30" name="replytext" 
		required="required"></textarea>
		<input type="button" value="확인" id="rInsert"></td></tr>
</table></form>
</div>
<div id="sDisp"></div>
<div id="disp"></div>
</body>
</html>