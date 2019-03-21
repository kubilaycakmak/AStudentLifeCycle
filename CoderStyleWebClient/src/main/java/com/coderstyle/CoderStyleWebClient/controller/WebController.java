package com.coderstyle.CoderStyleWebClient.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coderstyle.CoderStyleWebClient.Entity.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

@Controller
public class WebController {
	
	@GET
	@RequestMapping("/users")
	public String getName(HttpServletRequest request, Model model) {
		Client client = Client.create();
		WebResource webResource = client.resource("http://localhost:8080/CoderStyleWebService/webapi/myresource");
		List<User> userList = webResource.get(new GenericType<List<User>>() {});
		model.addAttribute("name",userList.get(1).getFirstname());
		return "mainpage";
	}
	
	
}
