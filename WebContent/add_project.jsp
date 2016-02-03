<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/add_project.css" type="text/css" />
	<link rel='stylesheet' href="resources/font/ApertoAGReg" type='text/css'>
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
		<h2>Add Project</h2>
	</div>
	<!-- HEADER  -->
	<div id="header">
		<!-- SEARCH CONTAINER -->
	</div>


	<!-- PAGE -->
	<section class="section_container">
		<div class="container">
		 	<form>
		    	<h1>Do you want do add a Project?</h1>
		    		
		    	<div class= "div_table">
					<table class="order-table">
						<tbody>
							<tr>
								<td id= "theader"> 
									<div class="form-group"><input type="text" required="required"/>
			      					<label for="input" class="control-label">Name</label><i class="bar"></i></div>
								</td><td></td>
								<td></td>
								
							</tr>
							<tr>
								<td id= "theader"> 
									<div class="form-group"><input type="text" required="required"/>
			      					<label for="input" class="control-label">Start date</label><i class="bar"></i></div>
								</td><td></td>
								<td id= "theader"> 
									<div class="form-group"><input type="text" required="required"/>
			      					<label for="input" class="control-label">Budget</label><i class="bar"></i></div>
								</td>
							</tr>
							<tr>
								<td id= "theader"> 
									<div class="form-group"><input type="text" required="required"/>
			      					<label for="input" class="control-label">End date</label><i class="bar"></i></div>
								</td><td></td>
								<td id= "theader"> 
									<div class="form-group"><input type="text" required="required"/>
			      					<label for="input" class="control-label">Plan cost</label><i class="bar"></i></div>
								</td>
							</tr>
							<tr>
								<td></td><td></td>
							</tr>
						</tbody>
					</table>
				</div>				
				
		    	<!-- FREIWILLIGE TEXT -->
		    	<div class="form-group">
		      		<textarea required="required"></textarea>
		      		<label for="textarea" class="control-label" id= "description_label">Description</label><i class="bar"></i>
		    	</div>
		    	
		    	<h1 style="padding-top: 7%">It's time to build your Team</h1>
		    	
		    	<!-- DROPDOWN MENU -->
		    	<div class= "role_table">
					<table class="order-table">
						<tbody>
							<tr>
								<th>
									<label for="select" id="role_label">Menu 1</label> 
									<i class="fa fa-plus"></i>
								</th>
								<th>
								</th>
								<th></th>
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
    							<td></td>
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
    							<td></td>
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
    							<td></td>
    							<td>
									<a href="#" id="add_worker">add Worker</a>
								</td>
    						</tr>
							
						</tbody>
					</table>
					<br><br>
					<table class="order-table"">
						<tbody>
							<tr>
								<th>
									<label for="select" id="role_label">Menu 2</label> 
									<i class="fa fa-plus"></i>
								</th>
								<th>
								</th>
								<th></th>
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
    							<td></td>
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
    							<td></td>
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
    							<td></td>
    							<td>
									<a href="#" id="add_worker">add Worker</a>
								</td>
    						</tr>
							
						</tbody>
					</table>
				</div>
				
				<!-- ADD ROLE BUTTON -->
		    	<div id= "div_addrole">
  					<input  type="text" id="input" name="checkListItem" placeholder="Add a new Role"/>
  					<div 	id="button">+</div>
  					<div 	class="list"></div>
  				</div>
  				
				<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
				<script>
					$(document).ready(function () {
					    $('#input').focus();
					    $('#button').click(function (e) {
					        var add = $('#input').val();
					        if (add !== '') {
					            $('.list').append('<li class="item">' + add + '</li>');
					            $('#input').val('');
					            $('#input').focus();
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
	
</body>
</html>