<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.Employee"
	import="java.util.ArrayList" import="org.aperto.brainbnb.dto.User"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/add_worker.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet prefetch" href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

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
		<h2>01-Project</h2>
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
		<section class="cf worker-container">
			<p id="big_p">people</p> <p>(68)</p> 
			<p id="big_p" style="padding-left: 2%">favourites</p> <p>(3)</p>
			
			<!-- FIRST TABLE -->
			<table class="fixed" style="padding-left: 11.2%" id="worker-table">
				<col width="250px" />
				<col width="180px" />
				<col width="120px" />
    			<col width="180px" />
    			<col width="350px" />
				<tr>
					<th></th>
					<th>name</th>
					<th>age</th>
					<th>languages</th>
					<th>skills</th>
				</tr>
				<tr>
					<td>
						<li><figure>
							<img  class="avatar" src="resources/img/foto_ldc.jpg">
						</figure>
						</li>		
						<label class="add-fav"><input type="checkbox" />
  							<i class="icon-heart"></i>		
						</label>		
						<span><a id="add_btn"><i class="fa fa-plus-square"></i> add</a></span>
					</td>
					<td>Leonardo DiCaprio</td>
					<td>41</td>
					<td><li>German</li><li>English</li><li>Italian</li></td>
					<!--****** GRAPH ******-->
					<td><div id="resumeProficienciesTop">css3/css</div>
						<div id="wrapper"><div class="star-rating"><span style="width:0%"></span></div>	</div>
											
					<div id="resumeProficienciesTop">jquery</div>
						<div id="wrapper"><div class="star-rating"><span style="width:100%"></span></div>	</div>					
						
					<div id="resumeProficienciesTop">javascript</div>
						<div id="wrapper"><div class="star-rating"><span style="width:80%"></span></div></div>						
					
					<div id="resumeProficienciesTop">bootstrap</div>
						<div id="wrapper"><div class="star-rating"><span style="width:50%"></span></div></div>						
						
					<div id="resumeProficienciesTop">wordpress</div>
						<div id="wrapper"><div class="star-rating"><span style="width:35%"></span></div>	</div>					
					
					<div id="resumeProficienciesTop">user interface</div>
						<div id="wrapper"><div class="star-rating"><span style="width:90%"></span></div></div>						
				</tr>
			</table>
			<hr></hr>
			<!-- SECOND TABLE -->
			<table class="fixed" style="padding-left: 11.2%" id="worker-table">
				<col width="250px" />
				<col width="180px" />
				<col width="120px" />
    			<col width="180px" />
    			<col width="350px" />
				<tr>
					<th></th>
					<th>name</th>
					<th>age</th>
					<th>languages</th>
					<th>skills</th>
				</tr>
				<tr>
					<td>
						<li><figure>
							<img  class="avatar" src="resources/img/foto_jd.png">
						</figure>
						</li>		
						<label class="add-fav"><input type="checkbox" />
  							<i class="icon-heart"></i>		
						</label>		
						<span><a id="add_btn"><i class="fa fa-plus-square"></i> add</a></span>
					</td>
					<td>Johnny Depp</td>
					<td>52</td>
					<td><li>English</li></td>
					<!--****** GRAPH ******-->
					<td><div id="resumeProficienciesTop">css3/css</div>
						<div id="wrapper"><div class="star-rating"><span style="width:0%"></span></div>	</div>
											
					<div id="resumeProficienciesTop">jquery</div>
						<div id="wrapper"><div class="star-rating"><span style="width:100%"></span></div>	</div>					
						
					<div id="resumeProficienciesTop">javascript</div>
						<div id="wrapper"><div class="star-rating"><span style="width:80%"></span></div></div>						
					
					<div id="resumeProficienciesTop">bootstrap</div>
						<div id="wrapper"><div class="star-rating"><span style="width:50%"></span></div></div>						
						
					<div id="resumeProficienciesTop">wordpress</div>
						<div id="wrapper"><div class="star-rating"><span style="width:35%"></span></div>	</div>					
					
					<div id="resumeProficienciesTop">user interface</div>
						<div id="wrapper"><div class="star-rating"><span style="width:90%"></span></div></div>						
				</tr>
			</table>
			<hr></hr>
			<!-- THIRD TABLE -->
			<table class="fixed" style="padding-left: 11.2%" id="worker-table">
				<col width="250px" />
				<col width="180px" />
				<col width="120px" />
    			<col width="180px" />
    			<col width="350px" />
				<tr>
					<th></th>
					<th>name</th>
					<th>age</th>
					<th>languages</th>
					<th>skills</th>
				</tr>
				<tr>
					<td>
						<li><figure>
							<img  class="avatar" src="resources/img/foto_gc.jpg">
						</figure>
						</li>		
						<label class="add-fav"><input type="checkbox" />
  							<i class="icon-heart"></i>		
						</label>		
						<span><a id="add_btn"><i class="fa fa-plus-square"></i> add</a></span>
					</td>
					<td>George Clooney</td>
					<td>54</td>
					<td><li>German</li><li>English</li><li>Italian</li></td>
					<!--****** GRAPH ******-->
					<td><div id="resumeProficienciesTop">css3/css</div>
						<div id="wrapper"><div class="star-rating"><span style="width:0%"></span></div>	</div>
											
					<div id="resumeProficienciesTop">jquery</div>
						<div id="wrapper"><div class="star-rating"><span style="width:100%"></span></div>	</div>					
						
					<div id="resumeProficienciesTop">javascript</div>
						<div id="wrapper"><div class="star-rating"><span style="width:80%"></span></div></div>						
					
					<div id="resumeProficienciesTop">bootstrap</div>
						<div id="wrapper"><div class="star-rating"><span style="width:50%"></span></div></div>						
						
					<div id="resumeProficienciesTop">wordpress</div>
						<div id="wrapper"><div class="star-rating"><span style="width:35%"></span></div>	</div>					
					
					<div id="resumeProficienciesTop">user interface</div>
						<div id="wrapper"><div class="star-rating"><span style="width:90%"></span></div></div>						
				</tr>
			</table>
			
		</section>
	</section>
</body>
</html>