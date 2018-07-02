<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		$('#rlist').load('rlist.do'+tno);
	}
	
	function up(tno,rno) {
		var replytext = $('#rt').val();
		var frmData="rno="+rno+"&tno="+tno+"&replytext="+replytext;
		$.post('rUpdate.do',frmData, function(data) {
			alert("수정 되었습니다");
			$('#rlist').html(data);
		});
	}
</script>
</head>
<body>
	<div class="container">
		<h3>
			<span class="label label-success">댓글</span>
		</h3>
		<table class="table table-bordered">
			<tr>
				<th>작성자</th>
				<th>내용</th>
				<th>수정일</th>
				<th>권한</th>
			</tr>
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
							<!-- 로그인한 ID와 댓글 ID와 비교하는 게 맞음 --> <c:if
								test="${rb.mno == mb_num}">
								<input type="button" value="수정"
									onclick="rUpdate(${rb.rno},${rb.tno})">
								<input type="button" value="삭제"
									onclick="rDelete(${rb.rno},${rb.tno})">
							</c:if>
						</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>