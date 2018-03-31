<html>
    <head>
		<title>Health Solutions</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style-home-head.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- Include the plugin's CSS and JS: -->
    <script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css">


    <!-- Include the date-time plugin's CSS and JS: -->
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    </head>


  <body style="background-color:#cceeff">
    <nav class="navbar navbar-custom ">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="#" class="navbar-brand">Telemedicine</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Home</a></li>
          <li><a href="main-Login-Admin.jsp">Admin</a></li>
          <li><a href="General-Med.html">General Medicine</a></li>
          
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
    </nav>

    <header class="img-responsive " style="background: url('https://safety4sea.com/wp-content/uploads/2017/02/Telemedicine-1280x640.jpg');">
      <div class="text-center">
        <p>Health Solutions</p>
      </div>
    </header>


<br>

    <div class="container-fluid">

      <div style="background-color:#78BBBF" class="jumbotron col-md-6 part1">
            <h2 >For Test Centers</h2>

              <h3>Login</h3>

            <div class="clearfix"></div>



            <form class="form-horizontal" role="form" method="post" action="Main_Servlet">
              <div class="form-group">
              <!--<label for="userName" class="col-sm-2 control-label">User Name:</label>-->
              <div class="col-sm-6">
              <input type="text" name="pat_uname" class="form-control" id="uname" placeholder="User Name">
              </div>
              </div>

              <div class="form-group">
              <!--<label for="passwd" class="col-sm-2 control-label"> Enter Password:</label>-->
              <div class="col-sm-6">
              <input type="password" name="pat_pass" class="form-control" id="passwd" placeholder="Password">
              </div>
              </div>

              <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
              <button name="pat_login" type="submit" value="pat_login" class="btn btn-primary" id="Login">Login</button>
              </div>
              </div>

                
               <!-- 
              <div class="form-group">
              <div>
              <h4>Don't have an account?  &nbsp; <a type="submit" class="btn btn-primary" id="register" href='main-Register-Patient.jsp'>Create account</a></h4>
              </div>
              </div>-->


            </form>
      </div>


      <div style="background-color:#94E9FF" class="jumbotron col-md-6 part2">
            <h2 >For doctors</h2>

              <h3>Login</h3>

            <div class="clearfix"></div>



            <form class="form-horizontal" role="form" method="post" action="Main_Servlet">
              <div class="form-group">
              <!--<label for="userName" class="col-sm-2 control-label">User Name:</label>-->
              <div class="col-sm-6">
              <input type="text" name="doc_uname" class="form-control" id="uname" placeholder="User Name">
              </div>
              </div>

              <div class="form-group">
              <!--<label for="passwd" class="col-sm-2 control-label"> Enter Password:</label>-->
              <div class="col-sm-6">
              <input type="password" name="doc_pass" class="form-control" id="passwd" placeholder="Password">
              </div>
              </div>

              <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
              <button name="doc_login" type="submit" value="doc_login" class="btn btn-primary" id="Login">Login</button>
              </div>
              </div>

                
              <!--  
              <div class="form-group">
              <div>
              <h4>Don't have an account?  &nbsp; <a type="submit" class="btn btn-primary" id="register" href='main-Register-Doctor.jsp'>Create account</a></h4>
              </div>
              </div>-->


            </form>

      </div>

      <div class="container-fluid">
        <div  class="col-md-12 part1">
          <div class="col-md-6 ">
            <h3>Paving the way to growth</h3>
            <p>Telemedicine is the use of telecommunication and information technology to provide clinical health care from a distance. It has been used to overcome distance barriers and to improve access to medical services that would often not be consistently available in distant rural communities. It is also used to save lives in critical care and emergency situations.
Although there were distant precursors to telemedicine, it is essentially a product of 20th century telecommunication and information technologies. These technologies permit communications between patient and medical staff with both convenience and fidelity, as well as the transmission of medical, imaging and health informatics data from one site to another.
Early forms of telemedicine achieved with telephone and radio have been supplemented with videotelephony, advanced diagnostic methods supported by distributed client/server applications, and additionally with telemedical devices to support in-home care</p>
          </div>
          <div class="col-md-6">
            <img style="width:600px" class="img-responsive pull-right" src="http://newsdailyarticles.com/wp-content/uploads/2017/11/Telemedicine_Virtual-Presence1.jpg">
          </div>
        </div>
        <div class="clearfix"></div>
        <br></br>
        <div style="background-color:#AAC3C8" class="col-md-12 part2">
          <div class="col-md-6">
            <img class="img-responsive pull-left" style="width:600px" src="https://addiction-rep.com/wp-content/uploads/2016/05/Telemedicine-Perfect-For-Addiction-Treatment-Mental-Health.jpg">
          </div>
          <div class="col-md-6 ">
            <h3>Disambiguation</h3>
            <p>The definition of telemedicine is somewhat controversial. Some definitions (such as the definition given by the World Health Organization) include all aspects of healthcare including preventive care. The American Telemedicine Association uses the terms telemedicine and telehealth interchangeably, although it acknowledges that telehealth is sometimes used more broadly for remote health not involving active clinical treatments.
eHealth is another related term, used particularly in the U.K. and Europe, as an umbrella term that includes telehealth, electronic medical records, and other components of health information technology.
            </p>
          </div>
        </div>
        <div class="clearfix"></div>
        <br></br>
        <div  class="col-md-12 part3">
          <div class="col-md-6 ">
            <h3>Real-time interactive</h3>
            <p>Electronic consultations are possible through interactive telemedicine services which provide real-time interactions between patient and provider. Videoconferencing has been used in a wide range of clinical disciplines and settings for various purposes including management, diagnosis, counselling and monitoring of patients.</p>
          </div>
          <div class="col-md-6">
            <img class="img-responsive pull-right" style="width:600px" src="http://thearabhospital.com/wp-content/uploads/2018/02/Telemedicine.jpg">
          </div>
        </div>
        <div class="clearfix"></div>
        <br></br>
      </div>
      <div style="width:100% ; padding:20px 0px;background:gray;" class="text-center footer">Copyright &copy; reserved 2018 - Tech Challengers</div>
     
			</div>

</body>
</html>
