package com.museumofcandy.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.museumofcandy.entity.User;

public interface UserService extends UserDetailsService {
	
	public void save(User theUser);
	
	public User findByUserName(String userName);
	
}
