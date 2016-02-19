<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.aperto.brainbnb.dto.User"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.Project"
	import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/start_page.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>


</head>
<body>
	<% //Verbindng zur Datenbank
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
		<h2>Project Summary</h2>
	</div>

	<!-- MAIN -->
	<section>

		<!-- SEARCH CONTAINER -->
		<form class="search-container">
			<input class="search-box" type="search" placeholder="Search" id="search" />
			<div pseudo="-webkit-input-placeholder" style="display: block !important; text-overflow: clip;"></div>
				
			<script>
			$("#search").keyup(function () {
			    var value = this.value.toLowerCase().trim();
			    $("table tr").each(function (index) {
			        if (!index) return;
			        $(this).find("td").each(function () {
			            var id = $(this).text().toLowerCase().trim();
			            var not_found = (id.indexOf(value) == -1);
			            $(this).closest('tr').toggle(!not_found);
			            return not_found;
			        });
			    });
			});
			</script>
		</form>


		<!-- PROJECT TABLE -->
		<div class="row">
			<div id="admin" class="col s12">
				<div class="card material-table">
					<div class="table-header"></div>
					<table id="datatable">
						<thead>
							<tr>
								<th style="padding-bottom: 35px">No.</th>
								<th>Name</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Status</th>
								<th></th>
								<th>
									<!-- BUTTON -->
									<div class="material-button-anim">
										<ul class="list-inline" id="options">
											<li class="option"><a href="add_project.jsp">
													<button class="material-button option1" type="button">
														<span class="fa fa-plus" aria-hidden="true"></span>
													</button>
											</a></li>
											<li class="option"><a href="StartPageGraphServlet">
													<button class="material-button option2" type="button">
														<span class="fa fa-bar-chart" aria-hidden="true"></span>
													</button>
											</a></li>

										</ul>
										<button class="material-button material-button-toggle"
											type="button">
											<span class="fa fa-bars" aria-hidden="true"></span>
										</button>
									</div> <script> 
			$('.material-button-toggle').click(function () {
        		$(this).toggleClass('open');
        		$('.option').toggleClass('scale-on');
			});
		</script>

								</th>
							</tr>
						</thead>
						<tbody>
							<%					
						         String sqlProject = "SELECT p.Project_ID, p.Name, p.StartDate, p.EndDate, s.statusname FROM Projects p, Status s WHERE p.status=s.status_id ORDER BY p.project_id";
						         ResultSet res = stmt.executeQuery(sqlProject);
						         while(res.next()){
						         String id=res.getString(1);
						         String name=res.getString(2);
						         String startdate=res.getString(3);
						         String enddate=res.getString(4);
						         String status=res.getString(5);
						         %>
							<tr>
								<td><a href="ProjectInfoServlet?id=<%=id%>" type="submit"><%=id%></a></td>
								<td><a href="ProjectInfoServlet?id=<%=id%>" type="submit"><%=name%></a></td>
								<td><%=startdate%></td>
								<td><%=enddate%></td>
								<td><%=status %></td>
								<td><progress value="50" max="100"></progress> <!-- <div class="progress-bar"> <span style= "width:3%"></span> </div><p></p> --></td>

							</tr>
							<%} %>
						</tbody>

						<%-- 		        <tbody>
						<%
							ArrayList<Project> projectList = (ArrayList<Project>) session.getAttribute("projectList");
							if (projectList != null) {
								for (int i = 0; i < projectList.size(); i++) {
						%>
						<tr>
							<td><a href="ProjectInfoServlet?id=<%=i%>" type="submit"><%=projectList.indexOf(i)%></a></td>
							<td><a href="ProjectInfoServlet?id=<%=i%>" type="submit"><%=projectList.get(i).getProjectName()%></a></td>
							<td><%=projectList.get(i).getStartDate()%></td>
						<td><%=projectList.get(i).getEndDate()%></td>						
							<td>IN PROCESS</td>
							<td><progress value="21" max="100"></progress> <!-- <div class="progress-bar"> <span style= "width:3%"></span> </div><p></p> --></td>
					
						</tr>
						<%
							}
							}
						%>
					</tbody> --%>
					</table>
					<%con.close();
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
				</div>
			</div>
		</div>
	</section>


</body>
</html>