<!DOCTYPE html>
<html lang="en">
<head>
  <title>AMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="index.css" rel="stylesheet">
    
   <div>
   		 <!-- Disabling the BackButton from gaining access to the expired documents -->

	<script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
	</script>
   
   </div>

</head>
<body style="background-color: #DCDCDC">


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






     <div class="container"> 
         <div class="row">
<!--navigation start-->
<nav class="navbar navbar-expand-md bg-danger navbar-dark fixed-top " >
  <a class="navbar-brand" href="#" ><span style="font-size: 40px;font-weight: 600">AMS</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <ul class="navbar-nav  " >
      <li class="nav-item">
        <a class="nav-link" href="about.html"><span style="font-size: 20px;font-weight: 400;color: white">About</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="/AMS/AMS.html"><span style="font-size: 20px;font-weight: 400;color: white">Home</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="contact.html"><span style="font-size: 20px;font-weight: 400;color: white">Contacts</span></a>
      </li>    
    </ul>
  </div>  
</nav>
      </div>
         </div>
<br>
    <!--------restration page----------->
    <div style="margin-top: 150px">
     
        <div class="container-fluid bg">
            <div class="row">
                
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class=" col-sm-4 col-md-4 col-lg-4">
                    
                    
       <div class="row">
  <div class="card" id="contactform" style="height: 800px;width: 500px; padding: 30px 30px 30px 30px; ">
      <div class="container">
      
  <form action="/AMS/Registration">
    
     
      <p style="font-family: sans-serif;font-weight: 700;font-size: 30px;text-align: center;"> User Resistration</p>

      <div class="row">
            <div class="col-sm-6">
    <div class="form-group">
      <label for="email">First Name:</label>
      <input type="text" class="form-control" id="fname" placeholder="First name" name="fname" required="required">
    </div>
          </div>
          <div class="col-sm-6">
     
       <div class="form-group">
      <label for="email">Last Name:</label>
      <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lname" required="required">
    </div>
          </div>
      </div>
    <div class="form-group">
      <label for="el">Email:</label>
      <input type="email" class="form-control" id="el" placeholder="email" name="email" required="required">
    </div>
      
      <div class="form-group">
      <label for="un">User name:</label>
      <input type="text" class="form-control" id="un" placeholder="user name" name="user_name" required="required">
    </div>
      
       <div class="form-group">
      <label for="pw">Password:</label>
      <input type="password" class="form-control" id="pw" placeholder="password" name="password" required="required">
    </div>
      
      <div class="form-group">
          <label for="dob">Date of Birth</label>
          <input type="Date" class="form-control" id="dob" placeholder="dob" name="dob" required="required">
      </div>
      
      <label class="my-1 mr-2" for="inlineFormCustomSelectPref">User Type</label>
  <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="user_type" required="required">
    <option selected>Select.....</option>
    <option value="s">Student</option>
    <option value="f">faculty</option>
    <option value="g">Guardian</option>
  </select>
       
      <button type="submit" class="btn btn-primary btn-block" style="margin-top: 25px">Resister</button>
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

