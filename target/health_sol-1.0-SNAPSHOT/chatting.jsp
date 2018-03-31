
<!--
<html>
    <head>
        <title>Chat</title>
    </head>
    <body>

        <table>
            <tr>
                <td colspan="2">
                    <input type="text" id="from" placeholder="Username"/>
                    <button type="button" onclick="connect();" >Connect</button>
                </td>
            </tr>
            <tr>
                <td>
                    <textarea readonly="true" rows="10" cols="80" id="log"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" size="15" id="to" placeholder="To"/>
                    <input type="text" size="51" id="msg" placeholder="Message"/>
                    <button type="button" onclick="send();" >Send</button>
                </td>
            </tr>
        </table>
    </body>

    <script src="js/script.js"></script>

</html>


-->



<html>
    <title>Health Solutions</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style-home-head.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    
    <script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css">


    
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
  					<li><a href="main-Home.html">Home</a></li>
						<li><a href="#">Admin</a></li>
  					<li><a href="#">Contact Us</a></li>
  				</ul>
  			</div>

  		</nav>
  		<header class="img-responsive " style="background: url('https://safety4sea.com/wp-content/uploads/2017/02/Telemedicine-1280x640.jpg');">
  			<div class="text-center">
  				<p>Health Solutions</p>
  			</div>
  		</header>
        <h1>Hello</h1>
        <table>
            <tr>
                <td colspan="2">
                    
                    From           :<input type='text' id='from' ><br>
                    To &nbsp &nbsp :<input type='text' id='to'>
                    
                    <button type="button" onclick="connect();" >Connect</button>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <textarea readonly="true" rows="10" cols="80" id="log"></textarea>
                </td>
                
            </tr>
            <tr>
                <td>
                    
                    <input type="text" size="51" id="msg" placeholder="Message"/>
                    <button type="button" onclick="send();" >Send</button>
                </td>
            </tr>
        </table>
    </body>
    <script src="js/script.js"></script>

</html>
