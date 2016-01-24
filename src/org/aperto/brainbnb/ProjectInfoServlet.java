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
import org.aperto.brainbnb.service.EmployeeService;
import org.aperto.brainbnb.service.ProjectService;

/**
 * Servlet implementation class ProjectInfoServlet
 */
@WebServlet("/ProjectInfoServlet")
public class ProjectInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("project_info.jsp");
		ProjectService projectService = new ProjectService();
		ArrayList<Project> projectListNew = projectService.generateProjectList();
		request.getSession().setAttribute("projectList", projectListNew);

		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
