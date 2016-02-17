package org.aperto.brainbnb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aperto.brainbnb.dto.Project;

/**
 * Servlet implementation class AddWorkerServlet
 */
@WebServlet("/AddWorkerServlet")
public class AddWorkerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddWorkerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currentIndexString;
		int currentIndexInt;
	
		
		currentIndexString = request.getParameter("id");
		currentIndexInt = Integer.parseInt(currentIndexString);
		System.out.println(currentIndexInt);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getSession().setAttribute("currentIndex", currentIndexInt);
	
		response.sendRedirect("add_worker.jsp");
	}


}
