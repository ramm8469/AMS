<%@ page import="java.util.*" %>
<%@ page import="com.ams.model.User" %>

<head>
<link rel="stylesheet" href="LoginModule/BootStrap4/CSS/bootstrap.css"/>
<script type="text/javascript" src="LoginModule/BootStrap4/JS/javascript.js"></script>
<script type="text/javascript" src="LoginModule/BootStrap4/JS/Jquery.js"></script>
</head>
<center>
<h1>Get All User</h1>

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

</center>