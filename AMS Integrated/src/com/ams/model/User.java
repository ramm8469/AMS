package com.ams.model;

import java.util.Date;

public class User {
	
	private int uid;
	private String fname;
	private String lname;
	private String user_name;
	private String email;
	private String password;
	private String user_type;
	private Date dob;
	
	

	// Creating Constructors
	public User() {
		super();
	}
	
	


	public User(String fname, String lname, String user_name, String email, String password, String user_type,
			Date dob) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.user_name = user_name;
		this.email = email;
		this.password = password;
		this.user_type = user_type;
		this.dob = dob;
	}

	// Constructor with uid for admin view
	
	public User(int uid, String fname, String lname, String user_name, String email, String password, String user_type,
			Date dob) {
		super();
		this.uid = uid;
		this.fname = fname;
		this.lname = lname;
		this.user_name = user_name;
		this.email = email;
		this.password = password;
		this.user_type = user_type;
		this.dob = dob;
	}
	
	
	
	// Constructor for LoginValidator
	public User(String user_name, String password) {
		super();
		this.user_name = user_name;
		this.password = password;
	}
	
	// Creating Getters and Setters

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getUser_type() {
		return user_type;
	}


	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}




	public int getUid() {
		return uid;
	}




	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
	
	
	
	
}




