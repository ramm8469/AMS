<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>AMS : Login</title>
<link rel="stylesheet" href="BootStrap4/CSS/bootstrap.css"/>
<script type="text/javascript" src="BootStrap4/JS/javascript.js"></script>
<script type="text/javascript" src="BootStrap4/JS/Jquery.js"></script>

<!-- Disabling the BackButton from gaining access to the expired documents -->

<script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="index.css" rel="stylesheet">
    <style>
        
    </style>
</head>
<body style="background-color: #DCDCDC">
     <div class="container"> 
         <div class="row">
<!--navigation start-->
<nav class="navbar navbar-expand-md bg-danger navbar-dark fixed-top " >
  <a class="navbar-brand" href="../AMS_Home/index.html" ><span style="font-size: 40px;font-weight: 600">AMS</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <ul class="navbar-nav  " >
      <li class="nav-item">
        <a class="nav-link" href="../AMS_Home/about.html"><span style="font-size: 20px;font-weight: 400;color: white">About</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="../AMS_Home/index.html"><span style="font-size: 20px;font-weight: 400;color: white">Home</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="../AMS_Home/contact.html"><span style="font-size: 20px;font-weight: 400;color: white">Contacts</span></a>
      </li>    
    </ul>
  </div>  
</nav>
      </div>
         </div>
<br>
    <!--------login page----------->
    <div style="margin-top: 50px">
     
        <div class="container-fluid bg">
            <div class="row">
                
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class=" col-sm-4 col-md-4 col-lg-4">
                    
                    
       <div class="row">
  <div class="card" id="contactform" style="height: 500px;width: 500px;margin: 40px 40px 40px 40px;padding: 30px 30px 30px 30px;border-radius: 8%;border-bottom: 5px #3399ff solid">
      <div class="container">
      <center> <img src="log_icon.png" style="height: 150px; width: 150px"></center>
  
  
  <form action="../LoginValidater" method="post">
  
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter username" name="uname">
    </div>
    <div class="form-group">
      <label for="mb">Password</label>
      <input type="password" class="form-control" id="pd" placeholder="password" name="pass">
    </div>
          
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
       <button type="submit" class="btn btn-primary btn-block" style="background-color: #3399ff; ">Login</button>
      <a href="ForgotPass/ForgotPass.jsp"><p style="text-align: right">Forget password</p> </a>
  </form>
</div>
</div>
<div class="col-md-4 col-sm-4 col-xs-12"></div>
                 
        </div>
        </div>
    </div>
</div>
    <!--footer row start-->
    
    <div class="row" style="margin-top: 100px;">
        <div class="footer" style="height: auto;350px;width: 100%;background-color: firebrick;">
            <div class="container">
        <div class="row">
        <div class="col-sm-12 col-md-4 col-lg-4">
             <h2 style="font-weight: 800;font-family: serif;color: white;font-size: 30px;margin: 20px 20px 20px 20px">Vision & Mission</h2>
        <p style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">To emerge as a “Centre for Excellence” offering Technical Education and Research Opportunities of very high standards to students, develop the overall personality of an individual,  instill high levels of discipline and strive to set global standards, making our students technically superior and ethically strong who in turn shall contribute to the advancement of society and humankind.</p>
            </div> 
            <div class="col-sm-12 col-md-4 col-lg-4">
                  <h2 style="font-weight: 800;font-family: serif;color: white;font-size: 30px;margin: 20px 20px 20px 20px">Students</h2>
                  <ul>
                    <li style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Value of education</li>
                    <li style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Activity</li>
                    <li style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Library</li>
                    <li style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Anti-Ragging</li>
                </ul>
            </div> 
            <div class="col-sm-12 col-md-4 col-lg-4">
              <h2 style="font-weight: 800;font-family: serif;color: white;font-size: 30px;margin: 20px 20px 20px 20px">Contact Us</h2>
                 <p style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Email- teamalpha@gmail.com</p>
                <p style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;"> Mobile- +91-7800504447</p>
                <p style="margin: 0px 20px 20px 20px;font-style: normal;font-family: sans-serif;font-weight: 200; color: white;">Phone- 0120 232 2655</p>
            </div> 
        </div>
        </div>
        </div>
    </div>
  
   </div>
</body>
</html>