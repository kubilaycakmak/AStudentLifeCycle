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
	public String getindex(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping("/createAccount")
	public String getCreate(HttpServletRequest request) {
		return "createAccount";
	}
	
	@PostMapping("/forgetPassword")
	public String getForgetPassword(HttpServletRequest request) {
		return "ForgetPassword";
	}
	@RequestMapping("home")
	public String getHome(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "home";
	}
	@RequestMapping("profile")
	public String getProfile(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "profile";
	}
	
	@RequestMapping("Freelance")
	public String getFreelance(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Freelance";
	}
	
	@RequestMapping("House")
	public String getHouse(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "House";
	}
	@RequestMapping("Bank")
	public String getBank(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Bank";
	}
	@RequestMapping("FastFood")
	public String getFastFood(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "FastFood";
	}
	@RequestMapping("Computer")
	public String getComputer(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Computer";
	}
	@RequestMapping("Store")
	public String getStore(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Store";
	}
	@RequestMapping("Hack")
	public String getHack(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Hack";
	}
	@RequestMapping("Hospital")
	public String getHospital(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Hospital";
	}
	@RequestMapping("Jail")
	public String getJail(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Jail";
	}
	@RequestMapping("Forex")
	public String getForex(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Forex";
	}
	
	@PostMapping("/signUp")
	public String createAccount(HttpServletRequest request) {
		String name = request.getParameter("name");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String hintcode = request.getParameter("hintcode");
		int type = Integer.parseInt(request.getParameter("type"));
		session = request.getSession();
		queries = Queries.getQueries();
		if(queries.signUp(name, lastname, email, nickname, password, hintcode,type))
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
			session = request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("user", queries.getUser(email));
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
