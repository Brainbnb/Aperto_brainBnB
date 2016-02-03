<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="org.aperto.brainbnb.dto.Project" import="org.aperto.brainbnb.dto.User"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/successfully_planned.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	
</head>
<body>

	<!-- NAVBAR -->
	<header>
		<nav class= "navbar navbar-inverse navbar-fixed-top" >
			<div class= "container-fluid">
				<div class= "navbar-header"> 
				<a class="navbar-brand" href="#">
					<img src= "resources/img/aperto-logo.svg" alt= "Aperto" align= "left" width= "114px" height= "21px" />	  </a>
				</div>
				<div>
					<ul class= "nav navbar-nav navbar-right">
						<li class="user-images"> <img src= "resources/img/User_Bild_2.png" width="50px" height= "40px"/> </li>
						<li> <a href= "#"><% User user = (User) session.getAttribute("user");
			 					 %> <%=user.getUserName()%></a> </li>
						<li class="vertical-separator"> | </li>
						<li> <a href= "LogoutServlet"> Log out </a> </li>
						<li class="vertical-separator"> | </li>
						<li> <a href= "#"> EN </a> </li>	
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- MAIN LOG-IN -->
	<div id= "main" class= "container">
		<h1>Project01</h1>
		<h2>successfully planned</h2>
	</div>
	<div id= "second" class= "container">
		<a class="btn" href="#">
  			<i class="fa fa-home fa-4x"></i></a>
  	</div>

</body>
</html>