package org.aperto.brainbnb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aperto.brainbnb.service.AddWorkerService;

/**
 * Servlet implementation class AddToProjectServlet
 */
@WebServlet("/AddToProjectServlet")
public class AddToProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user;
		String project;
	
		
		user = request.getParameter("user");
		project = request.getParameter("project");
		System.out.println(user);
		System.out.println(project);
		AddWorkerService.addWorker(user, project);
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
		response.sendRedirect("project_team_overview.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
