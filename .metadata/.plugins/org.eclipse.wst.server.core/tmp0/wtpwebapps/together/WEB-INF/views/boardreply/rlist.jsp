<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<c:if test="${!empty rlist}">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function rDelete(rno, tno) {
		var frmData = "rno="+rno+"&tno="+tno;
		$.post('rDelete.do', frmData, function(data) {
			alert("삭제 되었습니다");
			$('#rlist').html(data);
		});
	}
	function rUpdate(rno, tno) {
		var txt = $('#td_'+rno).text();
		$('#td_'+rno).html('<textarea name="replytext" cols="30" rows="3" id="rt">'+txt+'</textarea>');
		$('#btn_'+rno).html('<input type="button" value="확인" onclick="up('+tno+','+rno+')"><input type="button" value="취소" onclick="lst('+tno+')">'); 
	}
	function lst(tno) {
		$('#rlist').load('rlist.do?t_num='+tno);
	}
	function up(tno,rno) {
		var replytext = $('#rt').val();
		var frmData="rno="+rno+"&tno="+tno+"&replytext="+replytext;
		$.post('rUpdate.do',frmData, function(data) {
			alert("수정 되었습니다");
			$('#rlist').html(data);
		});
	}
	function pnolist(tno, pno) {
		$('#rlist').load('rlist.do?t_num='+tno+'&rpageNum='+pno);
	}
</script>
<style>
h3{
	margin: 0px !important;
	margin-bottom: 10px !important;
	padding: 10px !important;
}
#rtable{
	margin: 0px !important;
}
.container{
	padding: 0px !important;
}
</style>
</head>
<body>
	<div class="container">
		<h3><span class="label label-success">댓글</span></h3>
		<table class="table table-bordered" id="rtable">
			<tr><th>작성자</th><th>내용</th><th>수정일</th><th>권한</th></tr>
			<c:forEach var="rb" items="${rlist}">
				<tr>
					<c:if test="${rb.del=='y' }">
						<th colspan="4">삭제 되었습니다</th>
					</c:if>
					<c:if test="${rb.del!='y'}">
						<td>${rb.replyer}</td>
						<td id="td_${rb.rno}">${rb.replytext}</td>
						<td>${rb.updatedate}</td>
						<td id="btn_${rb.rno}">
							<!-- 로그인한 ID와 댓글 ID와 비교하는 게 맞음 -->
							<c:if test="${rb.mno == mb_num}">
								<input type="button" value="수정" onclick="rUpdate(${rb.rno},${rb.tno})">
								<input type="button" value="삭제" onclick="rDelete(${rb.rno},${rb.tno})">
							</c:if>
						</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>		
						
		<ul class="pagination">
			<c:if test="${rpp.startPage > rpp.pagePerBlk }">
				<li><input type="button" onclick="pnolist(${t_num},${rpp.startPage - 1})" value="이전"></li>
			</c:if>
			<c:forEach var="i" begin="${rpp.startPage}" end="${rpp.endPage}">
				<li <c:if test="${rpp.currentPage==i}">class="active"</c:if>><input type="button" onclick="pnolist(${t_num}, ${i})" value="${i}"></li>
			</c:forEach>
			<c:if test="${rpp.endPage < rpp.totalPage}">
				<li><input type="button" onclick="pnolist(${t_num},${rpp.endPage + 1})" value="이후"></li>
			</c:if>
		</ul>
	</div>
</body>
</html>
</c:if>