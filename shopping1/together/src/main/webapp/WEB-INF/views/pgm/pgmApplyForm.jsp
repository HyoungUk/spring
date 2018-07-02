<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로그램 신청</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div id="container">
    <div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>
    
    <form action="pgmApply.do" method="post">
    	<input type="hidden" name="mb_num" value="${member.mb_num}">
    	<input type="hidden" name="num" value="${pgmInfo.num}">
    	<input type="hidden" name="start_date" value="${pgmInfo.start_date}">
    	<input type="hidden" name="end_date" value="${pgmInfo.end_date}">
			<h2 class="text-primary">프로그램 신청하기</h2>
			<table class="table table-bordered">
				
				<tr>
					<th>회원 이름</th>
					<td>${member.name}</td>
				</tr>
				<tr>
					<th>프로그램 이름</th>
					<td>${pgmInfo.name}</td>
				</tr>
				<tr>
					<th>호스트 이름</th>
					<td>${host.host_name}</td>
				</tr>
				<tr>
					<th>호스트 전화번호</th>
					<td>${hostInfo.tel}</td>
				</tr>
				<tr>
					<th>장소</th>
					<td>${pgmInfo.place}</td>
				</tr>
				<tr>
					<th>실행일자</th>
					<td>${pgmInfo.start_date} ~ ${pgmInfo.end_date}</td>
				</tr>
				<tr>
					<th>가격</th>
					<td>${pgmInfo.price}</td>
				</tr>
				<tr>
					<th colspan="2" id="subm"><input type="submit" value="신청" style="width: 60px"></th>
				</tr>
			</table>
		</form>
    <div id="f5">
		<jsp:include page="../setting/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>