<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		var url = document.getElementById("pgm").value;
		location.href=url;
	}
</script>
</head><body>
<select name="pgm" onchange="chk()" id="pgm">
	<option value="time">현재시간</option>
	<option value="gugu.do">구구단</option>
	<option value="color.html">배경색</option>
	<option value="addrForm.html">주소</option>
	<option value="operInput.do">사칙연산</option>
	<option value="member">REST 객체</option>
	<option value="memberList">Jakson 목록</option>
</select>
</body>
</html>