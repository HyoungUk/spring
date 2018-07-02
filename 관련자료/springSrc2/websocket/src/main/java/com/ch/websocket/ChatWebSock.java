package com.ch.websocket;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
public class ChatWebSock extends TextWebSocketHandler {
	private Map<String, WebSocketSession> sessions =
			new HashMap<String, WebSocketSession>();
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessions.put(session.getId(), session);
	}
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessions.remove(session.getId());
	}
	public void handleMessage(WebSocketSession session, 
				WebSocketMessage<?> message) throws Exception {
		Collection<WebSocketSession> users = sessions.values();
		for (WebSocketSession user : users) {
			user.sendMessage(message);
		}
	}
}