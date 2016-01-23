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
 * Servlet implementation class ShowTeamServlet
 */
@WebServlet("/ShowTeamServlet")
public class ShowTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("project_team_overview.jsp");
		EmployeeService employeeService = new EmployeeService();
		ArrayList<Employee> employeeListNew = employeeService.generateEmployeeList();
		request.getSession().setAttribute("employeeList", employeeListNew);

			return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
