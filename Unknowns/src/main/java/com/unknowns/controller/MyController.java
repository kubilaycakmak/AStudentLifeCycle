package com.unknowns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {
	

	@GetMapping("/index")
	public String getindex() {
		return "index";
	}
	
	@PostMapping("/forgetPassword")
	public String getForgetPassword() {
		return "ForgetPassword";
	}
	@RequestMapping("/*")
	public String string() {
		return "CreateAccount";
	}
}
