package com.onlinestore.matters.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.onlinestore.matters.dao.LoginDao;
import com.onlinestore.matters.models.Register;
import com.onlinestore.matters.utils.DbUtils;
import com.onlinestore.matters.utils.impl.DbUtilsImpl;

public class LoginDaoImpl implements LoginDao {

	@Override
	public String authenticateUser(Register reg) {
		String emailid = reg.getEmail();
		String password = reg.getPass();

		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		DbUtils dbUtils = new DbUtilsImpl();

		String DbEmail = "";
		String DbPass = "";
		int adminStatus = 0;

		try {
			con = dbUtils.makeConnection(con);
			st = con.createStatement();
			rs = st.executeQuery("Select email,pass,adm from admins_users_data");
			while (rs.next()) {
				DbEmail = rs.getString("email");
				DbPass = rs.getString("pass");
				adminStatus = rs.getInt("adm");
				if (emailid.equals(DbEmail) && password.equals(DbPass)) {
					if (adminStatus == 1) {
						return "admin";
					} else {
						return "user";
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if(rs!=null) {
				rs.close();
			}
			if(st!=null) {
				st.close();
			}
			if(con!=null) {
				con.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		}
		return "Invalid user credentials";
	}

}
