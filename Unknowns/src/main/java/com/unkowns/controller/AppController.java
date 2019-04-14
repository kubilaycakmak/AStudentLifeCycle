package com.unkowns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AppController {
	@RequestMapping(path="/*")
	public String mainpage(){
		return "index";
	}
	
	@RequestMapping(path="/welcome")
	public String welcome() {
		return "welcome";
	}
	
}	
