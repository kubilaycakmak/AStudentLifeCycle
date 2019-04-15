package com.unknowns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {
	

	@GetMapping("/index")
	public String requestMethodName() {
		return "index";
	}
	
	@RequestMapping("/*")
	public String string() {
		return "welcome";
	}
	
}
