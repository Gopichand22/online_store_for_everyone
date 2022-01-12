package com.onlinestore.matters.services.impl;

import com.onlinestore.matters.dao.RegisterDao;
import com.onlinestore.matters.dao.impl.RegisterDaoImpl;
import com.onlinestore.matters.models.Register;
import com.onlinestore.matters.services.RegisterService;

public class RegisterServiceImpl implements RegisterService{

	@Override
	public int registerDetails(String firstName, String lastName, String email, String password) {
		Register reg=new Register();
		reg.setFirstName(firstName);
		reg.setLastName(lastName);
		reg.setEmail(email);
		reg.setPass(password);
		int status=0;
		RegisterDao regDao=new RegisterDaoImpl();
		status=regDao.registerUser(reg);
		return status;
	}

}
