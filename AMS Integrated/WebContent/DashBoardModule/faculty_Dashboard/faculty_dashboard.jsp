<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Faculty Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="index.css" rel="stylesheet">
    
    <!-- Disabling the BackButton from gaining access to the expired documents -->

<script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>

</head>
<body style="background-color: #DCDCDC">
    
    
    
<nav class="navbar navbar-inverse"; style="background-color: #34495E">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"; style="color: white; font-size: 30px;font-weight: 700px;font-family: sans-serif"> AMS</a>
    </div>
    <ul class="nav navbar-nav navbar-center">
        <h1 style="color: white">Faculty Dashboard</h1>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><img src="image/outLavakush.png"; style="height: 20px;width: 20px"><a href="/AMS/Logout"; style="color: white; font-size: 20px; font-weight: 700px"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
    </ul>
  </div>
</nav>
    
 
    <!----- ifram-------->
 
<div class="container-fluid">
      <div class="row">
	  <div class="col-sm-12 col-md-2 col-lg-2">
	  <div class="card" >
	  <iframe src="/AMS/DashBoardModule/faculty_Dashboard/frame1.jsp" name="frame1"  height="700px" scrolling="yes"; style="margin-right: -30px"></iframe>
	  </div>
</div>
<div class="col-sm-12 col-md-10 col-lg-10">
	  <div class="card">
	  <iframe src="/AMS/DashBoardModule/faculty_Dashboard/frame2.jsp" name="frame2" height="700px" scrolling="yes"></iframe>
	  </div>
</div>
             
</div>
    </div>
 
</body>
</html>

 



