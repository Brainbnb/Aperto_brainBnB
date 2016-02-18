<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"
	import="org.aperto.brainbnb.dto.Project"
	import="org.aperto.brainbnb.dto.User" import="java.sql.*" import="java.text.DateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/project_info.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>
<body>
	<%
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
				String picturePath = resEmployee.getString(3);%>
					<ul class="nav navbar-nav navbar-right">
						<li class="user-images"><img src="<%=picturePath%>"
							width="50px" height="40px" /></li>
						<li><a href="#"> <%=firstname%> <%=surname%></a></li>
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
		<%
	
	int id = (int)session.getAttribute("currentIndex");
	String sqlProject = "SELECT p.name, e.firstname , e.surname, p.budget, p.plancost, p.description, p.startdate, p.enddate FROM Projects p, Employees e WHERE p.project_id='"+id+"' AND p.projectmanager=e.employee_id";
	ResultSet resProject = stmt.executeQuery(sqlProject);
    while(resProject.next()){
	String projectName = resProject.getString(1); 
	String employeeFirstName = resProject.getString(2);
	String employeeLastName = resProject.getString(3);
	String budget = resProject.getString(4);
	String planCost = resProject.getString(5);
	String description = resProject.getString(6);
	String startDate = resProject.getString(7);
	String endDate = resProject.getString(8);%>
	
	<div id="top">
		<h2><%=projectName %>
		<a  class="btn_home" href="startpage.jsp">
  			<i class="fa fa-home fa-2x"></i></a>
  		</h2>
	</div>
	
	<div id="nav">
		<!-- SIDE MENU -->
		<nav id="side_menu">
			<ul class="container-fluid">
				<li id="side_id"><a href="ProjectInfoServlet?id=<%=id%>"><i
						class="fa fa-info fa-fw fa-2x"> </i>INFORMATION</a></li>
				<li id="side_id"><a href="ShowTeamServlet"><i
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

	<section class="container" style="padding-top: 1.8%">

		<table class="order-table">
			<thead>
				<tr>
					<th id="summaryclm">summary</th>
					<th></th>
					<th id="financialclm">financial</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="summaryclmtd">project name</td>
					<td><%=projectName%></td>
					<td id="financialclmtd">budget</td>
					<td><%=budget%> €</td>
					<td id="financialclmtd2"></td>
<!-- 					<td id="financialclmtd2">%</td> -->
				</tr>
				<tr>
					<td id="summaryclmtd">project manager</td>
					<td><%=employeeFirstName%> <%=employeeLastName%></td>
					<td id="financialclmtd">plan cost</td>
					<td><%=planCost %> €</td>
					<td id="financialclmtd2"></td>
<!-- 					<td id="financialclmtd2">%</td> -->
				</tr>
				<tr>
					<td id="summaryclmtd"></td>
					<td></td>
<!-- 					<td id="financialclmtd">actual cost</td>
					<td>€€€</td> -->
<!-- 					<td id="financialclmtd2"><i id="graph-icon"
						class="fa fa-bar-chart fa-2x"></i></td> -->
<!-- 					<td id="financialclmtd2">%</td> -->
				</tr>
			</tbody>
		</table>
		<table class="order-table">

		</table>

	</section>
	<section class="container" style="padding-top: 1.5%">
		<table class="order-table">
			<tbody>
				<tr>
					<td id="summaryclmtd" valign="top">description</td>
					<td id="descriptiotexttd"><%=description %></td>
				</tr>
			</tbody>
		</table>
	</section>
	<section class="container"
		style="padding-top: 1.8%; padding-bottom: 3%">
		<table class="order-table">
			<thead>
				<tr>
					<th>schedule</th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="scheduletd">start date (real)</td>
					<td><%=startDate %></td>
					<td id="scheduletd" style="padding-left: 237px">end date
						(contracted)</td>
					<td><%=endDate %></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td id="scheduletd2">real</td>
					<td>
						<script language="javascript" type="text/javascript">
   						var d = new Date();
   						document.write((d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate());
 </script> 	
					</td>
				</tr>
			</tbody>
		<%} %>
		</table>
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
	</section>


</body>
</html>