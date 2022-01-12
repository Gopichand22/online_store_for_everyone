package com.onlinestore.matters.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.onlinestore.matters.dao.RegisterDao;
import com.onlinestore.matters.models.Register;
import com.onlinestore.matters.utils.DbUtils;
import com.onlinestore.matters.utils.impl.DbUtilsImpl;

public class RegisterDaoImpl implements RegisterDao {

	@Override
	public int registerUser(Register reg) {
		int status =0;
		Connection con =null;
		PreparedStatement ps=null;
		DbUtils dbutil=new DbUtilsImpl();
		final String INSERT_DATA="INSERT INTO admins_users_data(first_name, last_name, email, pass) VALUES(?,?,?,?)";
		try {
			con=dbutil.makeConnection(con);
			ps=con.prepareStatement(INSERT_DATA);
			ps.setString(1, reg.getFirstName());
			ps.setString(2, reg.getLastName());
			ps.setString(3, reg.getEmail());
			ps.setString(4, reg.getPass());
			status=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps!=null) {
					ps.close();
				}
				if(con!=null) {
					con.close();
				}
			}catch (Exception e) {
				System.out.println("Cant close ps and con @DAO-->Register User method");
			}
		}
		return status;
	}

}
