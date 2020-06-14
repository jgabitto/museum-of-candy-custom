package com.museumofcandy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.museumofcandy.entity.User;

@Controller
public class ViewController {

	@GetMapping("/")
	public String showIndex() {
		return "index";
	}
	
	@GetMapping("/home")
	public String showHome() {
		return "home";
	}
	
	@GetMapping("/about")
	public String showAbout() {
		return "about";
	}
	
	@GetMapping("/signUp")
	public String showDirectToSignUp() {
		return "directToSignup";
	}
	
	@GetMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@GetMapping("/newUser")
	public ModelAndView newSpringStudent(ModelAndView modelView) {
		User user = new User();
		modelView.addObject("user",user);
		modelView.setViewName("signUp");
		return modelView;
	}
	
}
