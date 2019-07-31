package com.ams.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ams.dao.User_DAO;
import com.ams.dao.User_DAO_Impl;
import com.ams.model.User;



/**
 * Servlet implementation class LoginValidater
 */
@WebServlet("/LoginValidater")
public class LoginValidater extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Class Instances
	private String uname="";
	private String pass = "";

    public LoginValidater() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		uname = request.getParameter("uname");
		pass = request.getParameter("pass");
		
		// Create the user object with the login username and password
		User user = new User(uname,pass);
		// Create the DAO Impl object
		User_DAO dao = new User_DAO_Impl();

		Boolean flag = dao.loginValidation(user);
		RequestDispatcher rd = null;
		
	   if(flag){
		   
		   // get the user type from the database
		   User getuser  = new User();
		   getuser.setUser_name(user.getUser_name());
		   String utype = dao.getUserType(getuser);
		   System.out.println("User type : "+utype);
		   if(utype!=null){
			   // Maintaining Session
			   HttpSession session = request.getSession();
			   session.setAttribute("uname", user.getUser_name());
			   session.setAttribute("uid", dao.getUserIdByName(user.getUser_name()));
			   request.setAttribute("username", user.getUser_name());

			   if(utype.equals("s")){
				   // redirect for student
				   
				   rd = request.getRequestDispatcher("/DashBoardModule/StudentDashboard/studentDashboard.jsp");
				   // Forward the request dispatcher rd
				   rd.forward(request, response);
			   }
			   else if(utype.equals("f")){
				   // redirect for faculty
				   
				   rd = request.getRequestDispatcher("/DashBoardModule/faculty_Dashboard/faculty_dashboard.jsp");
				   // Forward the request dispatcher rd
				   rd.forward(request, response);
			   }
			   else if(utype.equals("g")){
				   // redirect for guardain
				   
				   rd = request.getRequestDispatcher("/DashBoardModule/Guardian_Dashboard/Guardian_Dashboard.jsp");
				   // Forward the request dispatcher rd
				   rd.forward(request, response);
			   }
			   else if(utype.equals("a")){
				   // redirect for guardain
				   
				   rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/Admin_Dashboard.jsp");
				   // Forward the request dispatcher rd
				   rd.forward(request, response);
			   }
			   
		   }
		   
	
	   }
	   else{
		   rd = request.getRequestDispatcher("/LoginModule/LoginFail.jsp");
		   request.setAttribute("login_msg", "UserName or PassWord is Invalid !");
		   rd.forward(request, response);
	   }
		System.out.println(uname+" : "+pass+" LoginValidator");
		
//		doGet(request, response);
	}

}
