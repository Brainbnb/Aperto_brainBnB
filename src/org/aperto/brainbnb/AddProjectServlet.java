package org.aperto.brainbnb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.aperto.brainbnb.service.Validate;
import org.aperto.brainbnb.dto.Project;
import org.aperto.brainbnb.service.AddProjectService;


/**
 * Servlet implementation class AddProject
 */
@WebServlet("/addproject")
public class AddProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projectname, startdate, budget, enddate, plancost, description;
		String user;
	
		projectname = request.getParameter("projectname");
		startdate = request.getParameter("startdate");
		budget = request.getParameter("budget");
		enddate = request.getParameter("enddate");
		plancost = request.getParameter("plancost");
		description = request.getParameter("description");
		
		user = (String) request.getSession().getAttribute("user");
		System.out.println("hallo");
		
		Project newProject = new Project(projectname, startdate, budget, enddate, plancost, description);
		
		AddProjectService.addProjectToDatabase(newProject, user);
		
		request.getSession().setAttribute("projectname", projectname);
		request.getSession().setAttribute("startdate", startdate);
		request.getSession().setAttribute("enddate", enddate);
		request.getSession().setAttribute("budget", budget);
		request.getSession().setAttribute("plancost", plancost);
		request.getSession().setAttribute("description", description);
		
		RequestDispatcher rs = request.getRequestDispatcher("planned_project.jsp");
        rs.forward(request, response); //WIe kann ich ein Objekt an das nächste JSP übergeben?? 
        
//        public AddProjectServlet() {
//            super();
//            // TODO Auto-generated constructor stub
//        }

    	/**
    	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    	 */
//    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    		
    //
//    		response.getWriter().append("Served at: ").append(request.getContextPath());
//    		response.sendRedirect("add_project.jsp");
//    		
//    		return;
//    	}
//		LoginService loginService = new LoginService();
//		ProjectService projectService = new ProjectService();
//		EmployeeService employeeService = new EmployeeService();
//		boolean result = loginService.authenticate(userID, password);
	}
}