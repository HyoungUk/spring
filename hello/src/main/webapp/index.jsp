<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인</title>
<script type="text/javascript">
	function chk() {
		var url = document.getElementById("pgm").value;
		location.href=url;
	}
</script>
</head>
<body>
<h2>프로그램 선택</h2>
<form action="">
	<select onchange="chk()" id="pgm">
		<option value="gugu.do">구구단 
		<option value="color.html">배경색
		<option value="addrForm.html">이름과 주소
		<option value="operForm.do">연산
		<option value="personForm">개인정보
	</select>
</form>
</body>
</html>