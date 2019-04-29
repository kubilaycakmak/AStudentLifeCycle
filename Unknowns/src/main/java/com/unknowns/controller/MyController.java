package com.unknowns.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.unknowns.hibernate.util.Queries;

@Controller
public class MyController {
	Queries queries;
	HttpSession session;

	@GetMapping({ "/index", "/" })
	public String getindex(HttpServletRequest request) {
		return "index";
	}

	@RequestMapping("/createAccount")
	public String getCreate(HttpServletRequest request) {
		return "createAccount";
	}

	@RequestMapping(value="/forgetPassword", method=RequestMethod.POST)
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
		session.setAttribute("time", queries.getFreelanceTime((String) session.getAttribute("email")));
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
		session.setAttribute("time", queries.getFastFoodTime((String) session.getAttribute("email")));
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
	
	@RequestMapping("/help")
	public String getHelp() {
		return "help";
	}

	@RequestMapping(value="/signUp",method=RequestMethod.POST)
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
		if (!queries.signUp(name, lastname, email, nickname, password, hintcode, type))
			session.setAttribute("warning", "Email or nickname already exists.");
			
		return "index";
		
	}

	@RequestMapping(value="signIn",method=RequestMethod.POST)
	public String signIn(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		queries = Queries.getQueries();
		if (queries.signIn(email, password)) {
			session = request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("user", queries.getUser(email));
			return "home";
		} else {
			session = request.getSession();
			session.setAttribute("warning", "Email or password is wrong.");
			return "index";
		}
	}

	@RequestMapping(value="freelance",method=RequestMethod.POST)
	public String freelance(HttpServletRequest request) {
		session = request.getSession();
		String email = (String) session.getAttribute("email");
		queries = Queries.getQueries();
		if (queries.freelance(request.getParameter("freelanceChoose"), email)) {
			session.setAttribute("job", "Job Successful");
		} else {
			session.setAttribute("job", "Job Unsuccesful");
		}
		session.setAttribute("time", queries.getFreelanceTime(email));
		session.setAttribute("email", email);
		session.setAttribute("user", queries.getUser(email));
		return "Freelance";
	}

	@RequestMapping(value="fastfood",method=RequestMethod.POST)
	public String fastfood(HttpServletRequest request) {
		session = request.getSession();
		String email = (String) session.getAttribute("email");
		queries = Queries.getQueries();
		if (queries.fastfood(request.getParameter("fastfoodChoose"), email)) {
			session.setAttribute("fastfood", "Bon apetit!");
		} else {
			session.setAttribute("fastfood", "Money is not enough");
		}
		session.setAttribute("time", queries.getFastFoodTime(email));
		session.setAttribute("email", email);
		session.setAttribute("user", queries.getUser(email));
		return "FastFood";
	}
	
	@RequestMapping(value="logout",method=RequestMethod.POST)
	public String logout(HttpServletRequest request) {
		session = request.getSession();
		session.invalidate();
		return "index";
	}
	@RequestMapping("/*")
	public String string() {
		return "404";
	}

}
