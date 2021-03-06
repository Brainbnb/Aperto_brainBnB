<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/planned_project.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>

<body>
<% 
String plannedProject = (String) session.getAttribute("projectname");
String startdate = (String) session.getAttribute("startdate");
String enddate = (String) session.getAttribute("enddate");
String budget = (String) session.getAttribute("budget");
String plancost = (String) session.getAttribute("plancost");
String description = (String) session.getAttribute("description");


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
					<ul class="nav navbar-nav navbar-right">
						<%
						String user = (String)session.getAttribute("user"); 				
						String sqlEmployee = "SELECT Firstname, Surname, PicturePath FROM Employees WHERE Firstname='"+user+"'";
				        ResultSet resEmployee = stmt.executeQuery(sqlEmployee);
				        while(resEmployee.next()){
				        String firstname = resEmployee.getString(1);
				        String surname = resEmployee.getString(2);
				        String picturePath = resEmployee.getString(3);		         
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

	<div id="top">
		<h2>Planned Project
		<a  class="btn_home" href="startpage.jsp">
	  			<i class="fa fa-home fa-2x"></i></a>
	  	</h2>
	</div>


	<!-- PAGE -->
	<section class="section_container" style="padding-top: 8.2%">
		<div class="container">
			<form>
				<h1><%=plannedProject %></h1>
				<h2>General Information</h2>

				<div class="div_table">
					<table class="order-table">
						<tbody>
							<tr>
								<td><label class="control-label">Project name</label><i
									class="bar"></i>
								</td>
								<td id="cell_result" name="projectname"><%=plannedProject %></td>
								<td></td>
								<td></td>
							</tr>

							<tr>
								<td><label class="control-label">Start date</label><i
									class="bar"></i>
								</div></td>
								<td id="cell_result"><%=startdate %></td>
								<td><label class="control-label">Budget</label><i
									class="bar"></i>
								</div></td>
								<td id="cell_result"><%=budget %> € </td>
							</tr>

							<tr>
								<td><label class="control-label">End date</label><i
									class="bar"></i>
								</div></td>
								<td id="cell_result"><%=enddate %></td>
								<td><label class="control-label">Plan cost</label><i
									class="bar"></i>
								</div></td>
								<td id="cell_result"><%=plancost %> € </td>
							</tr>

							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- FREIWILLIGE TEXT -->
				<div class="form-group">
					<label class="control-label" id="description_label">Description</label><i
						class="bar"></i>
					<p><%=description %></p>
				</div>

				<h2 style="padding-top: 5%">Employees</h2>

				<!-- DROPDOWN MENU -->
				<div class="role_table">
					<table class="order-table">
						<tbody>
							<tr>
								<th><label for="select" id="role_label">Role 1</label></th>
								<th></th>
							<tr>
								<td>Skill 1</td>
								<td>worker 1, worker 2, worker 3</td>
							</tr>
							<tr>
								<td>Skill 2</td>
								<td>worker 4, worker 1, worker 5</td>
							</tr>
							<tr>
								<td>Skill 3</td>
								<td>worker 9, worker 2, worker 6</td>
							</tr>
							<tr>
								<td>Skill 4</td>
								<td>worker 1, worker 7, worker 3</td>
							</tr>
						</tbody>
					</table>
					<br>
					<br>
					<table class="order-table">
						<tbody>
							<tr>
								<th><label for="select" id="role_label">Role 2</label></th>
								<th></th>
							<tr>
								<td>Skill 1</td>
								<td>worker 1</td>
							</tr>
							<tr>
								<td>Skill 2</td>
								<td>worker 4, worker 1, worker 5</td>
							</tr>
							<tr>
								<td>Skill 3</td>
								<td>worker 9, worker 6</td>
							</tr>
							<tr>
								<td>Skill 4</td>
								<td>worker 1, worker 7, worker 3</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div class="col-xs-6">
					<a href="successfully_planned.jsp"><button class="btn btn-success" type="button">Save</button></a>
				</div>

				<div class="col-xs-6">
					<button class="btn pull-right" onclick="goBack()" type="button">Go
						back</button>
					<script>
							function goBack() {
    						window.location.href="DeleteProjectServlet";	}
						</script>
				</div>
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