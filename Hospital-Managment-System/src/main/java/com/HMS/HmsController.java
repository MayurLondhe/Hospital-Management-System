package com.HMS;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mysql.cj.xdevapi.SessionFactory;

@Controller
public class HmsController {
	
	@Autowired
	org.hibernate.SessionFactory sf;
	
	@RequestMapping("/")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute Login login,Model model) {
		Session ss = sf.openSession();

		Login dblogin = ss.get(Login.class, login.getUsername());
		String page = "login";
		String msg = null;

		if (dblogin != null) {
			if (login.getPassword().equals(dblogin.getPassword())) {

				page = "home";

			} else {
				msg = "invalid Password";
			}
		} else {
			msg = "invalid Username";
		}
		model.addAttribute("msg", msg);
		return page;
	}
	
	@RequestMapping("/signupPage")
	public String signupPage() {
		return "signup";
	}
	
	@RequestMapping("/signup")
	public String signup(@ModelAttribute Login login,Model model) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(login);
		tx.commit();
		return null;
	}
	
	@RequestMapping("servicePage")
	public String servicePage() {
		return "service";
	}
	
	@RequestMapping("aboutPage")
	public String aboutPage() {
		return "about";
	}
	
	@RequestMapping("contactPage")
	public String contactPage() {
		return "contact";
	}
	@RequestMapping("contact")
	public String contact(@ModelAttribute Contact contact,Model model) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(contact);
		tx.commit();
		return null;
	}
	@RequestMapping("galleryPage")
	public String gallery() {
		return "gallery";
	}
	
}
