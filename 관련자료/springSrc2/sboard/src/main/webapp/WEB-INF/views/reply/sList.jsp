<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rUpdate(bno,rno) {
		var txt = $('#td_'+rno).text();
		$('#td_'+rno).html(	
			 '<textarea name="replytext" cols="30" rows="3" id="rt">'
			+ txt + '</textarea>');
		$('#btn_'+rno).html(
			'<input type="button" value="확인" onclick="up('+
			bno+','+rno+ 
			')"> <input type="button" value="최소" onclick="lst('+
				bno+')">'
		);
	}
	function lst(bno) {
		$('#sDisp').load('${path}/sList/bno/'+bno);
	}
	function up(bno,rno) {
		var replytext = $('#rt').val();
		var formData = "rno="+rno+"&bno="+bno+"&replytext="+replytext;
		$.post('${path}/rUpdate', formData, function(data) {
			alert("수정 되었습니다");
			$('#sDisp').html(data);
		});
	}
	function rDelete(rno, bno) {
		var formData = "rno="+rno+"&bno="+bno;
		$.post('${path}/rDelete', formData, function(data) {
			alert("삭제 되었습니다");
			$('#sDisp').html(data);
		});
	}
</script>
</head><body>
<div class="container">
	<h2 class="text-primary">댓글 목록</h2>
<table class="table table-striped">
	<tr><th>작성자</th><th>내용</th>
		<th>수정일</th><th>권한</th></tr>
<c:if test="${empty sList}">
	<tr><th colspan="4"></th></tr>
</c:if>
<c:if test="${not empty sList}">
	<c:forEach var="rb" items="${sList}"><tr>
		<c:if test="${rb.del=='y'}">
			<td colspan="4">삭제되었습니다</td>
		</c:if>
		<c:if test="${rb.del!='y'}">
			<td>${rb.replyer}</td>
			<td id="td_${rb.rno}">${rb.replytext}</td>
			<td>${rb.updatedate}</td>
			<td id="btn_${rb.rno}">
				<c:if test="${rb.replyer==board.writer}">
					<input type="button" value="수정" 
						onclick="rUpdate(${rb.bno},${rb.rno})">
					<input type="button" value="삭제" 
						onclick="rDelete(${rb.rno},${rb.bno})">
			</c:if></td>
		</c:if></tr>
	</c:forEach>
</c:if>
</table>
</div>
</body>
</html>