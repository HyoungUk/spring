<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#idChk').click(function() {
			var id = $('#id').val();
			if (!id) { alert("아이디 입력 후에 체크 하시오");
				$('#id').focus(); return false;
			}
			$.post('idChk.do',"id="+id, function(data) {
				$('#txtDisp').text(data);
			});
		});
	});
</script></head><body><div class="container">
<form action="join.do" method="post">
<table class="table table-hover">
	<caption class="text-primary">회원가입</caption>
	<tr><th><span class="glyphicon glyphicon-user"></span>ID</th>
		<td><input type="text" name="id" id="id"
			required="required" autofocus="autofocus">
			<input type="button" value="중복체크" id="idChk"><br>
			<span class="err" id="txtDisp"></span></td></tr>
	<tr><th><span class="glyphicon glyphicon-lock"></span></th>
		<td><input type="password" name="password" 
			required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required"></td></tr>
	<tr><th><span class="glyphicon glyphicon-envelope"></span></th>
		<td><input type="email" name="email" 
			required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인">
</table></form></div></body></html>