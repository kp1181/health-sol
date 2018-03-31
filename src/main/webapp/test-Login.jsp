<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
	<head>
		<title>Department</title>
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
     <style>
.inv {
    display: none;
}
.dropdown {
  position: relative;
  display:block;
  margin-top:0.5em;
  padding:0;
}
<!--table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}-->

tr:nth-child(even) {
    background-color: #dddddd;
}
    </style>
    </style>
	</head>
	  <body>
      <nav class="navbar navbar-custom ">
  			<div class="container-fluid">
  				<div class="navbar-header">
  					<a href="#" class="navbar-brand">Telemedicine</a>
  				</div>
  				<ul class="nav navbar-nav navbar-right">
  					<li><a href="main-Home.jsp">Home</a></li>
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

<div class="clearfix"></div>
	    <div class="container col-md-12			">
<div class="row col-md-12			">
<div class="page-header">
  <%
      String aadhar = (String)request.getSession().getAttribute("incharge_aadhar");
      out.println("<br><h1>Your aadhar is "+aadhar+"</h1><br>");
  %>
<h1>Enter details of patient</h1>
</div>
<form class="form-horizontal" role="form" method="post" action="#">
<div class="form-group">
<label for="testName" class="col-sm-2 control-label">Patient Name:</label>
<div class="col-sm-2">
<input type="text" name="pat_name" class="form-control" id="testName" placeholder="Patient Name">
</div>
<label for="testName" class="col-sm-2 control-label">Patient Id:</label>
<div class="col-sm-2">
<input type="text" name="pat_id" class="form-control" id="testName" placeholder="Patient Name">
</div>
<label for="age" class="col-sm-1 control-label">Age:</label>
<div class="col-sm-2">
<input type="text" name="age" class="form-control" id="age" placeholder="Age">
</div>
</div>
<div class="form-group">
<label for="desc" class="col-sm-2 control-label">Description:</label>
    <div class="col-sm-9">
      <input id="msg" type="text" class="form-control" name="msg" placeholder="Additional Info">
    </div>
</div>
    
<div class="form-group">
<label for="deptName" class="col-sm-2 control-label">Department:</label>
  <div class="button dropdown "> &nbsp; &nbsp; 
   <!--<select name="category" id="target">
            <option value="">Select...</option>
            <option value="Cardiologist">Cardiologist</option>
            <option value="ENT">ENT</option>
            <option value="Lungs">Lungs</option>
			<option value="Diabetes">Diabetes</option>
        </select>-->


<%
    List<String> cat1 = new ArrayList<String>();
    //cat.add("Heart");
    cat1.add("Heart");
    cat1.add("ENT");
    cat1.add("Lungs");
    
%>
    <select name="category" id="target" class="selectpicker" data-live-search="true">
<%
    out.println("<option>Select...</option>");
    for(int i=0;i<cat1.size();i++)
    {
        out.println("<option value ="+cat1.get(i)+">"+cat1.get(i)+"</option>");
    }
    out.println();
%>


</select>
<script>
        var dept = $('#target').find(":selected").text();
		$(document).ready(function(){
			$('#spec').selectpicker();
		});
		</script>

                
                
<br>
<br>

        <div id="Heart" class="inv"><br>


<u><h2 align="center">Heart</h2></u>
<h2>ANGINA</h2>
<p>
 Paroxysmal and recurrent attacks of substernalor precordial chest discomfort due to myocardial ischemia 
   <h4>Treatment</h4>
   <ul><li>glyceryl trinitrate-0.5mg-sublingually</li>
    <li>glyceryl trinitrate-transdermal patch over   chest for 16 hours -7days </li>
	  </ul>
       <h4>Prevention</h4> <ul><li>healthy balaced diet </li> 
                    <li>avoid smoking</li> 
                    <li>BP should be normal </li>
                    <li>exercise </li>
					</ul>
                     </p>

<h2>HYPERTENSION</h2>
 <p>Systolic pressure > 160mm Hg and diastolic pressure> 90mm Hg is defined as hypertension<br>
     <h4>Treatment</h4>
	 <ul><li>salt restriction </li> 
           <li>atenolol-50mg-once daily-2week </li> 
           <li>amlodipine-5mg-once daily -2week</li>
</ul>
             <h4>Prevention</h4>
			 <ul><li>healthy diet</li> 
                       <li> physical activity </li>
                       <li>maintenance of normal body weight</li>
                       <li> reduce sodium intake</li>
					   </ul>
                        </p> 




