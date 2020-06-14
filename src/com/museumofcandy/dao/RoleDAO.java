package com.museumofcandy.dao;

import com.museumofcandy.entity.Role;

public interface RoleDAO {
	public Role findRoleByName(String theRoleName);
}
