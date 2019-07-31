package com.ams.model;

public class Student {
	private int sid;
	private int roll;
	private String section;
	private String branch;
	private int year;
	private String father_name;
	private String mother_name;
	private String address;
	private String course;
	private String semester;
	
	// Creating Constructors
	public Student() {
		super();
	}

	public Student(int roll, String section, String branch, int year, String father_name, String mother_name,
			String address,int sid,String course,String semester) {
		super();
		this.sid = sid;
		this.roll = roll;
		this.section = section;
		this.branch = branch;
		this.year = year;
		this.father_name = father_name;
		this.mother_name = mother_name;
		this.address = address;
		this.course = course;
		this.semester = semester;
	}
	
	// Generating Getters and Setters

	public int getRoll() {
		return roll;
	}

	public void setRoll(int roll) {
		this.roll = roll;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getFather_name() {
		return father_name;
	}

	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}

	public String getMother_name() {
		return mother_name;
	}

	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	
	
	
	
}
