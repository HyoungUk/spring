<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 상세정보</title>
<script type="text/javascript">
	$(function() {
		$('#rlist').load('rlist.do?t_num=${tboard.t_num}');
		$('#freeBoardList').load('testfreeBoardList.do?pageNum=${pageNum}');//까먹지말자 레플리카 추가 나중에 변경
		$('#rInsert').click(function() {
			if (!frm.replytext.value) {
				alert("댓글 입력 후에 확인을 누르세요");
				frm.replytext.focus(); return false;
			}
			var frmData = $('#frm').serialize();
			$.post('rInsert.do',frmData, function(data) {
				$('#rlist').html(data);
				frm.replytext.value="";
			});
		});
	});
</script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#rlist{
	position: absolute;
	margin-top: 200px;
}
#freeBoardList{
	position: absolute;
	margin-top: 800px;
}
</style>
</head>
<body>
<div id="container">
	<div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>

	<div class="container" align="center">
		<h2 class="text-primary">게시글 상세정보</h2>
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td>${tboard.subject}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${tboard.mb_num}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${tboard.readcount}</td>
			</tr>
			<tr>
				<td>아이피</td>
				<td>${tboard.ip}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><pre>${tboard.content}</pre></td>
			</tr>
		</table>
		
		<c:if test="${result==0}">
		<a class="btn btn-info" href="freeBoardList.do?pageNum=${pageNum}">목록</a><p>
			댓글을 작성하시려면 로그인을 해주세요
		</c:if>
		
		<c:if test="${result==1}">
		<a class="btn btn-info" href="freeBoardList.do?pageNum=${pageNum}">목록</a>
		<a class="btn btn-info" href="insertForm.do?nm=${tboard.t_num}&pageNum=${pageNum}">답글</a>
		<form name="frm" id="frm">
				<input type="hidden" name="tno" value="${tboard.t_num}">	
				댓글: <textarea rows="3" cols="50" name="replytext"></textarea>
				<input type="button" value="확인" id="rInsert">
			</form>
		</c:if>
		
		<c:if test="${result==2}">
		<a class="btn btn-info" href="freeBoardList.do?pageNum=${pageNum}">목록</a>
		<a class="btn btn-success" href="insertForm.do?nm=${tboard.t_num}&pageNum=${pageNum}">답글</a>
		<a class="btn btn-warning" href="updateForm.do?num=${tboard.t_num}&pageNum=${pageNum}">수정</a>
		<a class="btn btn-info" href="delete.do?num=${tboard.t_num}&pageNum=${pageNum}">삭제</a> 
		<form name="frm" id="frm">
				<input type="hidden" name="tno" value="${tboard.t_num}">	
				댓글: <textarea rows="3" cols="50" name="replytext"></textarea>
				<input type="button" value="확인" id="rInsert">
			</form>
		</c:if>
		
		<div id="rlist"></div>
		<div id="freeBoardList"></div>
	</div>
</div>
</body>
</html>