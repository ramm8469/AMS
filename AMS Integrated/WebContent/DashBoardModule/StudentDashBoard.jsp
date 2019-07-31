<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Disabling the BackButton from gaining access to the expired documents -->

<script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>

</head>
<body>
<%
/*
NOTE :
Use this code Scriptlet for every Secure pages in your website
*/

//Defining attributes for the browser to do not cache the secure pages

	// For HTTP ver : 1.1
	response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");

	// For HTTP ver : 1.0
	response.setHeader("Paragma", "no-cache");
	
	// For Proxy Servers(if some one accessing website via proxy servers)
	response.setHeader("Expires", "0");
	
	
	// Checking for the session of a user for access to the webite
	if(session.getAttribute("uname")==null){
		response.sendRedirect("/AMS/LoginModule/userLogin.jsp");
	}
%>

<!-- Student DashBoard Header -->
<div align="center">  
<h3>Welcome : ${username}</h3>
<hr>
<h4>Profile Type : Student</h4>
<h1 align="center">Student DashBoard</h1>

<!-- Logout module -->
<div align ="right">
	<h3>
	<form action="/AMS/Logout">
	<input type="submit" value="Logout">
	</form>
	</h3>
</div>	
<hr>
</div>



<!-- Student Nav Bar -->

<div id="student_nav_bar" align="left">
<a href="">Student Profile</a>
<br>
<hr>
<a href="">Today's Attendance</a>
<br>
<a href="">Total Attendance</a>
<br>
<a href="">Assignments</a>
<br>
<a href="">Notifications</a>
<br>
</div>



<!-- Current Working Area -->
<div align="center">
<h1>Current Working Area</h1>
<iframe src="/AMS/StudentDashBoard" height="400px" width="1000px" name="Current_Working_Area">View</iframe>
</div>

<!-- Notice Board -->
<div align="right">
<h1>Notice Board</h1>
</div>

</body>
</html>