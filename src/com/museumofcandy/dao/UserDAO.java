package com.museumofcandy.dao;

import java.util.List;

import com.museumofcandy.entity.User;

public interface UserDAO {
	
	public void save(User theUser);
	
	public User findByUserName(String userName);
	
}
