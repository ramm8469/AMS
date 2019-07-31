<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.ams.model.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin DashBoard</title>
</head>
<body>
<h1>Admin DashBoard</h1>
<hr>
<div>

<%
// Maintaining the Session and request
String uname = (String)session.getAttribute("uname");
String msg="";
msg = (String)request.getAttribute("msg");

%>

		<h1>${msg}</h1><hr>
		
		
	<h3>
	<!-- Logout module -->
	<form action="/AMS/Logout">
	<input type="submit" value="Logout">
	</form>
	</h3>
<form action="/AMS/AdminUserReg">
<table>
<tr>
<td>
<input type="number" name="uid" placeholder="Please Enter your id to register a user" required="required">
</td>
</tr>
<tr>
<td>
<input type="submit" value="Register A User" name="admin_user_reg">
</td>
</tr>
</table>
</form>
</div>

<div id="getAllUsers">
<form action="/AMS/GetAllUsers" method="get">
<input type="submit" name="submit" value="GetAllUsers">
</form>
</div>

<div>
<%
List<User> user_list = (List<User>)request.getAttribute("user_list");
if(user_list!=null){
for(User u : user_list){
	%>
	
	<div class="container">
  <table class="table table-bordered">
    <thead>
      <tr>
      	<th>UID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>UserName</th>
        <th>Email</th>
        <th>PassWord</th>
        <th>User Type</th>
        <th>DOB</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%= u.getUid() %></td>
        <td><%= u.getFname() %></td>
        <td> <%= u.getLname() %></td>
         <td><%= u.getUser_name() %></td>
          <td><%= u.getEmail() %></td>
           <td><%= u.getPassword() %></td>
            <td><%= u.getUser_type() %></td>
            <td><%= u.getDob() %></td>
      </tr>
      
    </tbody>
  </table>
</div>

<%
	}
}
%>
</div>

</body>
</html>