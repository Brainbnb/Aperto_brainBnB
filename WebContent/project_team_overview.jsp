<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User" import="org.aperto.brainbnb.dto.Project" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/project_team_overview.css" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src='//codepen.io/assets/editor/live/css_live_reload_init.js'></script>

</head>
<body>
<%
int id = (int)session.getAttribute("currentIndex");
//Verbindng zur Datenbank
		try{

			//loading drivers for mysql
			Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database 
			Connection con=DriverManager.getConnection
			("jdbc:mysql://db.f4.htw-berlin.de:3306/_s0551133__BrainBnB", "s0551133", "brainbnb");
		    Statement stmt = con.createStatement();%>
	<!-- NAVBAR -->
	<header>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"> <img
						src="resources/img/aperto-logo.svg" alt="Aperto" align="left"
						width="114px" height="21px" />
					</a>
				</div>
				<div>
				<%
				String user = (String)session.getAttribute("user"); 				
				String sqlEmployee = "SELECT Firstname, Surname, PicturePath FROM Employees WHERE Firstname='"+user+"'";
				ResultSet resEmployee = stmt.executeQuery(sqlEmployee);
			    while(resEmployee.next()){
				String firstname = resEmployee.getString(1);
				String surname = resEmployee.getString(2);
				String picturePath = resEmployee.getString(3);
				System.out.println(picturePath);
		 %>
					<ul class="nav navbar-nav navbar-right">
						<li class="user-images"><img
							src="<%=picturePath%>" width="50px" height="40px" />
						</li>
						<li><a href="#"> <%=firstname%> <%=surname %></a></li>
						<li class="vertical-separator">|</li>
						<li><a href="LogoutServlet"> Log out </a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> EN </a></li>
						<%} %>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div id="top">
	<%
	
	String sqlProjects = "SELECT name FROM Projects WHERE project_id='"+id+"'";
	ResultSet resProjects = stmt.executeQuery(sqlProjects);
    while(resProjects.next()){
	String projectname = resProjects.getString(1); 
	System.out.println("Project: "+projectname);%>
		<h2><%=projectname%>
		<a  class="btn_home" href="#">
  			<i class="fa fa-home fa-2x"></i></a>
  		</h2>
	</div>

	<div id="nav">
		<!-- SIDE MENU -->
		<nav id="side_menu">
			<ul class="container-fluid">
				<li id="side_id"><a href="ProjectInfoServlet?id=<%=id%>" > 
					<i class="fa fa-info fa-fw fa-2x"></i>INFORMATION</a></li>
				<li id="side_id"><a href="#">
					<i class="fa fa-user fa-fw fa-2x"></i>TEAM</a></li>
				<li id="side_id"><a href="#workflow">
					<i class="fa fa-folder-open-o fa-fw fa-2x"></i>WORKFLOW </a></li>
				<li id="side_id"><a href="#resource">
					<i class="fa fa-archive fa-fw  fa-2x"> </i>RESOURCE </a></li>
				<li id="side_id"><a href="#calendar">
					<i class="fa fa-calendar-o fa-fw fa-2x"> </i>CALENDAR </a></li>
			</ul>
		</nav>
		<%} %>
	</div>


	<!-- PAGE -->
	<!--Pattern HTML-->
	<section class="container">
		<div id="pattern" class="pattern">
			<!--Begin Pattern HTML-->
			<nav class="navigation" role="navigation">
				<ul class="nav-list">
					<li><i id="intmenuicon" class="fa fa-circle-o"><a href="#">
								member</a></i></li>
					<li><i id="intmenuicon" class="fa fa-circle-o"><a href="#">
								add worker</a></i></li>
					<li><i id="intmenuicon" class="fa fa-circle-o"><a href="#">
								add freelancer</a></i></li>
					<li><i id="intmenuicon" class="fa fa-circle-o"><a href="#">
								add skills</a></i></li>
				</ul>
			</nav>
		</div>
		<!--End Pattern HTML-->
		<section class="cf team-container">
			<h1 class="team-h1">Meet the Team</h1>
			<div id="team">
				<%
				String sqlWorker = "SELECT e.firstname, e.surname, e.picturePath, e.jobtitle FROM Employees e, Projects p, work_for w WHERE p.project_id=w.project_id AND e.employee_id=w.employee_id AND p.project_ID='"+id+"'";
				ResultSet resWorker = stmt.executeQuery(sqlWorker);
			    while(resWorker.next()){
				String firstname = resWorker.getString(1);
				String surname = resWorker.getString(2);
				String picturePath = resWorker.getString(3);
				String jobTitel = resWorker.getString(4);
				System.out.println("Worker: "+firstname);%>
							
				<div class="team-member">
					<img class="team-photo"	src="<%=picturePath%>">
					<h3><%=firstname%> <%=surname%></h3>
					<span> <%=jobTitel%> </span>
					<div class="social">
		      			<a><i class="fa fa-envelope-o"></i></a>
		      			<a><i class="fa fa-phone" href="#"></i></a>
		      			<a><i class="fa fa-facebook" href="#"></i></a>
		      			<a><i class="fa fa-linkedin" href="#"></i></a>
		      			<a><i class="fa fa-twitter" href="#"></i></a>
    				</div>
				</div>
				<%} %>
			</div>
		
		</section>

		<script src='//codepen.io/assets/editor/live/css_live_reload_init.js'></script>
	</section>
		<% 
			con.close();
					}
				catch(ClassNotFoundException err){
				out.println("DB-Driver nicht gefunden");
				out.println(err);
				}
				catch(SQLException err){
				out.println("Connect nicht möglich");
				out.println(err);
				}
				%>
</body>
</html>