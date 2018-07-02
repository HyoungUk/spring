<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	pageContext.setAttribute("br","<br/>");
	pageContext.setAttribute("cn","\n");
 %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="container" align="center">
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td>${tboard_no.subject}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${tboard_no.mb_num}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${tboard_no.readcount}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td style="word-break:break-all">${fn:replace(tboard_no.content,cn,br)}</td>
			</tr>
		</table>
		<c:if test="${result==1}">
		<a class="btn btn-warning" href="updateForm_no.do?num=${tboard_no.n_num}&pageNum=${pageNum}">수정</a>
		<a class="btn btn-info" href="delete_no.do?num=${tboard_no.n_num}&pageNum=${pageNum}">삭제</a> 
		</c:if>
		
		<div id="noticeBoardList"></div>
	</div>

</body>
</html>