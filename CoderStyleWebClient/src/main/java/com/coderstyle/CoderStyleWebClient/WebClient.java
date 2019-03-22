package com.coderstyle.CoderStyleWebClient;

import javax.servlet.http.HttpServletRequest;


import com.coderstyle.CoderStyleWebClient.Entity.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;

public class WebClient {
	private Client client;
	private ClientResponse clientResponse;
	private User user;
	private static WebClient webClient = new WebClient();
	
	public static WebClient getIstance() {
		return webClient; 
	}
	
	private WebClient() {
	}
	
	public User SignIn(HttpServletRequest request) {
		user = new User();
		user.setNick(request.getParameter("loginUsername"));
		user.setPassword(request.getParameter("loginPassword"));
		client = Client.create();
		clientResponse = client.resource("http://localhost:8080/CoderStyleWebService/webapi/myresource").path("login")
				.type("application/xml").post(ClientResponse.class,user);
		user = clientResponse.getEntity(User.class);
		return user;
	}
	

	
	
}
