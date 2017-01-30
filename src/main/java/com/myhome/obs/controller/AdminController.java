package com.myhome.obs.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhome.obs.dao.AdminLogin;
import com.myhome.obs.dao.UserDao;
import com.myhome.obs.model.Admin;
import com.myhome.obs.model.Cart;
import com.myhome.obs.model.Deliver;
import com.myhome.obs.model.User;

@Controller
public class AdminController {
	@Autowired
	private AdminLogin adminLogin;

	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String indexGET(Locale locale, Model model, HttpSession session) {
		return "adminLogin";
	}

	@RequestMapping(value = "/adminpanel", method = RequestMethod.POST)
	public String profile(@ModelAttribute Admin admin, Model model, HttpSession session) {
		String password = admin.getPassword();
		String passEnc = userDao.encrypt(password);
		admin.setPassword(passEnc);
		if (!adminLogin.validateUser(admin)) {
			model.addAttribute("loginError",
					"Sorry username or pasword invalid! Please re-enter the username and password!!");
			return "adminLogin";
		} else {
			return "adminPanel";
		}
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String users(@ModelAttribute User user, Model model) {
		List<User> userList = userDao.getAll();
		System.out.println("here");
		model.addAttribute("user", new User());
		model.addAttribute("userList", userList);
		return "users";
	}

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String cart(@ModelAttribute Cart newCart, Model model, HttpServletRequest request) {
		List<Cart> cartList = userDao.getAllCart();
		model.addAttribute("newCart", new Cart());
		model.addAttribute("cartList", cartList);

		return "order";
	}

	@RequestMapping(value = "/order/{cartid}/deliver", method = RequestMethod.GET)
	public String deliverItem(Model model, @PathVariable("cartid") Long cartid, Deliver deliver) {
		Cart deliverCart = (Cart)userDao.getCartId(cartid);
		model.addAttribute("Cart", deliverCart);

		userDao.insertOrUpdateDelivery(deliver);
		userDao.delete(cartid);
		return "redirect:/order";
	}
	
}