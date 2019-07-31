package com.ams.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ams.dao.User_DAO;
import com.ams.dao.User_DAO_Impl;
import com.ams.model.User;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Class Variable
	private String firstName;
	private String lastName;
	private String email;
	private String userName;
	private String password;
	private String dob;
	private String user_type;
	private String res;
	private Date dateOfBirth;

	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// CREATING REQUEST DISPATCHER FOR DISPATCHING THE DATA
		RequestDispatcher rd;
		
		// Getting the values from the registration page
		firstName = request.getParameter("fname");
		lastName = request.getParameter("lname");
		email = request.getParameter("email");
		userName = request.getParameter("user_name");
		password = request.getParameter("password");
		dob = request.getParameter("dob");
		user_type = request.getParameter("user_type");

//		System.out.println(firstName + " : " + lastName + " : " + email + " : " + userName + " : " + password + " : "
//				+ dob + " : " + user_type);

		try {
			// Creating the user object
			User user = new User();

			// Creating DAO Object
			User_DAO dao = new User_DAO_Impl();

			// Setting the user values
			user.setFname(firstName);
			user.setLname(lastName);
			user.setEmail(email);
			user.setUser_name(userName);
			user.setPassword(password);
			user.setUser_type(user_type);

			// parsing the date
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			dateOfBirth = sdf.parse(dob);
			user.setDob(dateOfBirth);

			// Adding data from the Reg. page to the database

			res = dao.insert(user);
			if(res.equals("Success")){
				 rd = request.getRequestDispatcher("/RegistrationModule/Registration_Success.jsp");
				 request.setAttribute("uname", userName);
			}
			else{
				 rd = request.getRequestDispatcher("/RegistrationModule/Registration_Fail.jsp");
			}
			
			// Forward the request dispatcher
			rd.forward(request, response);
			
			System.out.println(res + " s");

		} catch (ParseException e) {
			System.out.println(res + " f " + e);
		}
	}

	}
