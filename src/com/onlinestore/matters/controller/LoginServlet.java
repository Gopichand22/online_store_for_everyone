package com.onlinestore.matters.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinestore.matters.dao.LoginDao;
import com.onlinestore.matters.dao.impl.LoginDaoImpl;
import com.onlinestore.matters.models.Register;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LogServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailid = request.getParameter("emailme");
		String password = request.getParameter("pass");
		System.out.println(emailid);
		System.out.println(password);
		Register reg = new Register();
		reg.setEmail(emailid);
		reg.setPass(password);

		LoginDao loginDao = new LoginDaoImpl();
		String checkUser = loginDao.authenticateUser(reg);

		if (checkUser.equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("email1", emailid + "--> root");
			request.setAttribute("email", emailid);
			try {
				request.getRequestDispatcher("/rootadmin.jsp").forward(request, response);
			} catch (Exception e) {
			}
		} else if (checkUser.equals("user")) {
			HttpSession session = request.getSession();
			session.setAttribute("email1", emailid);
			request.setAttribute("email", emailid);
			session.setAttribute("successMsg", "Login successful");
			try {
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			} catch (Exception e) {
			}
		} else {
			request.setAttribute("errMessage", "You dont have an account, please go and register an account");
			try {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} catch (Exception e) {
			}
		}
	}

}
