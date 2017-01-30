package com.myhome.obs.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexGET(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(Locale locale, Model model, HttpSession session) {
		return "login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupGET(Model model) {
		return "signup";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}

	@RequestMapping(value = "/mobile11", method = RequestMethod.GET)
	public String mobile11() {
		return "mobile11";
	}
	@RequestMapping(value = "/samsung11", method = RequestMethod.GET)
	public String samsung() {
		return "samsung";
	}
	@RequestMapping(value = "/blackberry11", method = RequestMethod.GET)
	public String blackberry11() {
		return "blackberry11";
	}
	@RequestMapping(value = "/motorola11", method = RequestMethod.GET)
	public String motorola11() {
		return "motorola";
	}
	@RequestMapping(value = "/sofa01", method = RequestMethod.GET)
	public String sofa01() {
		return "f1";
	}

	@RequestMapping(value = "/fur02", method = RequestMethod.GET)
	public String fur02() {
		return "f2";
	}
	@RequestMapping(value = "/fur03", method = RequestMethod.GET)
	public String fur03() {
		return "f3";
	}
	@RequestMapping(value = "/paint01", method = RequestMethod.GET)
	public String tshirt01() {
		return "t1";
	}
	@RequestMapping(value = "/tshirt02", method = RequestMethod.GET)
	public String tshirt02() {
		return "t2";
	}
	@RequestMapping(value = "/tshirt03", method = RequestMethod.GET)
	public String tshirt03() {
		return "t3";
	}
	@RequestMapping(value = "/shoes01", method = RequestMethod.GET)
	public String shoes01() {
		return "s1";
	}


	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value = "/mobiles", method = RequestMethod.GET)
	public String mobiles() {
		return "index";
	}
	
	@RequestMapping(value = "/furnitures", method = RequestMethod.GET)
	public String furnitures() {
		return "furnitures";
	}
	@RequestMapping(value = "/clothes", method = RequestMethod.GET)
	public String clothes() {
		return "clothes";
	}
	@RequestMapping(value = "/shoes", method = RequestMethod.GET)
	public String shoes() {
		return "shoes";
	}
	
	
	
}
