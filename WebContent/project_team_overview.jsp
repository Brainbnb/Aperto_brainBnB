<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/project_team_overview.css"
	type="text/css" />
<link rel='stylesheet' href="resources/font/ApertoAGReg" type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src='//codepen.io/assets/editor/live/css_live_reload_init.js'></script>

</head>
<body>
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
					<ul class="nav navbar-nav navbar-right">
						<li class="user-images"><img
							src="resources/img/User_Bild_2.png" width="50px" height="40px" />
						</li>
						<li><a href="#"> Name Surname</a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> Log out </a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> EN </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div id="top">
		<h2>01-Project</h2>
	</div>
	<!-- HEADER  -->
	<div id="header">
		<!-- SEARCH CONTAINER -->
	</div>

	<div id="nav">
		<!-- SIDE MENU -->
		<nav id="side_menu">
			<ul class="container-fluid">
				<li id="side_id"><a href="#info"><i
						class="fa fa-info fa-fw fa-2x"> </i>INFORMATION</a></li>
				<li id="side_id"><a href="#"><i
						class="fa fa-user fa-fw fa-2x"> </i>TEAM</a></li>
				<li id="side_id"><a href="#workflow"><i
						class="fa fa-folder-open-o fa-fw fa-2x"></i>WORKFLOW </a></li>
				<li id="side_id"><a href="#resource"><i
						class="fa fa-archive fa-fw  fa-2x"> </i>RESOURCE </a></li>
				<li id="side_id"><a href="#calendar"><i
						class="fa fa-calendar-o fa-fw fa-2x"> </i>CALENDAR </a></li>
			</ul>
		</nav>
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
							ArrayList<Employee> employeeList = (ArrayList<Employee>) session.getAttribute("employeeList");
							if (employeeList != null) {
								System.out.println("hallo");
								for (int i = 0; i < employeeList.size(); i++) {
						%>
				<div class="team-member">
					<img class="team-photo"	src="<%=employeeList.get(i).getPicturePath()%>">
					<h3><%=employeeList.get(i).getName()%></h3>
					<span> <%=employeeList.get(i).getJobTitle()%> </span>
					<div class="social">
      			<a><i class="fa fa-envelope-o" href="mailto:calafuri.silvia@gmail.com"></i></a>
      			<a><i class="fa fa-phone" href="#"></i></a>
      			<a><i class="fa fa-facebook" href="#"></i></a>
      			<a><i class="fa fa-linkedin" href="#"></i></a>
      			<a><i class="fa fa-twitter" href="#"></i></a>
    		</div>
				</div>
				<%
							}
							}
						%>
		</div>
		</section>

		<script src='//codepen.io/assets/editor/live/css_live_reload_init.js'></script>
	</section>

</body>
</html>