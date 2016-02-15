package org.aperto.brainbnb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aperto.brainbnb.dto.Project;

/**
 * Servlet implementation class ProjectTeamServlet
 */
@WebServlet("/ProjectTeamServlet")
public class ProjectTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currenWorkerIDString;
		int currentWorkerIDInt;
				
		currenWorkerIDString = request.getParameter("employee_id");
		currentWorkerIDInt = Integer.parseInt(currenWorkerIDString);
		System.out.println("aktueller worker "+currentWorkerIDInt);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getSession().setAttribute("currentWorker", currentWorkerIDInt);
		response.sendRedirect("project_team.jsp");

		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
