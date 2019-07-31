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
<h2>${updateSuccess}</h2>
<h2>${updateUnSuccess}</h2>
<h2>${UserNotAvail}</h2>
<h2>${NoNSelected}</h2>
<br>
<hr>
<div class="container" align="center">
 <form action="/AMS/AdminUserUpdate" method="post">
  <table class="table table-bordered">
    <thead>
      <tr>
      	<th>Your UID</th>
      	<th>User UID</th>
        <th>Update Property From The List</th>
        <th>New Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input type="number" name="uid" placeholder="Enter your UID" required="required"></td>
       	<td><input type="number" name="user_uid" placeholder="Enter User UID" required="required"></td>
      	<td>
      	<select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="update" required="required">
    	 <option value="non">NON</option>
    	 <option value="fname">First Name</option>
    	 <option value="lname">Last Name</option>
    	 <option value="user_name">UserName</option>
    	 <option value="email">Email ID</option>
    	 <option value="password">PassWord</option>
    	 <option value="user_type">User Type</option>
  		</select>
      	</td>
      	<td>
      	<input type="text" name="value" placeholder="Enter new value" required="required">
      	</td>
      	</tr>
    </tbody>
  </table>
 
 <table>
 		<tr align="center">
      		<td><input type="submit" value="Update"></td>
      	</tr>
 </table>
 </form>
</div>

</body>
</html>