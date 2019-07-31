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
 * Servlet implementation class AdminUserReg
 */
@WebServlet("/AdminUserReg")
public class AdminUserReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminUserReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int param = Integer.parseInt(request.getParameter("uid"));
		int db_param=0;
		
		User_DAO dao = new User_DAO_Impl();
		
		db_param = dao.adminValidator(param);
		if(db_param>0 && db_param == param){
			HttpSession session = request.getSession();
			User user = dao.getUserById(param);
			if(user.getUser_type().equals("a")){
				session.setAttribute("uname", user.getUser_name());
				RequestDispatcher rd = request.getRequestDispatcher("RegistrationModule/Registration.jsp");
				rd.forward(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/RegisterUser/Reg_A_User.jsp");
				request.setAttribute("msg", "Only Admin User type Allowed");
				rd.forward(request, response);
			}
		}
		if(db_param==0){
			RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/RegisterUser/Reg_A_User.jsp");
			request.setAttribute("noUser", "No Admin User available with UID : "+param);
			rd.forward(request, response);
		}
		
	}

	
}
