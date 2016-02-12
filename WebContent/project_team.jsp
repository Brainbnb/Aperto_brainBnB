<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.User" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/project_team.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 	<!-- <script src="//d3js.org/d3.v4.0.0-alpha.4.min.js"></script> -->
 
 	<script>	window.console = window.console || function(t) {};	</script>
 	<script src='http://d3js.org/d3.v3.min.js'></script>

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
		<nav class= "navbar navbar-inverse navbar-fixed-top" >
			<div class= "container-fluid">
				<div class= "navbar-header"> 
				<a class="navbar-brand" href="#">
					<img src= "resources/img/aperto-logo.svg" alt= "Aperto" align= "left" width= "114px" height= "21px" />	  </a>
				</div>
				<div>
					<ul class= "nav navbar-nav navbar-right">
					<%
						String user = (String)session.getAttribute("user"); 				
						String sqlEmployee = "SELECT Firstname, Surname, PicturePath FROM Employees WHERE Firstname='"+user+"'";
				        ResultSet resEmployee = stmt.executeQuery(sqlEmployee);
				        while(resEmployee.next()){
				        String firstname = resEmployee.getString(1);
				        String surname = resEmployee.getString(2);
				        String picturePath = resEmployee.getString(3);
				        System.out.println(picturePath);
				         
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
	
	<div id= "top">
	<h2>01-Project</h2>
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
	<!--Pattern HTML-->
	<section class="container">
	  <div id="pattern" class="pattern">
			<!--Begin Pattern HTML-->
			<nav class="navigation" role="navigation">
				<ul class="nav-list">
				     <li><i id="intmenuicon" class="fa fa-circle-o"><a href="#"> member</a></i></li>
				     <li><i id="intmenuicon" class="fa fa-circle-o"><a href="#"> add worker</a></i></li>
				     <li><i id="intmenuicon" class="fa fa-circle-o"><a href="#"> add freelancer</a></i></li>
				     <li><i id="intmenuicon" class="fa fa-circle-o"><a href="#"> add skills</a></i></li>
				</ul>
			</nav>
		</div>
		<!--End Pattern HTML-->
	</div>
	
	<figure>
				<img  class="avatar" src="resources/img/foto_Silvia_Calafuri.jpg">
	</figure>
	
	<section class="container">
		<table class="order-table" id="table1">
			<thead>
				<tr>
					<th style="padding-left: 4%">personal info</th><th></th>
					<th style="padding-left: 3%">current task	</th><th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="personalinfoclmtd">name		</td><td>Name Surname</td>
					<td id="currenttaskclmtd">task	</td><td><a href="#0001_task">#0001 Task</a></td>
				</tr>
				<tr>
					<td id="personalinfoclmtd">job title	</td><td id="personalinfoclmtd2">designer</td>
					<td id="currenttaskclmtd"></td><td>
					
						<div class="charts--container">
						      <div id="pieChart">
						        <svg id="pieChartSVG">
						          <defs>
						            <filter id='pieChartInsetShadow'>
						            	<feOffset		dx='0' dy='0'/>
						            	<feGaussianBlur	stdDeviation='3' result='offset-blur' />
						            	<feComposite	operator='out' in='SourceGraphic' in2='offset-blur' result='inverse' />
						            	<feFlood		flood-color='black' flood-opacity='1' result='color' />
						            	<feComposite	operator='in' in='color' in2='inverse' result='shadow' />
						            	<feComposite	operator='over' in='shadow' in2='SourceGraphic' />
						            </filter>
						            <filter id="pieChartDropShadow">
						            	<feGaussianBlur in="SourceAlpha" stdDeviation="3" result="blur" />
						            	<feOffset		in="blur" dx="0" dy="3" result="offsetBlur" />
						            	<feMerge><feMergeNode />
						                <feMergeNode 	in="SourceGraphic" />
						              	</feMerge>
						            </filter>
						          </defs>
						        </svg>
						      </div>
						</div>
						<script>
						;
							(function () {
							    var data = {
							        pieChart: [
							            { color: 'red' , description: 'Completed', value: 0.62	},
							            { color: 'blue', description: 'Remain'   , value: 0.38  }
							        ]
							    };
							    var DURATION = 900;
							    var DELAY	 = 100;
							   
							    function drawPieChart(elementId, data) {
							        var containerEl = document.getElementById(elementId), width = containerEl.clientWidth, height = width * 0.5, radius = Math.min(width, height) / 2, container = d3.select(containerEl), svg = container.select('svg').attr('width', width).attr('height', height);
							        var pie 		= svg.append('g').attr('transform', 'translate(' + width / 2 + ',' + height / 2 + ')');
							        var detailedInfo= svg.append('g').attr('class', 'pieChart--detailedInformation');
							        var twoPi 		= 2 * Math.PI;
							        var pieData = d3.layout.pie().value(function (d) {
							            return d.value;
							        });
							        var arc		= d3.svg.arc().outerRadius(radius - 35).innerRadius(0);
							        var pieChartPieces = pie.datum(data).selectAll('path').data(pieData).enter().append('path').attr('class', function (d) {
							            return 'pieChart__' + d.data.color;
							        }).attr('filter', 'url(#pieChartInsetShadow)').attr('d', arc).each(function () {
							            this._current = {
							                startAngle: 0,
							                endAngle: 0
							            };
							        }).transition().duration(DURATION).attrTween('d', function (d) {
							            var interpolate = d3.interpolate(this._current, d);
							            this._current = interpolate(0);
							            return function (t) {
							                return arc(interpolate(t));
							            };
							        }).each('end', function handleAnimationEnd(d) {
							            drawDetailedInformation(d.data, this);
							        });
							        drawChartCenter();
							        function drawChartCenter() {
							            var centerContainer = pie.append('g').attr('class', 'pieChart--center');
							            centerContainer.append('circle').attr('class', 'pieChart--center--outerCircle').attr('r', 0).attr('filter', 'url(#pieChartDropShadow)').transition().duration(DURATION).delay(DELAY).attr('r', radius - 50);
							            centerContainer.append('circle').attr('id', 'pieChart-clippy').attr('class', 'pieChart--center--innerCircle').attr('r', 0).transition().delay(DELAY).duration(DURATION).attr('r', radius - 50).attr('fill', '#fff');
							        }
							        function drawDetailedInformation(data, element) {
							            var bBox = element.getBBox(), infoWidth = width*0.3, anchor, infoContainer, position = width-50;
							            if (bBox.x + bBox.width / 2 > 0) {
							                infoContainer = detailedInfo.append('g').attr('width', infoWidth).attr('transform', 'translate(' + (width - infoWidth) + ',' + (bBox.height + bBox.y) + ')');
							                anchor   = 'end';
							                position = 'right';
							            } else {
							                infoContainer = detailedInfo.append('g').attr('width', infoWidth).attr('transform', 'translate(' + 0 + ',' + (bBox.height + bBox.y) + ')');
							                anchor = 'start';
							                position = 'left';
							            }
							            infoContainer.data([data.value * 100]).append('text').text('0 %').attr('class', 'pieChart--detail--percentage').attr('x', position === 'left' ? 0 : infoWidth).attr('y', -7).attr('text-anchor', anchor).transition().duration(DURATION).tween('text', function (d) {
							                var i = d3.interpolateRound(+this.textContent.replace(/\s%/gi, ''), d);
							                return function (t) {
							                    this.textContent = i(t) + ' %';
							                };
							            });
							            infoContainer.append('line').attr('class', 'pieChart--detail--divider').attr('x1', 0).attr('x2', 0).attr('y1', 0).attr('y2', 0).transition().duration(DURATION).attr('x2', infoWidth);
							            infoContainer.data([data.description]).append('foreignObject').attr('width', infoWidth).attr('height', 100).append('xhtml:body').attr('class', 'pieChart--detail--textContainer ' + 'pieChart--detail__' + position).html(data.description);
							        }
							    }
							    function drawChart() {
							        drawPieChart('pieChart', data.pieChart);
							    }
							    drawChart();
							}());
						</script>
						<script>
							  if (document.location.search.match(/type=embed/gi)) {
							    window.parent.postMessage("resize", "*");
							  }
						</script>
					</td>
				</tr>
				<tr>
					<td id="personalinfoclmtd"></td><td id="personalinfoclmtd2"></td>
					<td id="currenttaskclmtd">start date</td><td>01.01.2016</td>
				</tr>
				<tr>
					<td id="personalinfoclmtd"></td><td id="personalinfoclmtd2"></td>
					<td id="currenttaskclmtd">end date</td><td>01.01.2017</td>
				</tr>
			</tbody>	
		</table>
	</section>
	<hr></hr>
	<section>
   		<table class="order-table" id= "table2">
			<thead>
				<tr>
					<th style="padding-left: 4%">advanced info</th><th></th>
					<th></th><th></th><th></th><th></th>
				</tr>
			</thead>
			<tbody>
				<tr style="vertical-align: top">
					<td id="personalinfoclmtd">available	</td><td>am I available?</td>
					<td id="personalinfoclmtd" style="padding-left: 6%">skills		</td><td>	
					
					<div id="resumeProficienciesTop">css3/css</div>
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
						
					<div id="resumeProficienciesTop">mobile app design</div>
						<div id="wrapper"><div class="star-rating"><span style="width:10%"></span></div>	</div>					
					</td>
				</tr>
			</tbody>
		</table>
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