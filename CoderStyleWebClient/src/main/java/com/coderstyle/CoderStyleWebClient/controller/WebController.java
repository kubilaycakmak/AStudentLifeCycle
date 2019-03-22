package com.coderstyle.CoderStyleWebClient.controller;


import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.POST;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coderstyle.CoderStyleWebClient.WebClient;
import com.coderstyle.CoderStyleWebClient.Entity.User;


@Controller
public class WebController {
	private User user;
	private WebClient webClient;
	@GET
	@RequestMapping("/")
	public String getIndex() {
		return "index";
	}
	
	
	@POST
	@RequestMapping("/signIn")
	public String getIndex(HttpServletRequest request,Model model) {
		webClient = WebClient.getIstance();
		user = webClient.SignIn(request);
		if(user.getId()!=0) {
			model.addAttribute("name",user.getNick());
			return "welcome";
		}
			
		else
			return "index";
			
		//List<User> users = webResource.getEntity(new GenericType<List<User>>() {});
	}
	
}
