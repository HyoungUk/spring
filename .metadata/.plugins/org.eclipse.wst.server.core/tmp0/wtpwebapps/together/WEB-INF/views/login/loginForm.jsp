<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<style>
#f3{
	position:relative;
	width:100%;
	max-width:600px;
	margin-top: 200px;
}
h2{
	margin-top:220px;
	margin-bottom: 20px;
}
th {
	width:150px !important;
	padding-left: 30px !important;
	padding-top: 13px !important;
}
td {
	padding-top: 13px !important;
	height: 52px;
	text-align: center;
}
#subm {
	text-align: center;
}
input[type=submit] {
	width: 90px;
	height: 35px;
}
input[type=button]{
	width: 190px;
	height: 35px;
	margin-left: 10px;
}
</style>
</head>
<body>
<div id="container">
    <jsp:include page="../setting/header.jsp"></jsp:include>

    <div id="f3">
    	<div id="">
	    	<h2 class="text-primary">로그인</h2>
			<form action="login.do">
				<table class="table table-bordered">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id" required="required" autofocus="autofocus"></td>
					</tr>
					<tr>
						<th>암호</th>
						<td><input type="password" name="password" required="required"></td>
					</tr>
					<tr>
						<th colspan="2" id="subm">
							<input type="submit" value="로그인">
							<input type="button" value="아이디 / 비밀번호 찾기(미구현)">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>