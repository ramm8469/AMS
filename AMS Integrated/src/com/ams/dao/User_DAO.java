package com.ams.dao;

import java.util.List;

import com.ams.model.Attendance;
import com.ams.model.User;

public interface User_DAO {

	public String insert(User user);
	public String update(User user);
	public String delete(User user);
	public String getById(User user);
	public List<User> getAll();
	public Boolean loginValidation(User user);
	public String getUserType(User user);
	public int adminValidator(int id);
	public User getUserById(int id);
	public int getUserIdByName(String name);
	public List<Attendance> getAttendanceByUid(int id);
	public Boolean delUserByID(int id);
	public Boolean updateUserByID(int id,String update,String value);
	
}
