<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="org.aperto.brainbnb.dto.Project" import="org.aperto.brainbnb.dto.User" import="java.sql.*"%>

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
<%
String plannedProject = (String) session.getAttribute("projectname");
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
		<nav class= "navbar navbar-inverse navbar-fixed-top" >
			<div class= "container-fluid">
				<div class= "navbar-header"> 
				<a class="navbar-brand" href="#">
					<img src= "resources/img/aperto-logo.svg" alt= "Aperto" align= "left" width= "114px" height= "21px" />	  </a>
				</div>
				<div>
					<ul class= "nav navbar-nav navbar-right">
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
						<li class="user-images"><img
							src="<%=picturePath%>" width="50px"
							height="40px" /></li>
						<li><a href="#"> <%=firstname%> <%=surname %>
						</a></li>
						<li class="vertical-separator">|</li>
						<li><a href="LogoutServlet">Log out </a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> EN </a></li>
						<%} %>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- MAIN LOG-IN -->
	<div id= "main" class= "container">
		<h1><%=plannedProject %></h1>
		<h2>successfully planned</h2>
	</div>
	<div id= "second" class= "container">
		<a class="btn" href="startpage.jsp">
  			<i class="fa fa-home fa-4x"></i></a>
  	</div>
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