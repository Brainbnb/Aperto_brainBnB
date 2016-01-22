<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.aperto.brainbnb.dto.User"
	import="java.util.ArrayList" import="java.util.Iterator"
	import="org.aperto.brainbnb.dto.Project"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/startpage.css"
	type="text/css" />
<link rel='stylesheet' href="resources/font/ApertoAGReg" type='text/css'>
<link rel="stylesheet" href="theme.blue.css" type="text/css"
	media="print, projection, screen" />

<script type="text/javascript" src="jquery-1.11.3.js"></script>
<script type="text/javascript" src="jquery.tablesorter.min.js"></script>

<script>
	$(document).ready(function() {
		$("#tab").tablesorter({
			sortList : [ [ 0, 0 ], [ 2, 1 ] ]
		});
	});

	$(".tablesorter").tablesorter({
		// *** Appearance ***
		// fix the column widths
		widthFixed : true,
		// include zebra and any other widgets, options:
		// 'uitheme', 'filter', 'stickyHeaders' & 'resizable'
		// the 'columns' widget will require custom css for the
		// primary, secondary and tertiary columns
		widgets : [ 'uitheme', 'zebra' ],
		// other options: "ddmmyyyy" & "yyyymmdd"
		dateFormat : "mmddyyyy",

		// *** Functionality ***
		// starting sort direction "asc" or "desc"
		sortInitialOrder : "asc",
		// These are detected by default,
		// but you can change or disable them
		headers : {
			// set "sorter : false" (no quotes) to disable the column
			0 : {
				sorter : "text"
			},
			1 : {
				sorter : "digit"
			},
			2 : {
				sorter : "text"
			},
			3 : {
				sorter : "url"
			}
		},

		// forces the user to have this/these column(s) sorted first
		sortForce : null,
		// initial sort order of the columns
		// [[columnIndex, sortDirection], ... ]
		sortList : [],
		// default sort that is added to the end of the users sort
		// selection.
		sortAppend : null,
		// Use built-in javascript sort - may be faster, but does not
		// sort alphanumerically
		sortLocaleCompare : false,
		// Setting this option to true will allow you to click on the
		// table header a third time to reset the sort direction.
		sortReset : false,
		// Setting this option to true will start the sort with the
		// sortInitialOrder when clicking on a previously unsorted column.
		sortRestart : false,
		// The key used to select more than one column for multi-column
		// sorting.
		sortMultiSortKey : "shiftKey",

		// *** Customize header ***
		onRenderHeader : function() {
			// the span wrapper is added by default
			$(this).find('span').addClass('headerSpan');
		},
		// jQuery selectors used to find the header cells.
		selectorHeaders : 'thead th',

		// *** css classes to use ***
		cssAsc : "headerSortUp",
		cssChildRow : "expand-child",
		cssDesc : "headerSortDown",
		cssHeader : "header",
		tableClass : 'tablesorter',

		// *** widget css class settings ***
		// column classes applied, and defined in the skin
		widgetColumns : {
			css : [ "primary", "secondary", "tertiary" ]
		},
		// find these jQuery UI class names by hovering over the
		// Framework icons on this page:
		// http://jqueryui.com/themeroller/
		widgetUitheme : {
			css : [ "ui-icon-arrowthick-2-n-s", // Unsorted icon
			"ui-icon-arrowthick-1-s", // Sort up (down arrow)
			"ui-icon-arrowthick-1-n" // Sort down (up arrow)
			]
		},
		// pick rows colors to match ui theme
		widgetZebra : {
			css : [ "ui-widget-content", "ui-state-default" ]
		},

		// *** prevent text selection in header ***
		cancelSelection : true,

		// *** send messages to console ***
		debug : false
	});
</script>

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
						<li><a href="#"> <%
 	User user = (User) session.getAttribute("user");
 %> <%=user.getUserName()%>


						</a></li>
						<li class="vertical-separator">|</li>
						<li><a href="LogoutServlet"> Log out </a></li>
						<li class="vertical-separator">|</li>
						<li><a href="#"> EN </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- MAIN -->
	<section>
		<h2>Projects summary</h2>

		<!-- SEARCH CONTAINER -->
		<form class="search-container">
			<!-- <label for="search-box"> <span class="glyphicon glyphicon-search search-icon"></span> </label>  -->
			<input class="search-box" type="search" placeholder="Search" />
			<!-- <input type= "submit" id= "search-submit" />  -->
		</form>


		<!-- PROJECT TABLE -->
		<form action="login" method="post">
			<div id="div-table">
				<table id="tab" class="tablesorter table-condensed table-responsive">
					<thead>
						<tr>
							<th>No.</th>
							<th>Name</th>
							<th>Start</th>
							<th>End</th>
							<th>Role</th>
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
							<td><%=projectList.get(i).getProjectID()%> </td>
							<td><%=projectList.get(i).getProjectName()%></td>
							<td><%=projectList.get(i).getStartDate()%></td>
							<td><%=projectList.get(i).getEndDate()%></td>
							<td><%=projectList.get(i).getRole()%></td>
							<td>IN PROCESS</td>
							<td><progress value="21" max="100"></progress> <!-- <div class="progress-bar"> <span style= "width:3%"></span> </div><p></p> --></td>

						</tr>

						<%
							}
							}
						%>
					</tbody>
				</table>
			</div>
		</form>
	</section>

</body>
</html>