package com.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import com.dao.userDao;
import com.model.userModel;
import com.model.booktable;

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
	public RedirectView loginUser(@ModelAttribute userModel u,HttpServletRequest request)
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
				}
				
			}
			else
			{
				
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
	
}
