<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AMS: Videos</title>
</head>
<body>
<%	

/*
NOTE :
Use this code Scriptlet for every Secure pages in your website
*/

	// Defining attributes for the browser to do not cache the secure pages
	
	// For HTTP ver : 1.1
	response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");

	// For HTTP ver : 1.0
	response.setHeader("Paragma", "no-cache");
	
	// For Proxy Servers(if some one accessing website via proxy servers)
	response.setHeader("Expires", "0");
	
	
	// Checking for the session user of the webite
	if(session.getAttribute("username")==null){
		response.sendRedirect("/From_Telesko/LoginModule/login.html");
	}
%>
<h2>Welcome:	${username}</h2>
<!-- Logout module -->
<form action="/From_Telesko/Logout">
	<input type="submit" value="Logout">
	</form>
	</h3>
	<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/yoj0JPu-gy8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>