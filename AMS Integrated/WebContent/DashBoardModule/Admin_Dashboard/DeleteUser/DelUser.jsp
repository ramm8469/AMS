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
<h2>${SelfDel}</h2>
<h2>${DelUser}</h2>
<h2>${DelUserFail}</h2>
<h2>${UserTypeMismatch}</h2>
<hr>


<div class="container" align="center">
 <form action="/AMS/AdminUserDel" method="post">
  <table class="table table-bordered">
    <thead>
      <tr>
      	<th>Your UID</th>
      	<th>User UID</th>
        <th>User Type</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input type="number" name="uid" placeholder="Enter your UID" required="required"></td>
       	<td><input type="number" name="user_uid" placeholder="Enter User UID" required="required"></td>
      	<td><input type="text" name="utype" placeholder="Enter User_Type" required="required"></td>
      </tr>
      	<tr align="center">
      	<td ><input type="submit" value="Delete"></td>
      	</tr>
    </tbody>
  </table>
 
 </form>
</div>
</body>
</html>