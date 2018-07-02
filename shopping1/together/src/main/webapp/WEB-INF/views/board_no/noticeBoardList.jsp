<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function s(n) {
		var m = document.getElementById("k").value;
		if (m=="0") {
			$('#disp_'+n).load("tboard_no_View.do?n_num="+n);
			$("#tr_"+n).css("visibility","visible");
			document.getElementById("k").value = "1";
		} else {
			$("#tr_"+n).css("visibility","collapse");
			document.getElementById("k").value = "0";
		}
	}
</script>

</head>
<body>
 	<div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
	</div>
<input type="hidden" id="k" value="0">
    <div class="container" align="center">
			<h2 class="text-primary">공지사항</h2>
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
				<c:forEach var="tboard_no" items="${list}">
					<tr>
						<td>${no}</td>
						<c:if test="${tboard_no.del=='y'}">
							<th colspan="4">삭제된 글 입니다</th>
						</c:if>
						<c:if test="${tboard_no.del!='y'}">
							<td title="${tboard_no.content}" onclick="s(${tboard_no.n_num})" class="btn btn-success btn-sm" >
							${tboard_no.subject}
							</td>
							<td>${tboard_no.nick_name}</td>
							<td>${tboard_no.readcount}</td>
							<td>${tboard_no.reg_date}</td>
						</c:if>
					</tr>
					<c:set var="no" value="${no - 1}"></c:set>
					
					<tr style="visibility:collapse;" id="tr_${tboard_no.n_num}">
						<th colspan="5" id="disp_${tboard_no.n_num}"></th>
					</tr>
					
				</c:forEach>
			</c:if>
			</table>

			<form action="noticeBoardList.do">
				<input type="hidden" name="pageNum" value="1"> 
				
					<select name="search">
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
				</select> 
				
				<input type="text" name="keyword"> <input type="submit" value="확인">
			</form>

			<ul class="pagination">
				<c:if test="${not empty keyword}">
					<c:if test="${pp.startPage > pp.pagePerBlk }">
						<li><a
							href="noticeBoardList.do?pageNum=${pp.startPage - 1}&search=${search}&keyword=${keyword}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
						<li <c:if test="${pp.currentPage==i}">class="active"</c:if>><a
							href="noticeBoardList.do?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
					</c:forEach>
					<c:if test="${pp.endPage < pp.totalPage}">
						<li><a
							href="noticeBoardList.do?pageNum=${pp.endPage + 1}&search=${search}&keyword=${keyword}">다음</a></li>
					</c:if>
				</c:if>
				<c:if test="${empty keyword}">
					<c:if test="${pp.startPage > pp.pagePerBlk }">
						<li><a href="noticeBoardList.do?pageNum=${pp.startPage - 1}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
						<li <c:if test="${pp.currentPage==i}">class="active"</c:if>>
							<a href="noticeBoardList.do?pageNum=${i}">${i}</a></li>
					</c:forEach>
					<c:if test="${pp.endPage < pp.totalPage}">
						<li><a href="noticeBoardList.do?pageNum=${pp.endPage + 1}">다음</a></li>
					</c:if>
				</c:if>
			</ul>
			<div align="center">
				<c:if test="${result > 0 && manager=='y'}">
					<a class="btn btn-info" href="insertForm_no.do">공지사항 입력</a>
				</c:if>
			</div>
		</div>
    
    <div id="f5">
		<jsp:include page="../setting/footer.jsp"></jsp:include>
    </div>
</body>
</html>