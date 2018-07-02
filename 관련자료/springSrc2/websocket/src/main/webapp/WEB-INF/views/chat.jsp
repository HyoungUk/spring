<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var websocket;
	$(function() {
		$('#message').keypress(function(event) {
			var keycode=event.keyCode?event.keyCode:event.which;
			if (keycode==13) send();
			event.stopPropagation();
		});
		$('#sendBtn').click(function() {	send();		});
		$('#enterBtn').click(function() {	connect();	});
		$('#exitBtn').click(function() {	disconnect();	});
	});
	function send() {		
		var nickname = $('#nickname').val();
		var msg = $('#message').val();
		websocket.send(nickname+" : "+msg);
		$('#message').val('');
	}
	function disconnect() {	websocket.close();	}
	function onOpen() {	appendMessage("연결 성공 !!!");	}
	function onClose() {	appendMessage("채팅 종료");	}
	function onMessage(event) {
		var data = event.data;
		appendMessage(data);
	}
	function connect() {		
		websocket = new WebSocket(
			"ws://192.168.30.10:8181/websocket/chat-ws.do");
		websocket.onopen = onOpen;
		websocket.onclose = onClose;
		websocket.onmessage = onMessage;
	}	
	function appendMessage(msg) {
		$('#chatArea').append(msg+'<br>');
	}
</script>
</head><body><div class="container">
별명 : <input type="text" id="nickname">
	<input type="button" value="입장" id="enterBtn" class="btn btn-sm btn-success">
	<input type="button" value="퇴장" id="exitBtn" class="btn btn-sm btn-warning">
<p><input type="text" id="message"/> 
	<input type="button" id="sendBtn" value="전송" class="btn btn-sm btn-info"/>
<h2 class="text-primary">대화영역</h2> 
<div id="chatArea"></div>	
</div></body></html>