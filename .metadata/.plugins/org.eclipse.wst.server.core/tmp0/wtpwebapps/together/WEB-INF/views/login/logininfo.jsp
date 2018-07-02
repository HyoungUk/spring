<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<script type="text/javascript">
	
</script>
<style>
#f3 {
	position:relative;
	width:100%;
	max-width:600px;
}
h2{
	margin: 0px !important;
	padding: 20px 0px 20px 0px !important;
}
th {
	width:150px !important;
	padding-left: 30px !important;
	padding-top: 13px !important;
}
td {
	padding-left: 100px !important;
	height: 52px;
}
#f3_info{
   position:relative;
   width:100%;
   margin-top: 15%;
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="../setting/header.jsp"></jsp:include>

		<jsp:include page="infoleft.jsp"></jsp:include>
		
		<div id="f3">
			<div id="f3_info">
				<h2 class="text-primary">회원정보</h2>
				<table class="table table-bordered">
					<tr>
						<th>아이디</th>
						<td>${member.id}</td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td>${member.nick_name}</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${member.name}</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>${member.tel}</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${member.addr}</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${member.gender}</td>
					</tr>
					<tr>
						<th>생일</th>
						<td>${member.birth}</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${member.email}</td>
					</tr>
				</table>
			</div>
		</div>

		<jsp:include page="../setting/footer.jsp"></jsp:include>
	</div>
</body>
</html>