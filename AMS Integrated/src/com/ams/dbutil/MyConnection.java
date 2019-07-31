package com.ams.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;



public class MyConnection {

	private Connection con;

	public Connection  getConnection() {
		// Stuff for JDBC Connection
		// Loading the Class file
		
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// Data for connection

			String url = "jdbc:mysql://localhost:3306/ams_project";
			String uname = "root";
			String pass = "";
			
			con = DriverManager.getConnection(url,uname,pass);
			System.out.println("Connection Established");
		}catch(Exception e){
			System.out.println("Connection Not Established");
		}
		
		// Now return the Connection object con
		return  con;
	}
	
}
