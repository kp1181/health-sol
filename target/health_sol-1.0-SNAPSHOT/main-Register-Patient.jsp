<html>
	<head>
		<title>Patients</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- Include the plugin's CSS and JS: -->
    <script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css">


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


	    <div class="container">
<div class="row ">
<div class="page-header">
<h1>Registration Form for Test Centers</h1>
</div>

<form class="form-horizontal"  name ="f1" role="form" method="post" action="Main_Servlet" onsubmit="return check12(this)" >

    
    <div class="form-group">
<label for="testName" class="col-sm-2 control-label">Test Center Name:</label>
<div class="col-sm-6">
<input type="text" name="center_name" class="form-control" id="testName" placeholder="Test Center Name">
</div>
</div>
    
        <div class="form-group">
<label for="testName" class="col-sm-2 control-label">Test Center Address:</label>
<div class="col-sm-6" >
<textarea type="text" name="center_address" class="form-control" id="testName" placeholder="Test Center Address"></textarea>
</div>
</div>
    
    <div class="form-group">
<label for="phoneNo" class="col-sm-2 control-label">Test Center Pincode:</label>
<div class="col-sm-6">
<input type="text" name="center_pin" class="form-control" id="phoneNo" placeholder="Enter 10 Digit PhoneNo" onKeyPress="if(this.value.length==10) return false;">
</div>
</div>
    
    
    <div class="form-group">
<label for="testName" class="col-sm-2 control-label">Incharge Name:</label>
<div class="col-sm-6">
<input type="text" name="inc_name" class="form-control" id="testName" placeholder="Incharge Name">
</div>
</div>


<div class="form-group">
<label  class="col-sm-2 control-label">Gender:</label>
<div  class="col-sm-2">
<label class="radio-inline">
<input type="radio" name="inc_gender" id="pat_gender" value="male">Male
</label>
<label class="radio-inline">
<input type="radio" name="inc_gender" id="pat_gender" value="female">Female
</label>
<label class="radio-inline">
<input type="radio" name="inc_gender" id="pat_gender" value="female">Other
</label>
</div>

</div>







<div class="form-group">
<label for="adhar" class="col-sm-2 control-label">Aadhar No:</label>
<div class="col-sm-6">
<input type="text" name="inc_aadhar" class="form-control" id="adhar" placeholder="Aadhar No." ><div style="color : red;" id="d1"></div>
<script type="text/javascript">

    function check12()
    {

        var a=document.f1.inc_aadhar.value;

        len=a.length;
        if(len==12)
            return true;
        else
        {
            document.getElementById("d1").innerHTML= "Aadhar no should be of length 12!";
            alert("invalied")
            return false;
        }



    }
</script>
</div>
</div>



<div class="form-group">
<label for="dob" class="col-sm-2 control-label">DOB:</label>
<div class="col-sm-6">
<input type="text" name="inc_dob" width="270" class="form-control datepicker" id="dob" placeholder=" MM/DD/YYYY" maxlength="10">
<script>
        $('#dob').datepicker();
    </script>

</div>
</div>





<div class="form-group">
<label for="phoneNo" class="col-sm-2 control-label">Phone No.:</label>
<div class="col-sm-6">
<input type="text" name="inc_phone" class="form-control" id="phoneNo" placeholder="Enter 10 Digit PhoneNo" onKeyPress="if(this.value.length==10) return false;">
</div>
</div>

<div class="form-group">
<label for="passwd" class="col-sm-2 control-label"> Create Password:</label>
<div class="col-sm-6">
<input type="password" name="inc_pass" class="form-control" id="passwd" placeholder="Password">
</div>
</div>
<div class="form-group">
<label for="cpasswd" class="col-sm-2 control-label">Confirm Password:</label>
<div class="col-sm-6">
<input type="password" name="inc_cpass" class="form-control" id="cpasswd" placeholder="ConfirmPassword">
</div>
</div>

    
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<input name="tc" type="checkbox" value="check" class="form-check-input " id="agree">I agree to the terms and conditions</button>
</div>
</div>

    
    
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button name="pat_register" type="submit" value="pat_register" class="btn btn-primary" id="register"   >Register</button>
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
<h6>&copy; Tech Challangers 2018</h6>
</div>
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->
	</body>
</html>
