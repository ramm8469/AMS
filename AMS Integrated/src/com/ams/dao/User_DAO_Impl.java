package com.ams.dao;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.ams.dbutil.MyConnection;
import com.ams.model.Attendance;
import com.ams.model.Student;
import com.ams.model.User;

public class User_DAO_Impl  implements User_DAO{

	private Connection conn = new MyConnection().getConnection();

	@Override
	public String insert(User user) {
		String flag = "Fail";
		
		// Create prepared statement for insertion
		String query = "insert into user_tbl(fname,lname,user_name,email,password,user_type,dob) values(?,?,?,?,?,?,?)";
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement(query);
			
//			System.out.println("From DAO IMPL."+user.getFname()+" : "+user.getLname()+
//					" : "+user.getEmail()+" : "+user.getUser_name()+" : "+user.getPassword()+
//					" : "+user.getUser_type()+" : "+user.getDob());
//			
			// setting the value
			pst.setString(1, user.getFname());
			pst.setString(2, user.getLname());
			pst.setString(3, user.getUser_name());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPassword());
			pst.setString(6, user.getUser_type());
			pst.setDate(7, new java.sql.Date(user.getDob().getTime()));
			
			//Executing the query
			int ress = pst.executeUpdate();
			System.out.println(ress);
			if(ress>0){
				flag = "Success";
			}
			
			
			
		} catch (SQLException e) {
			System.out.println("Error in insertion DAO\n"+e);
		}
		return flag;
	}

	public String update(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getById(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		List<User> list = new ArrayList<User>();
		String query = "select * from user_tbl";
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			// Create the statement
			stmt = conn.createStatement();
			
			// Execute the statement
			rs = stmt.executeQuery(query);
			
			//process the result
			while(rs.next()){
				
						
				User user = new User();
				
				// Read the data from the database
				user.setUid(rs.getInt("uid"));
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setUser_name(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
				user.setUser_type(rs.getString("user_type"));
				user.setDob(rs.getDate("dob"));
				user.setEmail(rs.getString("email"));
				
				// Add the student to the student list
				list.add(user);
			}
			
		}catch(Exception e){
			System.out.println("Error : \n"+e);
		}
		System.out.println("READING");
		
		return list;
	}

	@Override
	public Boolean loginValidation(User user) {
		
		Boolean flag = false;
		String uname = user.getUser_name();
		String pass = user .getPassword();
		String db_uname = "";
		String db_pass = "";
		
		
		String query ="select user_name,passWord from user_tbl where user_name = \""+uname+"\";";
		
		// Create Statement object
		try {
			Statement stmt = conn.createStatement();
			ResultSet rt = stmt.executeQuery(query);
			
			while(rt.next()){
				db_uname = rt.getString("user_name");
				db_pass = rt.getString("passWord");
				
			}
			
			if(uname.equals(db_uname) && pass.equals(db_pass)){
				flag = true;
				System.out.println("Login validated");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
		
		return flag;
		}
	
	

	@Override
	public String getUserType(User user) {
		String uname = user.getUser_name();
		String query ="select user_type from user_tbl where user_name =\""+uname+"\";";
		String db_name = "";
		String db_user_type="";
		
		// Create Statement object
				try {
					Statement stmt = conn.createStatement();
					ResultSet rt = stmt.executeQuery(query);
					System.out.println("query done");
					while(rt.next()){
						//db_name = rt.getString("user_name");
						db_user_type = rt.getString("user_type");
						
					}
//					if(user.getUser_name().equals(db_name)){
//						return db_user_type;
//					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e+" : testing ok");
				}
					
		return db_user_type;
	}

	@Override
	public int adminValidator(int id) {
		int ids =0;
		String query  = "select uid from user_tbl where uid="+id+";";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rt = stmt.executeQuery(query);
			
			// getting the uid from the database
				while(rt.next()){
					ids = rt.getInt("uid");
				}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Admin validation error \n"+e);
		}
		
		if(id == ids){
			return ids;	
		}
		
		return 0;
	}
	

	@Override
	public User getUserById(int id) {
		String query = " select * from user_tbl where uid="+id;
		Statement stmt;
		System.out.println(query);
		User user = new User();
		Boolean flag = false;
		try {
			stmt = conn.createStatement();
			ResultSet rt = stmt.executeQuery(query);
			
			while(rt.next()){
				user.setUser_name(rt.getString("user_name"));
				user.setUser_type(rt.getString("user_type"));
				flag = true;
			}
		} catch (SQLException e) {
			
			System.out.println("Error in UserGetByID \n"+e);
		}
		
		if(flag){
			return user;
		}
		return null;
	}

	@Override
	public int getUserIdByName(String name) {
		String query = "select uid from user_tbl where user_name=\""+name+"\"";
		Statement stmt;
		int value=0;
		try {
			stmt = conn.createStatement();
			ResultSet rt = stmt.executeQuery(query);
			while(rt.next()){
				value = rt.getInt("uid");
			}
			
		} catch (SQLException e) {
			System.out.println("Error in getUserIdByName \n"+e);
		}
		
		return value;
	}

	@Override
	public List<Attendance> getAttendanceByUid(int id) {
		
		// Create list of attendance object
		List<Attendance> list = new ArrayList<Attendance>();
		// Create Attendacne object
		Attendance attend = new Attendance();
		
		// DataBase Work
		String query = "select * from attendance_tbl where attendance_fk="+id+";";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rt = stmt.executeQuery(query);
			
			// Set the data to the attendance object
			while(rt.next()){
				//attend.setDate(rt.getDate("date"));
				attend.setSubject1(rt.getInt("subject1"));
				attend.setSubject2(rt.getInt("subject2"));
				attend.setSubject3(rt.getInt("subject3"));
				attend.setSubject4(rt.getInt("subject4"));
				attend.setSubject5(rt.getInt("subject5"));
				attend.setSubject6(rt.getInt("subject6"));
				attend.setSubject7(rt.getInt("subject7"));
				attend.setSubject8(rt.getInt("subject8"));
				attend.setDaily_attendance(rt.getFloat("daily_attendance"));
				list.add(attend);
			}
		} catch (SQLException e) {
			System.out.println("Error in getAttendanceById method \n"+e);
		}
		
		
		return list;
	}

	@Override
	public Boolean delUserByID(int id) {
		Boolean flag = false;
		String query = "delete from user_tbl where uid = "+id+";";
		
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(query);
			int res = pst.executeUpdate();
			if(res>0){
				flag = true;
			}
		} catch (SQLException e) {
			System.out.println("Error in delByUserID\n"+e);
		}
		
		return flag;
	}

	@Override
	public Boolean updateUserByID(int id,String update,String value) {
		Boolean flag = false;
		
		String query = "update user_tbl set "+update+"="+"\""+value+"\" where uid="+id+";";
		//System.out.println(query);
		try {
			PreparedStatement pst = conn.prepareStatement(query);
			int res = pst.executeUpdate();
			if(res>0){
				flag = true;
			}
		} catch (SQLException e) {
			System.out.println("Error in updateUserById-Admin method \n"+e);
		}
		return flag;
	}

	
	
	
}
