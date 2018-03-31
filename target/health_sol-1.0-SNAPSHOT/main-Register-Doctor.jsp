<html>
	<head>
		<title>Doctor Register</title>
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
  		<header class="img-responsive " style="background: url('https://safety4sea.com/wp-content/uploads/2017/02/Telemedicine-1280x640.jpg');">
  			<div class="text-center">
  				<p>Health Solutions</p>
  			</div>
  		</header>

<div class="clearfix"></div>
	    <div class="container col-md-12			">
<div class="row col-md-12			">
<div class="page-header">
<h1>Registration Form for Doctor</h1>
</div>

<form class="form-horizontal" role="form" method="post" action="Main_Servlet" enctype="multipart/form-data">
<div class="form-group">
<label for="firstName" class="col-sm-2 control-label">Name:</label>
<div class="col-sm-6">
<input type="text" name="doc_name" class="form-control" id="firstName" placeholder="Name">
</div>
</div>






<div class="form-group">
<label for="" class="col-sm-2 control-label">Gender:</label>
<div class="col-sm-6">
<label class="radio-inline">
<input type="radio" name="doc_gender" id="gender1" value="male">Male
</label>
<label class="radio-inline">
<input type="radio" name="doc_gender" id="gender2" value="female">Female
</label>
    <label class="radio-inline">
<input type="radio" name="doc_gender" id="gender2" value="female">Other
</label>
</div>
</div>



<div class="clearfix"></div>

<div class="form-group">
<div class="col-sm-15">
 <label for="spl" class="col-sm-2 control-label">Area of specialization</label>
  <div class="col-sm-6">
		<select name="doc_spec" class="selectpicker" data-live-search="true">
	  <option>Heart</option>
		<option>Lungs</option>
		<option>Brain</option>
		<option>Nerves</option>
		<option>Bones</option>
		<option>ENT</option>
		</select>
<script>
		$(document).ready(function(){
			$('#spec').selectpicker();
		});
		</script>
</div>
</div>
</div>

<div class="form-group">
<label for="phoneNo" class="col-sm-2 control-label">Phone No.:</label>
<div class="col-sm-6">
<input type="number" name="doc_phone" class="form-control" id="phoneNo" placeholder="Enter 10 Digit PhoneNo" onKeyPress="if(this.value.length==10) return false;">
</div>
</div>



<div class="form-group">
<label for="adhar" class="col-sm-2 control-label">Aadhar No:</label>
<div class="col-sm-6">
<input type="number" name="doc_aadhar" class="form-control" id="adhar" placeholder="Aadhar No." onKeyPress="if(this.value.length==12) return false;">
</div>
</div>

<div class="form-group">
<label for="lic" class="col-sm-2 control-label">License No:</label>
<div class="col-sm-6">
<input type="text" name="doc_lic" class="form-control" id="lic" placeholder="License No." onKeyPress="if(this.value.length==12) return false;">
</div>
</div>

<div class="form-group">
<label for="file1" class="col-sm-2 control-label">License Image:</label>

              <span class="control-fileupload">
								<div class="col-sm-4">
								<label><input type="file" name="lic_img" id="file1"></label>
							</div>
              </span>

            <div class="col-sm-2">
              
               <!-- 
                <button type="button" class="btn btn-primary btn-block">
                <i class="icon-upload icon-white"></i> Upload
              </button>-->
            </div>
</div>

<div class="form-group">
<label for="dob" class="col-sm-2 control-label">DOB:</label>
<div class="col-sm-6">
<input type="text" name="doc_dob" width="270" class="form-control datepicker" id="dob" placeholder="MM/DD/YYYY" maxlength="10">
<script>
        $('#dob').datepicker();
    </script>

</div>
</div>




<div class="form-group">
<label for="eMail" class="col-sm-2 control-label">Email Id:</label>
<div class="col-sm-6">
<input type="email" name="doc_email" class="form-control" id="eMail" placeholder="Email ID">
</div>
</div>



<div class="form-group">
<label for="passwd" class="col-sm-2 control-label"> Create Password:</label>
<div class="col-sm-6">
<input type="password" name="doc_pass" class="form-control" id="passwd" placeholder="Password">
</div>
</div>
<div class="form-group">
<label for="cpasswd" class="col-sm-2 control-label">Confirm Password:</label>
<div class="col-sm-6">
<input type="password" name="doc_cpass" class="form-control" id="cpasswd" placeholder="ConfirmPassword">
</div>
</div>

<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button name="doc_register" type="submit" value="doc_register" class="btn btn-primary" id="register">Register</button>
</div>
</div>
<script type="text/javascript">
var password = document.getElementById("passwd")
  , confirm_password = document.getElementById("cpasswd");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

passwd.onchange = validatePassword;
cpasswd.onkeyup = validatePassword;
</script>


</form>
<div class="page-footer text-center">
<h6>&copy; Tech Challengers 2018</h6>
</div>
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->
	</body>
</html>
