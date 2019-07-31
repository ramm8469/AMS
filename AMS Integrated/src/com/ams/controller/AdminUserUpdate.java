package com.ams.controller;

import java.io.IOException;
import java.io.PrintWriter;

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


@WebServlet("/AdminUserUpdate")
public class AdminUserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminUserUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String update = request.getParameter("update");
		String value  = request.getParameter("value");
		
		System.out.println(update+" : "+value);
		
		int param = Integer.parseInt(request.getParameter("uid"));
		int user_uid = Integer.parseInt(request.getParameter("user_uid"));
		String utype = request.getParameter("utype");
		int db_param=0;
		
		
		// If  admin user tries to delete it's own account then restrict it
		if(update.equals("non")){
			RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
			request.setAttribute("NoNSelected", "You haven't selected any property to update,Please Select a User Property to Update");
			rd.forward(request, response);
		}
				
		User_DAO dao = new User_DAO_Impl();
		
		// Verifying Admin User
		
		db_param = dao.adminValidator(param);
		
		if(db_param>0 && db_param == param){
			HttpSession session = request.getSession();
			User user = dao.getUserById(param);
			if(user.getUser_type().equals("a")){
				
				// Once admin  is verified, now verify the user first
				
				User userVerify = dao.getUserById(user_uid);
				System.out.println(userVerify);
				if(userVerify != null){
					
					// Update the User Property
					
					Boolean flag = dao.updateUserByID(user_uid, update, value);
					if(flag){
						
						RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
						request.setAttribute("updateSuccess", "User with UID : "+user_uid+" has been Updated SuccessFully by "+update+" = "+value);
						rd.forward(request, response);
					}
					else{
						RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
						request.setAttribute("updateUnSuccess", "User with UID : "+user_uid+" has not been  Updated SuccessFully by "+update+" = "+value);
						rd.forward(request, response);
					}
				}
				else{
					RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
					request.setAttribute("UserNotAvail", "User with UID : "+user_uid+" is not Available");
					rd.forward(request, response);
				}
				
				
			}
			else{
				
				// If User is not verified as Admin,then forward...
				RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
				request.setAttribute("msg", "Only Admin User type Allowed");
				rd.forward(request, response);
			}
			
			
			
		}
		
		// IF no admin exist with the give param uid by the adminn user then, message
		System.out.println(db_param);
		if(db_param==0){
			RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/UpdateUser/UpdateUser.jsp");
			request.setAttribute("noUser", "No AdminUser available with UID : "+param);
			rd.forward(request, response);
		}
		
		
		
	
	}


}
