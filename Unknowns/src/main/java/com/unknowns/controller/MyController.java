package com.unknowns.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknowns.hibernate.util.HibernateUtil;
import com.unknowns.hibernate.util.Queries;


@Controller
public class MyController {
	Queries queries;
	HttpSession session;
	@GetMapping("/index")
	public String getindex() {
		return "index";
	}
	
	@RequestMapping("/createAccount")
	public String getCreate() {
		return "createAccount";
	}
	
	@PostMapping("/forgetPassword")
	public String getForgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("/signUp")
	public String createAccount(HttpServletRequest request) {
		String name = request.getParameter("name");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String hintcode = request.getParameter("hintcode");
		session = request.getSession();
		queries = Queries.getQueries();
		if(queries.signUp(name, lastname, email, nickname, password, hintcode))
			return "index";
		else {
			session.setAttribute("warning", "Email or nickname already exists.");
			return "createAccount";
		}
	}
	
	@PostMapping("signIn")
	public String signIn(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		queries = Queries.getQueries();
		if(queries.signIn(email, password)) {
			return "home";
		}
		else {
			session = request.getSession();
			session.setAttribute("warning", "Email or password is wrong.");
			return "index";
		}
	}
	
	
	@RequestMapping("/*")
	public String string() {
		return "404";
	}
	
}
