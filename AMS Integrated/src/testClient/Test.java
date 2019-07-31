package testClient;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ams.dao.User_DAO;
import com.ams.dao.User_DAO_Impl;
import com.ams.model.User;

public class Test {
public static void main(String[] args) {
	User_DAO dao = new User_DAO_Impl();
	User user = new User();
	user.setFname("ram");
	user.setLname("mohan");
	user.setEmail("ram@mohan");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date dob =null;
	try {
		dob = sdf.parse("2019-07-26");
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		System.out.println(e);
	}
	user.setDob(dob);
	user.setPassword("mohan");
	user.setUser_name("ramm");
	user.setUser_type("s");
	
	String res = dao.insert(user);
	System.out.println(res);
	
}
}
