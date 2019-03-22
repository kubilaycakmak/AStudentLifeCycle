package com.coderstyle.CoderStyleWebClient.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coderstyle.CoderStyleWebClient.Entity.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.UniformInterface;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.LoggingFilter;

@Controller
public class WebController {	
	@GET
	@RequestMapping("/")
	public String getIndex() {
		return "index";
	}
	
	
	@POST
	@RequestMapping("/signIn")
	public String getIndex(HttpServletRequest request,Model model) {
		User user = new User();
		user.setNick(request.getParameter("loginUsername"));
		user.setPassword(request.getParameter("loginPassword"));
		Client client = Client.create();
		ClientResponse webResource = client.resource("http://localhost:8080/CoderStyleWebService/webapi/myresource").path("login")
				.type("application/xml").post(ClientResponse.class,user);
		user = webResource.getEntity(User.class);
		if(user.getId()!=0) {
			model.addAttribute("name",user.getNick());
			return "welcome";
		}
			
		else
			return "index";
			
		//List<User> users = webResource.getEntity(new GenericType<List<User>>() {});
	}
	
}
