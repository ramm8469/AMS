<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
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

<center><h1>Subjects</h1></center>

<body>

<div class="container">

<form action="">
<table class="table table-bordered">
<thead>
<tr>
<th>Your ID</th>
<th>Suject1 Name</th>
<th>Subject2 Name</th>
<th>Subject1_Section</th>
<th>Subject2_Section</th>
</tr>
</thead>
<tbody>
      <tr>
       <td><input type="number" name="faculty_id" placeholder="Enter Id" required="required"></td>
       <td><input type="text" name="subject1" placeholder="Enter Subject1" required="required"></td>
       <td><input type="text" name="subject2" placeholder="Enter Subject2" required="required"></td>
       <td><input type="text" name="subject1_section" placeholder="Enter Subject1_Section" required="required"></td>
       <td><input type="text" name="subject2_section" placeholder="Enter Subject2_Section" required="required"></td>
      </tr>
      
    </tbody>
</table>
<input type="submit" name="submit" value="Register Subject">
</form>
</div>


</body>
