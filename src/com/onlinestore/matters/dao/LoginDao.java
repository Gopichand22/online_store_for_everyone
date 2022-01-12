package com.onlinestore.matters.dao;

import com.onlinestore.matters.models.Register;

public interface LoginDao {

	String authenticateUser(Register reg);
	
}
