package com.myhome.obs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhome.obs.dao.UserDao;
import com.myhome.obs.model.Cart;
import com.myhome.obs.model.User;

@Controller
public class ProfileController {
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profileGET(HttpSession session) {
		if (StringUtils.isEmpty(session.getAttribute("activeUser"))) {
			return "login";
		}
		return "profile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String profile(@ModelAttribute User user, Model model, HttpSession session) {
		String password = user.getPassword();
		String passEnc = userDao.encrypt(password);
		user.setPassword(passEnc);
		if (!userDao.validateUser(user)) {
			model.addAttribute("loginError",
					"Sorry username or pasword invalid! Please re-enter the username and password!!");
			return "login";
		} else {
			session.setAttribute("activeUser", user.getUsername());
			session.setMaxInactiveInterval(100 * 60);
			return "profile";
		}

	}

	@RequestMapping(value = "/newprofile", method = RequestMethod.POST)
	public String newprofile(Model model, @ModelAttribute User user, HttpSession session) {
		String password = user.getPassword();
		String passEnc = userDao.encrypt(password);
		user.setPassword(passEnc);
		
		if (userDao.insertOrUpdate(user) != null) {
			model.addAttribute("user", new User());
			session.setAttribute("activeUser", user.getUsername());
			return "profile";
		} else {
			model.addAttribute("loginError",
					"Sorry you may not have filled up all the field !! Please fill all the field");
			return "signup";
		}

	}
	@RequestMapping(value = "/pmobiles", method = RequestMethod.GET)
	public String pmobiles(Model model, @ModelAttribute User user, HttpSession session) {
		
		return "profile";
	}
	@RequestMapping(value = "/pfurnitures", method = RequestMethod.GET)
	public String pfurnitures(Model model, @ModelAttribute User user, HttpSession session) {
		return "pfurnitures";
	}
	@RequestMapping(value = "/pclothes", method = RequestMethod.GET)
	public String pclothes(Model model, @ModelAttribute User user, HttpSession session) {
		
		return "pclothes";
	}
	@RequestMapping(value = "/pshoes", method = RequestMethod.GET)
	public String pshoes(Model model, @ModelAttribute User user, HttpSession session) {
		
		return "pshoes";
	}
	
	

	@RequestMapping(value = "/mobile1", method = RequestMethod.GET)
	public String mobile1(HttpSession session) {
		return "mobile1";
	}

	@RequestMapping(value = "/motorola", method = RequestMethod.GET)
	public String pmotorola(HttpSession session) {
		return "pmotorola";
	}
	
	@RequestMapping(value = "/htc", method = RequestMethod.GET)
	public String htc(HttpSession session) {
		return "htc";
	}
	
	@RequestMapping(value = "/blackberry", method = RequestMethod.GET)
	public String blackberry(HttpSession session) {
		return "blackberry";
	}

	@RequestMapping(value = "/pf01", method = RequestMethod.GET)
	public String pf01(HttpSession session) {
		return "pf1";
	}
	@RequestMapping(value = "/pf02", method = RequestMethod.GET)
	public String pf02(HttpSession session) {
		return "pf2";
	}
	@RequestMapping(value = "/pf03", method = RequestMethod.GET)
	public String pf03(HttpSession session) {
		return "pf3";
	}
	@RequestMapping(value = "/pnt01", method = RequestMethod.GET)
	public String pnt01(HttpSession session) {
		return "pnt01";
	}
	@RequestMapping(value = "/ptsh02", method = RequestMethod.GET)
	public String ptsh02(HttpSession session) {
		return "ptsh02";
	}
	@RequestMapping(value = "/ptsh03", method = RequestMethod.GET)
	public String ptsh03(HttpSession session) {
		return "ptsh03";
	}
	@RequestMapping(value = "/ptsh04", method = RequestMethod.GET)
	public String ptsh04(HttpSession session) {
		return "ptsh04";
	}
	@RequestMapping(value = "/psh01", method = RequestMethod.GET)
	public String psh01(HttpSession session) {
		return "psh01";
	}
	@RequestMapping(value = "/psh02", method = RequestMethod.GET)
	public String psh02(HttpSession session) {
		return "psh02";
	}
	@RequestMapping(value = "/psh03", method = RequestMethod.GET)
	public String psh03(HttpSession session) {
		return "psh03";
	}
	
	@RequestMapping(value = "/thanku", method = RequestMethod.POST)
	public String thanku(HttpSession session, HttpServletRequest request, Model model) {
		String itemid = request.getParameter("itemid");
		String itemname = request.getParameter("itemname");
		String price = request.getParameter("price");
		String qty = request.getParameter("qty");

		Cart newCart = new Cart();
		newCart.setItemid(Long.parseLong(itemid));
		newCart.setItemname(itemname);
		newCart.setPrice(Integer.parseInt(price));
		newCart.setQty(Integer.parseInt(qty));
		newCart.setTotalPrice(Integer.parseInt(qty) * Integer.parseInt(price));
		userDao.insertCart(newCart);
		model.addAttribute("Message", "Thank you!! You have successfully added item to your cart.....");

		return "thanku";

	}

	@RequestMapping(value = "/mycart", method = RequestMethod.GET)
	public String cart(@ModelAttribute Cart newCart, Model model, HttpServletRequest request) {
		List<Cart> cartList = userDao.getAllCart();
		model.addAttribute("newCart", new Cart());
		model.addAttribute("cartList", cartList);
				
		return "cart";
	}
	@RequestMapping(value = "/mycart/{cartid}/delete", method = RequestMethod.GET)
	public String deleteItem(Model model, @PathVariable("cartid") Long cartid, Cart cart) { 

		userDao.delete(cartid);
		return "redirect:/mycart";
	}
	@RequestMapping(value = "/mycart/{cartid}/edit", method = RequestMethod.GET)
	public String editStudent(Model model, @PathVariable("cartid") Long cartid) {
		Cart cart = userDao.get(cartid);
		model.addAttribute("Cart", cart);
		return "mobile1";
	}
	
}
