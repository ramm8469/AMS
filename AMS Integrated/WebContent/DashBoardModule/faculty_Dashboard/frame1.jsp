<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#34495E">

<div class="container-fluid">
<div class="row">
<div class="col-sm-12 col-md-2 col-lg-2">
<center><h2 style="color:white;font-family:serif;font-weight:700;" >DashBoard</h2></center>
<div>
<center><img src="image/user.png" alt="user image" height="100px" width="100px" ></center>
    <center><a href="#"><p style="text-align:center;color:white"  >
    
  <%
String name = (String) session.getAttribute("uname");
	System.out.print(name);
int val = (int)session.getAttribute("uid");
%>
Welcome : <%= name %>
<br>
UID : <%=val %>
    
    </p></a></center>

</div>

<div class="row">
<div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background-color: white; color: black; margin-left: 30px">
      Section Attendance
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="SectionA_Attendance.jsp" target="frame2">Section A</a>
      <a class="dropdown-item" href="SectionB_Attendance.jsp" target="frame2">Section B</a>
      <a class="dropdown-item" href="SectionC_Attendance.jsp" target="frame2">Section C</a>
    </div>
  </div></br>
    <div class="container-fluid">
 
<div class="row">
<div>
    <a href="subject.jsp"; target="frame2"><button type="button" class="btn" style="width:150px;background-color:white;color:black;margin-left:40px;margin-top:20px;">Subject</button></a>
</div>
</div>

</div>
 
</br>
<div class="container-fluid">
 
<div class="row">
<div>
    <a href="Assignment.jsp"; target="frame2"><button type="button" class="btn" style="width:150px;background-color:white;color:black;margin-left:40px;margin-top:20px;">Assignments</button></a>
</div>
</div>

</div>
    
    <div class="container-fluid">
 
<div class="row">
    
<div> 
    <a href="Notification.jsp"; target="frame2"> <button type="button" class="btn" style="width:150px;background-color:white;color:black;margin-left:40px;margin-top:20px;">Notification</button></a>
</div>
</div>

</div>

</div>
    </div>

</body>
</html>
