package com.ams.model;

public class Faculty {

	private int faculty_id;
	private String branch;
	private String subject;
	private String address;
	
	// Creating Constructors
	public Faculty() {
		super();
	}

	public Faculty(int faculty_id, String branch, String subject, String address) {
		super();
		this.faculty_id = faculty_id;
		this.branch = branch;
		this.subject = subject;
		this.address = address;
	}

	// Getters and Setters
	public int getFaculty_id() {
		return faculty_id;
	}

	public void setFaculty_id(int faculty_id) {
		this.faculty_id = faculty_id;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
	
	
}
