<%-- 
    Document   : doc-Login
    Created on : 29 Mar, 2018, 7:17:16 PM
    Author     : Krishna Prasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<title>Doctor Logged In</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- Include the plugin's CSS and JS: -->
    <script type="text/javascript" src="js/bootstrap-select.js"></script>
    <link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">


    <!-- Include the date-time plugin's CSS and JS: -->
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>

	</head>
    <body>
        <nav class="navbar navbar-custom ">
  			<div class="container-fluid">
  				<div class="navbar-header">
  					<a href="#" class="navbar-brand">Telemedicine</a>
  				</div>
  				<ul class="nav navbar-nav navbar-right">
  					<li><a href="main-Home.jsp">Home</a></li>
						<li><a href="main-Login-Admin.jsp">Admin</a></li>
  					<li><a href="#">Contact Us</a></li>
  				</ul>
  			</div>

  		</nav>
  		<header class="img-responsive" style="background: url('https://safety4sea.com/wp-content/uploads/2017/02/Telemedicine-1280x640.jpg');">
  			<div class="text-center">
  				<p>Health Solutions</p>
  			</div>
  		</header>
        <%
            String aadhar = (String)request.getSession().getAttribute("aadhar");
            String doc_name = (String)request.getSession().getAttribute("doc_name");
            out.println("<br><h1>Hello Mr."+doc_name+" your aadhar number is "+aadhar);
        %>
        <div class="col-sm-offset-2 col-sm-10">
            <a href="main-chat.jsp"><button name="doc_go_online" type="submit" onclick="main-chat.jsp" value="doc_go_online" class="btn btn-primary" id="register"   >Go online</button></a>
</div>
    </body>
</html>
