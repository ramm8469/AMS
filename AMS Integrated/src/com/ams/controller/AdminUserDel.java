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

@WebServlet("/AdminUserDel")
public class AdminUserDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminUserDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int param = Integer.parseInt(request.getParameter("uid"));
		int user_uid = Integer.parseInt(request.getParameter("user_uid"));
		String utype = request.getParameter("utype");
		int db_param=0;
		
		
		// If  admin user tries to delete it's own account then restrict it
		if(param == user_uid){
			RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
			request.setAttribute("SelfDel", "You are trying to delete your self, Action Denied. Contact Authority/Authorities");
			rd.forward(request, response);
		}
				
		User_DAO dao = new User_DAO_Impl();
		
		db_param = dao.adminValidator(param);
		if(db_param>0 && db_param == param){
			HttpSession session = request.getSession();
			User user = dao.getUserById(param);
			if(user.getUser_type().equals("a")){
				// Once admin  is verified, now delete the user
				
				Boolean flag = false;
				// first verify the user_uid user type
				
				User users = dao.getUserById(user_uid);
				if(users == null){
					RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
					request.setAttribute("UserTypeMismatch", "User with UID : "+user_uid+" is not a Valid User ");
					rd.forward(request, response);
				}
				if(users.getUser_type().equals(utype)){
					 flag = dao.delUserByID(user_uid);
				}
				else{
					RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
					request.setAttribute("UserTypeMismatch", "User with UID : "+user_uid+" doesn't possess a user_type : "+utype);
					rd.forward(request, response);
				}
				
				if(flag){
					RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
					request.setAttribute("DelUser", "User with UID : "+user_uid+" Deleted SuccessFully");
					rd.forward(request, response);
				}
				else{
					RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
					request.setAttribute("DelUserFail", "User with UID : "+user_uid+" not Deleted");
					rd.forward(request, response);
				}
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
				request.setAttribute("msg", "Only Admin User type Allowed");
				rd.forward(request, response);
			}
			
			
			
		}
		// IF no admin exist with the give param uid by the adminn user then, message
		
		if(db_param==0){
			RequestDispatcher rd = request.getRequestDispatcher("/DashBoardModule/Admin_Dashboard/DeleteUser/DelUser.jsp");
			request.setAttribute("noUser", "No AdminUser available with UID : "+param);
			rd.forward(request, response);
		}
		
		
		
	
	}

}
