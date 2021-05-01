<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="CSIT214_project.student_dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>LOGIN PAGE</title>
	<style>
		.loginContainer
		{
			width:500px;
			height:400px;
			border:1px solid #A4A4A4;
			margin:100px auto 0px auto;
			background-color: white;
		}
		.loginPart
		{
			width:350px;
			height:350px;
			margin:20px auto 0px auto;
		}
		.loginHeader
		{
			width:498.5px;
			height:40px;
			background-color:#DCDCDC;
			border-bottom:1px solid #A4A4A4;
		}
		.loginHeaderSpan
		{
			font-size:18px;
			font-weight:bold;
			font-family:Arial;
			margin-left:20px;
			padding-top:7px;
		}
		#userLabel
		{
			margin-top:20px;
		}
		#user
		{
			width:347px; 
			height:40px; 
			background-color:#E6FFFF; 
			margin:10px auto 0px auto;
		}
		#pwd
		{
			width:347px; 
			height:40px; 
			background-color:#E6FFFF; 
			margin:10px auto 0px auto;
		}
		#btn1
		{
			width:160px;
			height:45px;
			font-size:15px;
			border:1px solid #A4A4A4;
		}
		#btn2
		{
			width:160px;
			height:45px;
			font-size:15px;
			border:1px solid #A4A4A4;
		}
		footer
		{
			margin-top:-20px;
			color:white;
			text-align:center;
		}
		/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
	    .row.content {height: 580px;}
	    
	    /* Set gray background color and 100% height */
	    .sidenav {
	      background-color: #f1f1f1;
	      height: 100%;
	    }
	        
	    /* On small screens, set height to 'auto' for the grid */
	    @media screen and (max-width: 767px) {
	      .row.content {height: auto;} 
	    }
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<div class="navbar-header">
    			<span><img src="https://solss.uow.edu.au/images/logo_uow.png" width="150" height="50"/></span>
      			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
     			</button>
    		</div>
    	<div class="collapse navbar-collapse" id="myNavbar">
      		<ul class="nav navbar-nav navbar-right">
		        <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Help</a></li>
		        <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                  <li><a href="Login.aspx"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
      		</ul>
    	</div>
 	</div>
</nav>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs" style="width:300px; margin-top:-20px;">
      <h4 style="margin-top:20px; margin-left:10px;"><asp:Label ID="label_studFullName" runat="server" Text=""></asp:Label></h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active">
        	<a href="#section1" style="margin-top:10px;"><span class="glyphicon glyphicon-dashboard"></span> &nbsp;Dashboard</a>
        </li>
          
        <li><a><asp:Label ID="label_sub1" runat="server" Text=""></asp:Label></a></li>
        <li><a><asp:Label ID="label_sub2" runat="server" Text=""></asp:Label></a></li>
        <li><a><asp:Label ID="label_sub3" runat="server" Text=""></asp:Label></a></li>
        <li><a><asp:Label ID="label_sub4" runat="server" Text=""></asp:Label></a></li>
      </ul><br/>
    </div>
    <br/>
    
    <div class="col-sm-9">
      <div class="well">
        <h4>Dashboard</h4>
        <p>Hi, student. Welcome to UOW attendance system.</p>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
          	<img src="https://www.trzcacak.rs/myfile/full/211-2112519_subject-icon-png-learn-english-icon-png.png" width="75" height="75" alt="studentImg" style="float:left;"/>
            <h4><asp:Label ID="label_sub1_1" runat="server" Text=""></asp:Label></h4>
            <p>&nbsp; Major</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
          	<img src="https://cdn3.iconfinder.com/data/icons/dental-blue-icons/512/Untitled-6.png" width="75" height="75" alt="studentImg" style="float:left;"/>
            <h4><asp:Label ID="label_sub2_1" runat="server" Text=""></asp:Label></h4>
            <p>&nbsp; Major</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
          	<img src="https://i.pinimg.com/originals/2c/fc/93/2cfc93d7665f5d7728782700e50596e3.png" width="75" height="75" alt="studentImg" style="float:left;"/>
            <h4><asp:Label ID="label_sub3_1" runat="server" Text=""></asp:Label></h4>
            <p>&nbsp; Major</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
          	<img src="https://docksidephysio.com/wp-content/uploads/2018/08/book-icon.png" width="75" height="75" alt="studentImg" style="float:left;"/>
            <h4><asp:Label ID="label_sub4_1" runat="server" Text=""></asp:Label></h4>
            <p>&nbsp; Major</p> 
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="well">
            <h4>Today's attendance</h4> 
            <p>&nbsp;</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Announcements</h4> 
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="well">
            <h4>Weekly attendance</h4> 
            <p>&nbsp;</p> 
          </div>
        </div>
        <div class="col-sm-4">
         <div class="well">
            <h4>Contact</h4> 
            <p>&nbsp;</p> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<footer class="navbar navbar-inverse">
  	<p><a href="https://www.uow.edu.au/student/sols-help/" target="_blank">SOLS Help</a> | Comments and questions should be directed to <a href="http://www.uow.edu.au/student/enquiries/index.html" target="_blank">Student Central</a><br />
Copyright &copy; 2019 University of Wollongong. CRICOS Provider No: 00102E | <a href="https://www.uow.edu.au/privacy/" target="_blank">Privacy</a> | <a href="https://www.uow.edu.au/about/governance/copyright-and-disclaimer/" target="_blank">Disclaimer</a> |</p>
</footer>
</body>
</html>