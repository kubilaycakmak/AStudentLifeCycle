package com.kadiraydemir.websocket;

import java.io.IOException;
import java.util.Iterator;

import javax.websocket.MessageHandler;
import javax.websocket.Session;

public class MessageHandlerDemo implements MessageHandler.Whole<String> {

	private Session userSession = null;
	public MessageHandlerDemo(Session session) {
		this.userSession = session;
	}
	
	@Override
	public void onMessage(String message) {
		String username = (String) userSession.getUserProperties().get("username");
		try{
			if(username==null) {
				userSession.getUserProperties().put("username", message);
					userSession.getBasicRemote().sendText(EndpointServerDemo.buildJsonMessaggeData("System", "you are connected as "+ message));
					Iterator<Session> iterator = EndpointServerDemo.chatroomUsers.iterator();
					while(iterator.hasNext())
						(iterator.next()).getBasicRemote().sendText(EndpointServerDemo.buildJsonUsersData());

			}
			else {
				Iterator<Session> iterator = EndpointServerDemo.chatroomUsers.iterator();
				while(iterator.hasNext()) 
					iterator.next().getBasicRemote().sendText(EndpointServerDemo.buildJsonMessaggeData(username, message));
					
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}
