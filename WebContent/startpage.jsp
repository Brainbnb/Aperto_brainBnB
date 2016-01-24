<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.aperto.brainbnb.dto.User"
	import="java.util.ArrayList" 
	import="org.aperto.brainbnb.dto.Project"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/start_page.css" type="text/css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>

	
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
					<li> <a href= "#"> 
						 <% User user = (User) session.getAttribute("user");
	 					 %> <%=user.getUserName()%>
						 </a> </li>
					<li class="vertical-separator"> | </li>
					<li> <a href="LogoutServlet">Log out </a> </li>
					<li class="vertical-separator"> | </li>
					<li> <a href= "#"> EN </a> </li>	
				</ul>
			</div>
		</div>
	</nav>
	</header>

	<div id= "top">
		<h2>Project Summary</h2>
	</div>
	<!-- HEADER  -->
	<div id="header"></div>	
	
	<!-- MAIN -->
	<section>
	
	 <!-- SEARCH CONTAINER -->
		 <form class="search-container">
			<input class= "search-box" type="search" placeholder="Search" aria-controls="datatable" />
			<div pseudo="-webkit-input-placeholder" style="display: block !important; text-overflow: clip;"></div>
		</form>
		
	<!-- PROJECT TABLE -->
	
		<div class="row">
		  <div id="admin" class="col s12">
		    <div class="card material-table">
		      <div class="table-header">
		      </div>
		      <table id="datatable">
		        <thead>
		          <tr>
		            <th>No.</th>
		            <th>Name</th>
		            <th>Role</th>
		            <th>Start date</th>
		            <th>Status</th>
		          </tr>
		        </thead>
		        <tbody>
						<%
							ArrayList<Project> projectList = (ArrayList<Project>) session.getAttribute("projectList");
							if (projectList != null) {
								for (int i = 0; i < projectList.size(); i++) {
						%>
						<tr>
							<td><a href="ProjectInfoServlet" type="submit" id="i"><%=projectList.get(i).getProjectID()%></a></td>
							<td><%=projectList.get(i).getProjectName()%></td>
							<td><%=projectList.get(i).getRole()%></td>
							<td><%=projectList.get(i).getStartDate()%></td>
<%-- 						<td><%=projectList.get(i).getEndDate()%></td>
 --%>						<td>IN PROCESS</td>
							<td><progress value="21" max="100"></progress> <!-- <div class="progress-bar"> <span style= "width:3%"></span> </div><p></p> --></td>

						</tr>

						<%
							}
							}
						%>
					</tbody>
		      </table>
		    </div>
		  </div>
		</div>
	</section>
	
	
	</body>
</html>