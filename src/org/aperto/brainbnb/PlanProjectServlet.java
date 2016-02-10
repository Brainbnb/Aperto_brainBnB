package org.aperto.brainbnb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aperto.brainbnb.dto.Employee;
import org.aperto.brainbnb.dto.Project;
import org.aperto.brainbnb.dto.User;
import org.aperto.brainbnb.service.EmployeeService;
import org.aperto.brainbnb.service.LoginService;
import org.aperto.brainbnb.service.ProjectService;

/**
 * Servlet implementation class PlanProjectServlet
 */
@WebServlet("/plan_project")
public class PlanProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projectname, startdate, budget, enddate, plancost, description;
		
		projectname = request.getParameter("projectname");
		startdate = request.getParameter("startdate");
		budget = request.getParameter("budget");
		enddate = request.getParameter("enddate");
		plancost = request.getParameter("plancost");
		description = request.getParameter("description");
		
		
		ProjectService projectService = new ProjectService();
		Project newProject = new Project(projectname, startdate, budget, enddate, plancost, description);
//		
//		ArrayList<Project> projectListNew =;
////		projectListNew.add(newProject);
//		response.sendRedirect("startpage.jsp");

		
//		if (result){
//			response.sendRedirect("startpage.jsp");
//			User user = loginService.getUserDetails(userID);
//			ArrayList<Project> projectListNew = projectService.generateProjectList();
//			ArrayList<Employee> employeeListNew = employeeService.generateEmployeeList();
//			request.getSession().setAttribute("user", user);
//			request.getSession().setAttribute("projectList", projectListNew);
//			request.getSession().setAttribute("employeeList", employeeListNew);
//			request.setAttribute("projectList", projectListNew);
			
			//response.sendRedirect(SERVLET); -- auch möglich
	
	}
}