<table class="table">
    <%
    try
    {
     String cat="Heart";
    Class.forName("com.mysql.jdbc.Driver");        
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
    con.setAutoCommit(false);
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `doctors` where `spec`=?");
    ps.setString(1,cat);
    ResultSet rs1 = ps.executeQuery();
    out.println("<tr><th>Name</th><th>Deegre</th><th>Availabile On</th><th>Appointent Request</th></tr>");
                while(rs1.next())
                {
                    //String aadhar = rs1.getString("aadhar");
                    String doc_name = rs1.getString("name");
                    String doc_phone = rs1.getString("phone");
                    out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><form method='post' action='ProcessPatientRequest'><input type='hidden' name='doc_name' value="+doc_name+"><button type='submit' name='doc_phone' value="+doc_phone+">Request</button></form></td></tr>");
                    //out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><form method='post' action='ProcessPatientRequest'><input type='hidden' name='doc_name' value="+doc_name+"><input type='hidden' name='doc_phone' value="+doc_phone+"><input type='submit' value='Request'></input></form></td></tr>");
                    //out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
                }
                con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>
</table>
    </div>
        <div id="ENT" class="inv"> <br>
		 <u><h2 align="center">ENT</h2></u>
		<h3>Tuberclosis</h3>
		<p>It occurs becuase of mycobacterium tuberclosis.<br>
		<b>source of infection </b> open case of pulmonory tuberclosis</br>
		<b>modes of infection </b> inhalation,ingestion
		<br>
		<h4>Risk Factors</h4>
		<ul>
		  <li>Extremes of age</li>
		<li>Diabetis Mellitus</li>
		<li>HIV</li>
		<li>Cancer</li>
		<li>IV Drug abuses</li>
		</ul>
			
		<h4>Clinical Features</h4>
		<ul>
		  <li>Cough</li>
		<li>Afternoon Fever</li>
		<li>Weightloss</li>
		<li>Blood Stained Sputum</li>
		<li>Night Sweats</li>
		</ul>
		<h4>Preventive Measures</h4>
		<ul>
		  <li>BCG vacciation</li> 
		<li>Avoid exposure to people with active TB </li>
		<li>Healthy dist</li> 
		<li>Exercise</li> 
				</ul>
		
		<h4>Treatement</h4>
		
		<ul>
		<b>4 months</b>
	     		<li>Isoniazed - 300mg once daily + pyridoxine 15mg once daily</li>
				<li>Rifampicin - 450mg once daily before food</li>
				<li>Pyrazinamide - 750mg twice daily</li>
				<li>Ethambutor - 800mg once daily</li>
				
				<b>2 months</b>
	     		<li>Isoniazed - 300mg once daily + pyridoxine 15mg once daily</li>
				<li>Rifampicin - 450mg once daily before food</li>
				
				
		</ul>	
		</p>
		<h3>TONSILITIS</h3>
<p>
It is inflammation of tonsils which occurs because of viral infections and sometimes bacterial infections.
</p>
<p>
Clinical features-fever,sore throat,difficulty in swallowing,enlargement of tonsils.
</p>
<h4>Treatment  for three days:</h4>
<ul> 
<li>agithromycin -500mg-daily once</li>   
<li>ibuprofin-400mg-twice daily</li>
<li>paracetamol-500mg-thrice daily</li>
</ul>
</p>
<table class="table">
    <%
    try
    {
        String cat="ENT";
    Class.forName("com.mysql.jdbc.Driver");        
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
    con.setAutoCommit(false);
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `doctors` where `spec`=?");
    ps.setString(1,cat);
    ResultSet rs1 = ps.executeQuery();
    out.println("<tr><th>Name</th><th>Deegre</th><th>Availabile On</th><th>Appointent Request</th></tr>");
                while(rs1.next())
                {
                    //String aadhar = rs1.getString("aadhar");
                    String doc_name = rs1.getString("name");
                    String doc_phone = rs1.getString("phone");
                    out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><form method='post' action='ProcessPatientRequest'><input type='hidden' name='doc_name' value="+doc_name+"><input type='hidden' name='doc_phone' value="+doc_phone+"><input type='submit' value='Request'></input></form></td></tr>");
                    //out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
                }
                con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
    //out.println("<tr><td>"+cat+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
%>
</table>



        </div>
        <div id="Lungs" class="inv"> <br>
		<u><h2 align="center">Lungs</h2></u>
		<h2>Asthama</h2>
		<p>It is chronic inflamatory disoreder of bronchial tree
		<br>
		<h4>Risk Factors</h4>
		<ul>
		  <li>Genetic Predeposition</li>
		<li>Smoking</li>
		<li>Drugs</li>
		<li>Air Pollution</li>
		<li>Allergies</li>
		</ul>
			
		<h4>Clinical Features</h4>
		<ul>
		  <li>Cough</li>
		<li>Sneezing</li>
		<li>Chest</li>
		<li>Tightness</li>
		<li>Dysprea</li>
		</ul>
		<h4>Treamtment</h4>
		<ul>
		  <li>Salbutamol Nebulizer - 1 puff=200&#181;g every 6 hours</li> 
		<li>Beclometharone Nebulizer - 1 puff=100&#181;g every 4 hours </li>
		</ul>
		
		<h4>Clinical Features</h4>
	     	Avoid exposures to allergies,pollution		
		</p>
		
		
		
		
		
		
		
  <tr>
    <th>Name</th>
    <th>Deegre</th>
    <th>Availabile On</th>
    <th>Appointent Request</th>
  </tr>
 
  <table class="table">
    <%
    try
    {
        String cat="Lungs";
    Class.forName("com.mysql.jdbc.Driver");        
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
    con.setAutoCommit(false);
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `doctors` where `spec`=?");
    ps.setString(1,cat);
    ResultSet rs1 = ps.executeQuery();
    out.println("<tr><th>Name</th><th>Deegre</th><th>Availabile On</th><th>Appointent Request</th></tr>");
                while(rs1.next())
                {
                    //String aadhar = rs1.getString("aadhar");
                    String doc_name = rs1.getString("name");
                    String doc_phone = rs1.getString("phone");
                    out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><form method='post' action='ProcessPatientRequest'><input type='hidden' name='doc_name' value="+doc_name+"><input type='hidden' name='doc_phone' value="+doc_phone+"><input type='submit' value='Request'></input></form></td></tr>");
                    //out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
                }
                con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
    //out.println("<tr><td>"+cat+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
%>
</table>
  
     </div>
<div id="Diabetes" class="inv"> <br><table class="table">
<u><h2 align="center">Diabetes</h2></u>
		<h2>Diabetius Melitus</h2>
		<p>When fasting  blood sugar >120mg/dl
				<br>
		Post Prandial  blood sugar >160mg/dl<br>
		
			
		<h4>Clinical Features</h4>
		<ul>
		  <li>Polyuria</li>
		<li>Polydispsia</li>
		<li>Polyphagia</li>
		
		</ul>
		<h4>Treamtment</h4>
		<ul>
		  <li>insulin</li> 
		<li>500 metamorphin once daily</li>
		</ul>
		
		<h4>Prevention</h4><ul>
	     	 <li>Balanced Diet</li>	
			  <li>avoid packed food</li>
			   <li>food containning sugar</li></ul>
		</p>
		<h2>Febrile Convulsions</h2>
		<p>seziure with high body temparature
				<br>
		
		
			
		<h4>Clinical Features</h4>
		<ul>
		  <li>loss consiousness</li>
		<li>foaming</li>
		<li>difficulty in breathing</li>
		<li>jerking movements</li>
		<li>becoming pale</li>
		</ul>
		<h4>Treamtment</h4>
		<ul>
		  <li>paracetamol- 10mg</li> 
		<li>diazepan 0.5 mg</li>
		repeat after every 12 hours if required
		</ul>
		
		<h4>Prevention</h4><ul>
	     	 <li>Balanced Diet</li>	
			  <li>avoid packed food</li>
			   <li>food containning sugar</li></ul>
		</p>
<br>

<table class="table">
    <%
    try
    {
        String cat="Diabetes";
    Class.forName("com.mysql.jdbc.Driver");        
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
    con.setAutoCommit(false);
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `doctors` where `spec`=?");
    ps.setString(1,cat);
    ResultSet rs1 = ps.executeQuery();
    out.println("<tr><th>Name</th><th>Deegre</th><th>Availabile On</th><th>Appointent Request</th></tr>");
                while(rs1.next())
                {
                    //String aadhar = rs1.getString("aadhar");
                    String doc_name = rs1.getString("name");
                    out.println("<tr><td>"+doc_name+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
                }
                con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
    //out.println("<tr><td>"+cat+"</td><td>BMMS</td><td>Mon-Sat</td><td><a href='#'>Request</a></td></tr>"); 
%>
</table>  


    </div>





        <script>
            document
                .getElementById('target')
                .addEventListener('change', function () {
                    'use strict';
                    var vis = document.querySelector('.vis'),   
                        target = document.getElementById(this.value);
                    if (vis !== null) {
                        vis.className = 'inv';
                    }
                    if (target !== null ) {
                        target.className = 'vis';
                    }
            });
        </script>
</div>
  
 </div>
</div>
</div>
</form>
</body>
 