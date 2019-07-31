<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../LoginModule/BootStrap4/CSS/bootstrap.css"/>
<script type="text/javascript" src="../../../LoginModule/BootStrap4/JS/javascript.js"></script>
<script type="text/javascript" src="../../../LoginModule/BootStrap4/JS/Jquery.js"></script>

</head>
<body>
<h2>${msg}</h2>
<h2>${noUser}</h2>
<hr>
<div class = container>

<form action="/AMS/AdminUserReg">
<table class="table table-bordered">
<tr>
<td>Please Insert your UID : </td>
<td>
<input type="number" name="uid" placeholder="Please Enter your id to register a user" required="required">
</td>
</tr>
<tr>
<center><td>
<button class=" button btn-primary">
<input type="submit" value="Register A User" name="admin_user_reg">
</button>
</td></center>
</tr>
</table>
</form>
</div>



</body>
</html>