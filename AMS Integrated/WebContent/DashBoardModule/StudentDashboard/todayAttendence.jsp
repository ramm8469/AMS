
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

<center><h1>Today's Attendence</h1></center>
