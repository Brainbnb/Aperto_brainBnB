<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.aperto.brainbnb.dto.User"
	import="java.util.ArrayList" import="java.util.Iterator"
	import="org.aperto.brainbnb.dto.Project"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/start_page.css" type="text/css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>
	
	<script src='//assets.codepen.io/assets/common/stopExecutionOnTimeout.js?t=1'></script>
	<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>
	<script>
	(function (window, document, undefined) {
	    var factory = function ($, DataTable) {
	        'use strict';
	        
	        $.extend(true, DataTable.defaults, {
	            dom		: 'tr' + '<\'table-footer\'lip\'>',
	            renderer: 'material'
	        });
	        
	        $.extend(DataTable.ext.classes, {
	            sWrapper	: 'dataTables_wrapper',
	            sFilterInput: 'form-control input-sm',
	            sLengthSelect: 'form-control input-sm'
	        });
	        DataTable.ext.renderer.pageButton.material = function (settings, host, idx, buttons, page, pages) {
	            var api = new DataTable.Api(settings);
	            var classes = settings.oClasses;
	            var lang = settings.oLanguage.oPaginate;
	            var btnDisplay, btnClass, counter = 0;
	            var attach = function (container, buttons) {
	                var i, ien, node, button;
	                var clickHandler = function (e) {
	                    e.preventDefault();
	                    if (!$(e.currentTarget).hasClass('disabled')) {
	                        api.page(e.data.action).draw(false);
	                    }
	                };
	                for (i = 0, ien = buttons.length; i < ien; i++) {
	                    if (window.CP.shouldStopExecution(1)) {
	                        break;
	                    }
	                    button = buttons[i];
	                    if ($.isArray(button)) {
	                        attach(container, button);
	                    } else {
	                        btnDisplay = '';
	                        btnClass = '';
	                        switch (button) {
	                        case 'first':
	                            btnDisplay = lang.sFirst;
	                            btnClass = button + (page > 0 ? '' : ' disabled');
	                            break;
	                        case 'previous':
	                            btnDisplay = '<i class="material-icons">chevron_left</i>';
	                            btnClass = button + (page > 0 ? '' : ' disabled');
	                            break;
	                        case 'next':
	                            btnDisplay = '<i class="material-icons">chevron_right</i>';
	                            btnClass = button + (page < pages - 1 ? '' : ' disabled');
	                            break;
	                        case 'last':
	                            btnDisplay = lang.sLast;
	                            btnClass = button + (page < pages - 1 ? '' : ' disabled');
	                            break;
	                        }
	                        if (btnDisplay) {
	                            node = $('<li>', {
	                                'class': classes.sPageButton + ' ' + btnClass,
	                                'id': idx === 0 && typeof button === 'string' ? settings.sTableId + '_' + button : null
	                            }).append($('<a>', {
	                                'href': '#',
	                                'aria-controls': settings.sTableId,
	                                'data-dt-idx': counter,
	                                'tabindex': settings.iTabIndex
	                            }).html(btnDisplay)).appendTo(container);
	                            settings.oApi._fnBindAction(node, { action: button }, clickHandler);
	                            counter++;
	                        }
	                    }
	                }
	                window.CP.exitedLoop(1);
	            };
	            var activeEl;
	            try {
	                activeEl = $(document.activeElement).data('dt-idx');
	            } catch (e) {
	            }
	            attach($(host).empty().html('<ul class="material-pagination"/>').children('ul'), buttons);
	            if (activeEl) {
	                $(host).find('[data-dt-idx=' + activeEl + ']').focus();
	            }
	        };
	        if (DataTable.TableTools) {
	            $.extend(true, DataTable.TableTools.classes, {
	                'container': 'DTTT btn-group',
	                'buttons': {
	                    'normal': 'btn btn-default',
	                    'disabled': 'disabled'
	                },
	                'collection': {
	                    'container': 'DTTT_dropdown dropdown-menu',
	                    'buttons': {
	                        'normal': '',
	                        'disabled': 'disabled'
	                    }
	                },
	                'print': { 'info': 'DTTT_print_info' },
	                'select': { 'row': 'active' }
	            });
	            $.extend(true, DataTable.TableTools.DEFAULTS.oTags, {
	                'collection': {
	                    'container': 'ul',
	                    'button': 'li',
	                    'liner': 'a'
	                }
	            });
	        }
	    };
	    if (typeof define === 'function' && define.amd) {
	        define([
	            'jquery',
	            'datatables'
	        ], factory);
	    } else if (typeof exports === 'object') {
	        factory(require('jquery'), require('datatables'));
	    } else if (jQuery) {
	        factory(jQuery, jQuery.fn.dataTable);
	    }
	}(window, document));
	
	$(document).ready(function () {
	    $('#datatable').dataTable({
	        //'ajax': 'https://gist.githubusercontent.com/heiswayi/7fde241975ed8a80535a/raw/ff1caaeaf62bd6740ab7cafcd61f1215de173379/datatables-data.json',
	        'oLanguage': {
	            'sStripClasses': '',
	            'sInfo': '_START_ -_END_ of _TOTAL_',
	            'sLengthMenu': '<span>Projects per page:</span><select class="browser-default">' + '<option value="10">10</option>' + '<option value="20">20</option>' + '<option value="30">30</option>' + '<option value="40">40</option>' + '<option value="50">50</option>' + '<option value="-1">All</option>' + '</select></div>'
	        },
	        bAutoWidth: false
	    });
	});
	</script>

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
				<li class="user-images"> <img src= "resources/theme1/img/User_Bild_2.png" width="50px" height= "40px"/> </li>
				<li> <a href= "#"> 
						 <% User user = (User) session.getAttribute("user");
						 %> <%=user.getUserName()%> </a> 
				</li>
				<li class="vertical-separator"> | </li>
				<li> <a href= "LogoutServlet"> Log out </a> </li>
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
		  </div>
		</div>
</section>

</body>
</html>