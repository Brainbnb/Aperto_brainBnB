<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/project_info.css" type="text/css" />
	<link rel='stylesheet' href= "resources/font/ApertoAGReg" type='text/css'>
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
				<li> <a href= "#"> Name Surname</a> </li>
				<li class="vertical-separator"> | </li>
				<li> <a href= "#"> Log out </a> </li>
				<li class="vertical-separator"> | </li>
				<li> <a href= "#"> EN </a> </li>	
			</ul>
		</div>
	</div>
</nav>
</header>

<!-- HEADER  -->
<div id="header">
	<h2>01-Project</h2>	
	
<!-- SEARCH CONTAINER -->	
</div>	

<div id="nav">
<!-- SIDE MENU -->
	<nav id="side_menu">
  		<ul class="container-fluid">
    		<li id="side_id"><a href="#info"		><i class="fa fa-info fa-fw fa-2x" >		</i>INFORMATION</a></li> 
    		<li id="side_id"><a href="#"			><i class="fa fa-user fa-fw fa-2x" >		</i>TEAM</a></li> 
 			<li id="side_id"><a href="#workflow" 	><i class="fa fa-folder-open-o fa-fw fa-2x"></i>WORKFLOW   </a></li>
  			<li id="side_id"><a href="#resource" 	><i class="fa fa-archive fa-fw  fa-2x">		</i>RESOURCE   </a></li>
  			<li id="side_id"><a href="#calendar" 	><i class="fa fa-calendar-o fa-fw fa-2x">	</i>CALENDAR   </a></li>  
  		</ul>
  	</nav>
</div>
  
<!-- PAGE -->
<section class="container">
	<table class="order-table">
		<thead>
			<tr>
				<th id="summaryclm">summary		</th><th></th>
				<th id="financialclm">financial	</th><th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="summaryclmtd">project name		</td><td>01-Project</td>
				<td id="financialclmtd">total planned cost	</td><td>€€€</td><td id="financialclmtd2"></td><td id="financialclmtd2">%</td>
			</tr>
			<tr>
				<td id="summaryclmtd">project manager	</td><td>Name Surname</td>
				<td id="financialclmtd">actual cost		</td><td>€€€</td><td id="financialclmtd2"><i id="graph-icon" class="fa fa-bar-chart fa-2x"></i></td><td id="financialclmtd2">%</td>
			</tr>
			<tr>
				<td id="summaryclmtd">last modification	</td><td>01.01.01</td>
				<td id="financialclmtd">cost				</td><td>€€€</td><td id="financialclmtd2"></td><td id="financialclmtd2">%</td>
			</tr>
			 <tr>
				<td id="summaryclmtd">			  	</td><td></td>
				<td id="financialclmtd">extimated cost</td><td>€€€</td><td id="financialclmtd2"></td><td id="financialclmtd2">%</td>
			</tr>
		</tbody>
	</table>
	<table class="order-table">
		
	</table>
</section>
<section class="container">
	<table class="order-table">
	<tbody>
			<tr>
				<td id="summaryclmtd" valign="top">description</td><td id="descriptiotexttd">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. </td>
			</tr>
		</tbody>
	</table>
</section>
<section class="container">
	<table class="order-table">
		<thead>
			<tr>
				<th id="scheduleclm">schedule</th><th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="scheduletd">start date (real)</td><td>01.01.01</td>
				<td id="scheduletd">end date		 </td><td>01.01.01</td>
			</tr>
			<tr>
				<td></td><td></td>
				<td id="scheduletd2">contracted</td><td>01.01.01</td>
			</tr>
			<tr>
				<td></td><td></td>								  
				<td id="scheduletd2">planned	</td><td>01.01.01</td>
			</tr>
			<tr>
				<td></td><td></td>							  
				<td id="scheduletd2">real		</td><td>01.01.01</td>
			</tr>
		</tbody>
	
	</table>
</section>


</body>
</html>