<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/planned_project.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
				
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
						<li><a href="#"><% User user = (User) session.getAttribute("user");
	 					 %> <%=user.getUserName()%></a></li>
						<li class="vertical-separator">|</li>
						<li><a href="LogoutServlet"> Log out </a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> EN </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div id="top">
		<h2>Planned Project</h2>
	</div>


	<!-- PAGE -->
	<section class="section_container" style="padding-top: 8.2%">
		<div class="container">
		 	<form>
		    	<h1>Project 01</h1>
		    	<h2>General Information</h2>
		    		
		    	<div class= "div_table">
					<table class="order-table">
						<tbody>
							<tr>
								<td> 
			      					<label class="control-label">Project name</label><i class="bar"></i></div>
								</td>
								<td id= "cell_result">Project 01</td>
								<td></td>
								<td></td>
							</tr>
							
							<tr>
								<td> 
			      					<label class="control-label">Start date</label><i class="bar"></i></div>
								</td>
								<td id= "cell_result">01.01.2016</td>
								<td> 
			      					<label class="control-label">Budget</label><i class="bar"></i></div>
								</td>
								<td id= "cell_result">€ 3.000.000,00</td>
							</tr>
							
							<tr>
								<td> 
			      					<label class="control-label">End date</label><i class="bar"></i></div>
								</td>
								<td id= "cell_result">01.01.2017</td>
								<td> 
			      					<label class="control-label">Plan cost</label><i class="bar"></i></div>
								</td>
								<td id= "cell_result">€ 2.500.000,00</td>	
							</tr>
							
							<tr>
								<td></td><td></td><td></td><td></td>	
							</tr>
						</tbody>
					</table>
				</div>				
				
		    	<!-- FREIWILLIGE TEXT -->
		    	<div class="form-group">
		      		<label class="control-label" id= "description_label">Description</label><i class="bar"></i>
		      		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
		      		Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
		      		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
		      		Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		    	</div>
		    	
		    	<h2 style="padding-top: 5%">Employees</h2>
		    	
		    	<!-- DROPDOWN MENU -->
		    	<div class= "role_table">
					<table class="order-table">
						<tbody>
							<tr>
								<th>
									<label for="select" id="role_label">Role 1</label> 
								</th>
								<th></th>
							<tr>
								<td>Skill 1</td>	<td>worker 1, worker 2, worker 3</td>
    						</tr>
    						<tr>
								<td>Skill 2</td>	<td>worker 4, worker 1, worker 5</td>
    						</tr>
    						<tr>
								<td>Skill 3</td>	<td>worker 9, worker 2, worker 6</td>
    						</tr>
    						<tr>
								<td>Skill 4</td>	<td>worker 1, worker 7, worker 3</td>
    						</tr>
						</tbody>
					</table>
					<br><br>
					<table class="order-table">
						<tbody>
							<tr>
								<th>
									<label for="select" id="role_label">Role 2</label> 
								</th>
								<th></th>
							<tr>
								<td>Skill 1</td>	<td>worker 1</td>
    						</tr>
    						<tr>
								<td>Skill 2</td>	<td>worker 4, worker 1, worker 5</td>
    						</tr>
    						<tr>
								<td>Skill 3</td>	<td>worker 9, worker 6</td>
    						</tr>
    						<tr>
								<td>Skill 4</td>	<td>worker 1, worker 7, worker 3</td>
    						</tr>
						</tbody>
					</table>
				</div>
				
            
            	<div class="col-xs-6">
                		<button class="btn btn-success" type="submit">Save</button>
            	</div>   
            	
            	<div class="col-xs-6">
                		<button class="btn pull-right" onclick="goBack()" type="submit" >Go back</button>
                		<script>
							function goBack() {
    						window.history.back();	}
						</script>
            	</div>		 
	</section>
	
</body>
</html>