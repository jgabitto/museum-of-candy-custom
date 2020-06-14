package com.museumofcandy.rest;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.museumofcandy.entity.User;
import com.museumofcandy.service.UserService;


@RestController
public class UserRestController {
	
	@Autowired
    private ServletContext servletContext;

	// autowire the UserService
	@Autowired
	private UserService userService;
	
	private Logger logger = Logger.getLogger(getClass().getName());
		
	@PostMapping("/users")
	public void processRegistrationForm(
				@Valid @ModelAttribute("User") User theUser, 
				BindingResult theBindingResult, 
				Model theModel,
				HttpServletResponse response) {
		
		String userName = theUser.getUserName();
		logger.info("Processing registration form for: " + userName);
		
		try {
		// form validation
//		 if (theBindingResult.hasErrors()){
//			 
//	        }

		// check the database if user already exists
        User existing = userService.findByUserName(userName);
        if (existing != null){
        	theModel.addAttribute("crmUser", new User());
			theModel.addAttribute("registrationError", "User name already exists.");

			logger.warning("User name already exists.");
        	
        }
     // create user account        						
        userService.save(theUser);
        
        logger.info("Successfully created user: " + userName);
        
        
			response.sendRedirect(servletContext.getContextPath() + "/");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	@PostMapping("/foodSearch")
	public String spoonacularAPI() {
//		Response data = new Response("H", "e", "l", "l");
		
//		return ResponseEntity.ok(data);
		return "Hello";
	}

	// add mapping for GET /users/{userId}
//	@GetMapping("/users/{userId}")
//	public User getUser(@PathVariable int userId) {
//		
//		User theUser = userService.findByUserName(userName);
//		
//		if (theUser == null) {
//			throw new UserNotFoundException("User id not found - " + userId);
//		}
//		
//		return theUser;
//	}
	
	// Add mapping for POST /users - add new user
//	@PostMapping("/users")
//	public User addUser(User theUser) {
//		
//		// set id to 0
//		// this is forces a save of new user, instead of update
//		theUser.setId(0);
//		
//		System.out.print(theUser);
//		
//		userService.saveUser(theUser);
//		
//		return theUser;
//	}
	
}
