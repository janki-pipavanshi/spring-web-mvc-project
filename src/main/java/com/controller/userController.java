package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import com.dao.userDao;
import com.model.userModel;
import com.model.booktable;
import com.model.reviewModel;

@Scope("session")
@Controller
public class userController {

	@Autowired
	private userDao dao;
	
	
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("about")
	public String about() {
		return "about";
	}
	@RequestMapping("register")
	public String register() {
		return "register";
	}
	@RequestMapping(value="registerUser",method = RequestMethod.POST)
	public RedirectView register(@ModelAttribute userModel u,HttpServletRequest request) {
		this.dao.insertUser(u);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("welcome")
	public String welcome() {
		return "welcome";
	}
	@RequestMapping(value="loginUser",method = RequestMethod.POST)
	public RedirectView loginUser(@ModelAttribute userModel u,HttpServletRequest request ,Model m)
	{
			RedirectView redirectView = new RedirectView();
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			userModel u1 = this.dao.getDataById(u);
			System.out.println(u1);
			if(u1.getEmail().equals(email))
			{
				if(u1.getPassword().equals(password))
				{
				redirectView.setUrl(request.getContextPath()+"/welcome");
				request.getSession().setAttribute("user", u1);
				}				
			}
			else
			{
				String msg="Sorry You entered an incorrect password";  
	            request.setAttribute("msg", msg);  
	            redirectView.setUrl(request.getContextPath()+"/login");
				}
			return redirectView;	
	}
	
	@RequestMapping("booktable")
	public String booktable() {
		return "booktable";
	}
	
	@RequestMapping(value="bookatable",method = RequestMethod.POST)
	public RedirectView bookatable(@ModelAttribute booktable b,HttpServletRequest request)
	{
		RedirectView redirectView = new RedirectView();
		this.dao.booktable(b);         
        redirectView.setUrl(request.getContextPath()+"/booktable");
		return redirectView;

    }
	
	@RequestMapping(value="changebooking/{id}")
	public ModelAndView changeabooking(@PathVariable int id,HttpServletRequest request) 
	{
		booktable b = dao.getAllUser(id);
		System.out.println(b);
		ModelAndView m = new ModelAndView("changebooking");
		m.addObject("list", b);
		return m;
			
	}
	@RequestMapping("changebooking")
	public String changebooking()
	{
		return "changebooking";
	}
	@RequestMapping("logout")
	public String logout(HttpServletRequest request)
	{
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		return "login";
	}
	@RequestMapping("updatebooking")
	public String updatebooking()
	{
		return "updatebooking";
	}
	
	@RequestMapping(value="update",method = RequestMethod.POST)
	public RedirectView update(@ModelAttribute userModel u,HttpServletRequest request) {
		this.dao.insertUser(u);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/welcome");
		return redirectView;
	}
	
	@RequestMapping(value="delete/{id}")
	public RedirectView delete(@PathVariable int id,HttpServletRequest request)
	{
		booktable u = this.dao.getAllUser(id);
		this.dao.delete(u);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/welcome");
		return redirectView;
	}
	@RequestMapping("menu")
	public String menu()
	{
		return "menu";
	}
	
	@RequestMapping("reviews")
	public String reviews()
	{
		return "reviews";
	}
	
	@RequestMapping(value="review",method= RequestMethod.POST)
	public RedirectView review(@ModelAttribute reviewModel r,HttpServletRequest request) {
		this.dao.insertReview(r);
		RedirectView redirectView =  new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/welcome");
		return redirectView;
	}
	
}
	

