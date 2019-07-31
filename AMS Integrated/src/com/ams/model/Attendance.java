package com.ams.model;

import java.util.Date;

public class Attendance {
 private Date date;
 private int subject1;
 private int subject2;
 private int subject3;
 private int subject4;
 private int subject5;
 private int subject6;
 private int subject7;
 private int subject8;
 private float daily_attendance;

//Creating Constructors
 public Attendance() {
	super();
}

public Attendance(Date date, int subject1, int subject2, int subject3, int subject4, int subject5, int subject6,
		int subject7, int subject8, float daily_attendance) {
	super();
	this.date = date;
	this.subject1 = subject1;
	this.subject2 = subject2;
	this.subject3 = subject3;
	this.subject4 = subject4;
	this.subject5 = subject5;
	this.subject6 = subject6;
	this.subject7 = subject7;
	this.subject8 = subject8;
	this.daily_attendance = daily_attendance;
}


//Getters and Setters
public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}

public int getSubject1() {
	return subject1;
}

public void setSubject1(int subject1) {
	this.subject1 = subject1;
}

public int getSubject2() {
	return subject2;
}

public void setSubject2(int subject2) {
	this.subject2 = subject2;
}

public int getSubject3() {
	return subject3;
}

public void setSubject3(int subject3) {
	this.subject3 = subject3;
}

public int getSubject4() {
	return subject4;
}

public void setSubject4(int subject4) {
	this.subject4 = subject4;
}

public int getSubject5() {
	return subject5;
}

public void setSubject5(int subject5) {
	this.subject5 = subject5;
}

public int getSubject6() {
	return subject6;
}

public void setSubject6(int subject6) {
	this.subject6 = subject6;
}

public int getSubject7() {
	return subject7;
}

public void setSubject7(int subject7) {
	this.subject7 = subject7;
}

public int getSubject8() {
	return subject8;
}

public void setSubject8(int subject8) {
	this.subject8 = subject8;
}

public float getDaily_attendance() {
	return daily_attendance;
}

public void setDaily_attendance(float daily_attendance) {
	this.daily_attendance = daily_attendance;
}










 
 
 
}
