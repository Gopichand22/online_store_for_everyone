package com.onlinestore.matters.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinestore.matters.services.RegisterService;
import com.onlinestore.matters.services.impl.RegisterServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("emailme");
		String password = request.getParameter("pass");
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(email);
		System.out.println(password);
		RegisterService registerService = new RegisterServiceImpl();
		if(registerService.registerDetails(firstName, lastName, email, password)==1) {
				request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			request.setAttribute("error1", "An account with this Email Already exists,Try with another email account");
		}

	}
}
