<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User"
	import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/add_project.css"
	type="text/css" />
<link rel='stylesheet' href="resources/font/ApertoAGReg" type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
						<li class="user-images"><img src="<%=picturePath%>"
							width="50px" height="40px" /></li>
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
		<h2>
			Add Project <a class="btn_home" href="startpage.jsp"> <i
				class="fa fa-home fa-2x"></i></a>
		</h2>
	</div>


	<!-- PAGE -->
	<section class="section_container" style="padding-top: 8.2%">
		<div class="container">
			<form action="addproject" method="post">

				<h1>Do you want do add a Project?</h1>

				<div class="div_table">
					<table class="order-table">
						<tbody>
							<tr>
								<td id="theader">
									<div class="form-group">
										<input type="text" name="projectname" required="required" /> <label
											for="input" class="control-label">Name</label><i class="bar"></i>
									</div>
								</td>
								<td></td>
								<td></td>

							</tr>
							<tr>
								<td id="theader">
									<div class="form-group">
										<input type="text" name="startdate" required="required" /> <label
											for="input" class="control-label">Start date</label><i
											class="bar"></i>
									</div>
								</td>
								<td></td>
								<td id="theader">
									<div class="form-group">
										<input type="text" name="budget" required="required" /> <label
											for="input" class="control-label">Budget</label><i
											class="bar"></i>
									</div>
								</td>
							</tr>
							<tr>
								<td id="theader">
									<div class="form-group">
										<input type="text" name="enddate" required="required" /> <label
											for="input" class="control-label">End date</label><i
											class="bar"></i>
									</div>
								</td>
								<td></td>
								<td id="theader">
									<div class="form-group">
										<input type="text" name="plancost" required="required" /> <label
											for="input" class="control-label">Plan cost</label><i
											class="bar"></i>
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>

				</div>

				<!-- FREIWILLIGE TEXT -->
				<div class="form-group">
					<textarea for="input" required="required" name="description"></textarea>
					<label for="input" class="control-label"">Description</label><i
						class="bar"></i>
				</div>

				<h1 style="padding-top: 7%">It's time to build your Team</h1>

				<!-- DROPDOWN MENU -->
				<div class="role_table">
					<table class="order-table">
						<tbody>
							<tr>
								<th><label for="select" id="role_label">Development</label>
									<i class="fa fa-plus"></i></th>
								<th></th>
							<tr>
								<td><select id="role_select">
										<option>Java</option>
										<option>Ruby</option>
										<option>PHP</option>
										<option>C++</option>
										<option>SQL</option>
										<option>JavaScript</option>
										<option>HTML/ CSS</option>
								</select></td>
								<td><a href="#" id="add_worker">add Worker</a></td>
							</tr>

							<tr>
								<td><select id="role_select">
										<option>Java</option>
										<option>Ruby</option>
										<option>PHP</option>
										<option>C++</option>
										<option>SQL</option>
										<option>JavaScript</option>
										<option>HTML/ CSS</option>
								</select></td>
								<td><a href="#" id="add_worker">add Worker</a></td>
							</tr>
							<tr>
								<td><select id="role_select">
										<option>Java</option>
										<option>Ruby</option>
										<option>PHP</option>
										<option>C++</option>
										<option>SQL</option>
										<option>JavaScript</option>
										<option>HTML/ CSS</option>
								</select></td>
								<td><a href="#" id="add_worker">add Worker</a></td>
							</tr>

						</tbody>
					</table>
					<!-- <br><br>
					<table class="order-table">
						<tbody>
							<tr>
								<th>
									<label for="select" id="role_label">Menu 2</label> 
									<i class="fa fa-plus"></i>
								</th>
								<th>
								</th>
							<tr>
								<td>	
    									<select id="role_select">
      										<option>Role 1</option>
      										<option>Role 2</option>
      										<option>Role 3</option>
      										<option>Role 4</option>
      										<option>Role 5</option>
      										<option>Role 6</option>
      										<option>Role 7</option>
    									</select>
    							</td>
    							<td>
									<a href="#" id="add_worker">add Worker</a>
    							</td>
    						</tr>
    						
    						<tr>
    							<td>
    									<select id="role_select">
      										<option>Role 1</option>
      										<option>Role 2</option>
      										<option>Role 3</option>
      										<option>Role 4</option>
      										<option>Role 5</option>
      										<option>Role 6</option>
      										<option>Role 7</option>
    									</select>
    							</td>
    							<td>
									<a href="#" id="add_worker">add Worker</a>
								</td>
    						</tr>
    						<tr>
    							<td>
    									<select id="role_select">
      										<option>Role 1</option>
      										<option>Role 2</option>
      										<option>Role 3</option>
      										<option>Role 4</option>
      										<option>Role 5</option>
      										<option>Role 6</option>
      										<option>Role 7</option>
    									</select>
    							</td>
    							<td>
									<a href="#" id="add_worker">add Worker</a>
								</td>
    						</tr>

						</tbody>
					</table>
 -->
				</div>

				<!-- ADD ROLE BUTTON -->
				<div id="div_addrole">
					<input type="text" id="input" name="checkListItem"
						placeholder="Add a new Role" />
					<div id="button">+</div>
					<div class="list"></div>
				</div>

				<script
					src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
				<script>
					$(document).ready(function () {
/* 					    $('#input').focus(); */
					    $('#button').click(function (e) {
					        var add = $('#input').val();
					        if (add !== '') {
					            $('.list').append('<li class="item">' + add + '</li>');
					            $('#input').val('');
/* 					            $('#input').focus(); */
					        }
					    });
					    
					    $(document).on('click', '.item', function () {
					        $(this).remove();
					        $(this).fadeOut('slow', function () {
					            $(this).remove();
					            $('#input').focus();
					        });
					    });
					    $('.item').click(function () {
					        $(this).remove();
					    });
					    $('.delete').click(function () {
					        $('.item').remove();
					    });
					});
				</script>



				<div class="col-xs-6">
					<button class="btn btn-success pull-right" type="submit">Overview</button>
				</div>
			</form>
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