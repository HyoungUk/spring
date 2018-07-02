<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<style>
#f3 {
	position:relative;
	width:100%;
	max-width:600px;
}

#f3_info{
	position:relative;
	width:100%;
}
h2{
	margin-bottom: 20px;
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
#birth {
	width:174px;
}
input {
	margin:0;
	height:30px;
}
#id_btn {
	margin-left: 10px !important;
}
#man, #woman {
	position: relative;
	top:3px;
	margin:0;
}
#woman_label, #man_label {
	position: relative;
	top:-8px;
	margin:0;
}
#gen {
	height:47px;
}
#subm {
	text-align: center;
}
</style>
</head>
<body>
<div id="container">

	<div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>
    
    <div id="f3">
		<div id="f3_info">
		<form action="join.do" method="post">
			<h2 class="text-primary">회원정보 입력</h2>
			<table class="table table-bordered">
				<tr>
					<th><span>아이디</span></th>
					<td>
						<input type="text" name="id" required="required" autofocus="autofocus">
						<input type="button" id="id_btn" name="id_chk" value="중복확인" style="width: 80px">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" required="required"></td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td><input type="password" name="" required="required"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name="nick_name" required="required"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" required="required"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr" required="required"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td id="gen">
						<input type="radio" id="man" name="gender" value="man" checked="checked">
						<label for="man" id="man_label">남성</label>	
						<input type="radio" id="woman" name="gender" value="woman">
						<label for="woman" id="woman_label">여성</label>
					</td>
				</tr>
				
				<tr>
					<th>생일</th>
					<td><input type="date" id="birth" name="birth" required="required"></td>
				</tr>
				
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" required="required"></td>
				</tr>
				<tr>
					<th colspan="2" id="subm"><input type="submit" value="확인" style="width: 60px"></th>
				</tr>
			</table>
		</form>
		</div>
	</div>
	
    <div id="f5">
		<jsp:include page="../setting/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>