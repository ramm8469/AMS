package com.ams.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ams.dao.User_DAO;
import com.ams.dao.User_DAO_Impl;
import com.ams.model.User;

/**
 * Servlet implementation class GetAllUsers
 */
@WebServlet("/GetAllUsers")
public class GetAllUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetAllUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			User_DAO dao = new User_DAO_Impl();
			List<User> user_list = dao.getAll();
			
			RequestDispatcher rd = request.getRequestDispatcher("DashBoardModule/Admin_Dashboard/getAll.jsp");
			request.setAttribute("user_list", user_list);
			rd.forward(request, response);
			
		
	}

	
	

}
