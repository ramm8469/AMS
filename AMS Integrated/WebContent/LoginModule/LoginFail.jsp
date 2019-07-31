<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Fail : AMS</title>
<link rel="stylesheet" href="LoginModule/BootStrap4/CSS/bootstrap.css"/>
<script type="text/javascript" src="LoginModule/BootStrap4/JS/javascript.js"></script>
<script type="text/javascript" src="LoginModule/BootStrap4/JS/Jquery.js"></script>

</head>
<body>
<%
String res = (String) request.getAttribute("login_msg");
if(res!=null && !res.isEmpty()){
%>


	
	<div class="alert alert-danger">
  <strong>Login Failed !</strong> ${login_msg }
	</div>
	
	<%
}
%>



<div class="container">
  <div class="card">
    <div class="card-body">
    	<a href="/AMS/LoginModule/userLogin.jsp">
<center><button  type="button" class="btn btn-primary btn-block">Login Again</button></center>
</a>
    </div>
  </div>
</div>
</body>
</html>