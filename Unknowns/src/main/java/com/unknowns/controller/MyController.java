package com.unknowns.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
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

	@RequestMapping(value="/forgetPassword", method=RequestMethod.POST)
	public String getForgetPassword(HttpServletRequest request) {
		return "ForgetPassword";
	}

	@RequestMapping("home")
	public String getHome(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		session.setAttribute("freelancetime", queries.getFreelanceTime(email));
		session.setAttribute("fastfoodtime", queries.getFastFoodTime(email));
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "home";
	}

	@RequestMapping({"user","profile"})
	public String getProfile(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "profile";
	}

	@RequestMapping("Freelance")
	public String getFreelance(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		session.setAttribute("freelancetime", queries.getFreelanceTime((String) session.getAttribute("email")));
		return "Freelance";
	}


	@RequestMapping("Bank")
	public String getBank(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("bank", queries.getBank((String)session.getAttribute("email")));
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Bank";
	}

	@RequestMapping("FastFood")
	public String getFastFood(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		session.setAttribute("fastfoodtime", queries.getFastFoodTime((String) session.getAttribute("email")));
		return "FastFood";
	}

	@RequestMapping("Store")
	public String getStore(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Store";
	}
	@RequestMapping("Company")
	public String getCompany(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Company";
	}

	@RequestMapping("Hack")
	public String getHack(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("hacktime", queries.getHackTime((String) session.getAttribute("email")));
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Hack";
	}


	@RequestMapping("Jail")
	public String getJail(HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("jailtime", queries.getJailTime((String) session.getAttribute("email")));
		session.setAttribute("user", queries.getUser((String) session.getAttribute("email")));
		return "Jail";
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
			session.setAttribute("warningUp", "Email or nickname already exists.");
			
		return "index";
		
	}

	@RequestMapping(value="signIn",method=RequestMethod.POST)
	public String signIn(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		queries = Queries.getQueries();
		if (queries.signIn(email, password)) {
			session = request.getSession();
			session.setAttribute("freelancetime", queries.getFreelanceTime(email));
			session.setAttribute("fastfoodtime", queries.getFastFoodTime(email));
			session.setAttribute("email", email);
			session.setAttribute("user", queries.getUser(email));
			return "home";
		} else {
			session = request.getSession();
			session.setAttribute("warningIn", "Email or password is wrong.");
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
		session.setAttribute("freelancetime", queries.getFreelanceTime(email));
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
		session.setAttribute("fastfoodtime", queries.getFastFoodTime(email));
		session.setAttribute("email", email);
		session.setAttribute("user", queries.getUser(email));
		return "FastFood";
	}
	
	@RequestMapping(value="hack",method=RequestMethod.POST)
	public String hack(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		int result = queries.hack(request.getParameter("hackChoose"), email);
		if(result == 0) {
			session.setAttribute("hack", "Hack Unsuccessful");
		}
		else if(result == 1) {
			session.setAttribute("hack", "Hack Successful");
		}
		else if(result == 2) {
			session.setAttribute("hack", "You are in jail now");
		}
		session.setAttribute("hacktime", queries.getHackTime(email));
		session.setAttribute("email", email);
		session.setAttribute("user", queries.getUser(email));
		return "Hack";
	}
	@RequestMapping(value="bribe",method=RequestMethod.POST)
	public String bribe(HttpServletRequest request) {
		session = request.getSession();

		String email = (String)session.getAttribute("email");
		if(queries.bribe(email)) {
			session.setAttribute("bribe", "You are free!");
		}
		else
			session.setAttribute("bribe", "You don't have enough money");
		
		session.setAttribute("email", email);
		session.setAttribute("user", queries.getUser(email));
		return "Jail";
	}
	@RequestMapping(value="createCompany",method = RequestMethod.POST)
	public String createCompany(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		String CompanyName = request.getParameter("CompanyName");
		queries.CreateCompany(email,CompanyName);
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		return "Company";
	}
	@RequestMapping(value="hiring",method=RequestMethod.POST)
	public String Hiring(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		queries.hire(email);
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		return "Company";
	}
	
	@RequestMapping(value="/improve={id}",method = RequestMethod.POST)
	public String Improve(HttpServletRequest request, @PathVariable("id") String id) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		queries.improve(id,email);
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		return "Company";
	}
	@RequestMapping(value="/buy={id}",method = RequestMethod.POST)
	public String buy(HttpServletRequest request, @PathVariable("id") String id) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		queries.buy(id,email);
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		return "Store";
	}
	@RequestMapping(value="deposit",method = RequestMethod.POST)
	public String deposit(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		queries.deposit(email,Integer.parseInt(request.getParameter("checking")));
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		session.setAttribute("bank", queries.getBank(email));
		return "Bank";
	}
	@RequestMapping(value="withdraw",method = RequestMethod.POST)
	public String withdraw(HttpServletRequest request) {
		session = request.getSession();
		String email = (String)session.getAttribute("email");
		queries.withdraw(email,Integer.parseInt(request.getParameter("checking")));
		session.setAttribute("user", queries.getUser(email));
		session.setAttribute("email", email);
		session.setAttribute("bank", queries.getBank(email));
		return "Bank";
	}
	
	@RequestMapping(value="logout",method=RequestMethod.POST)
	public String logout(HttpServletRequest request) {
		session = request.getSession();
		session.invalidate();
		return "index";
	}
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String getCharacter(){
		return "profile";
	}

	@RequestMapping("/*")
	public String string() {
		return "404";
	}

}
