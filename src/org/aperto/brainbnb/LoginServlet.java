package org.aperto.brainbnb;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.aperto.brainbnb.service.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;  
	  
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        
	        String user = request.getParameter("user");
	        String password = request.getParameter("password");
	        
	      HttpSession session = request.getSession(false);  
	      if(session!=null)  
	      session.setAttribute("user", user); 
	        
	        
	        if(Validate.checkUser(user, password))
	        {
	  
	        	RequestDispatcher rs = request.getRequestDispatcher("startpage.jsp");
	            rs.forward(request, response);
	        }
	        else
	        {
	           out.println("Username or Password incorrect");
	           RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
	           rs.include(request, response);
	        }
	    }  
	 
	 
//	    public void doPost(HttpServletRequest request, HttpServletResponse response)    
//	            throws ServletException, IOException {    
//	  
//	        response.setContentType("text/html");    
//	        PrintWriter out = response.getWriter();    
//	          
//	        String n=request.getParameter("userID");    
//	        String p=request.getParameter("password");   
//	          
//	        HttpSession session = request.getSession(false);  
//	        if(session!=null)  
//	        session.setAttribute("userID", n);  
	        
//	    
//	  
//	        if(LoginService.validate(n, p)){    
//	            RequestDispatcher rd=request.getRequestDispatcher("startpage.jsp");    
//	            rd.forward(request,response);    
//	        	response.sendRedirect("startpage.jsp");
//	        	User user = loginService.getUserDetails(userID);
//				ArrayList<Project> projectListNew = projectService.generateProjectList();
//				ArrayList<Employee> employeeListNew = employeeService.generateEmployeeList();
//				request.getSession().setAttribute("user", user);
//				request.getSession().setAttribute("projectList", projectListNew);
//				request.getSession().setAttribute("employeeList", employeeListNew);
//				request.setAttribute("projectList", projectListNew);

//				return;
//	        }    
//	        else{    
//	            out.print("<p style=\"color:white\">Sorry username or password error</p>");    
//	            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");    
//	            rd.include(request,response);    
//	        }    
//	  
//	        out.close();    
//	    }    
	
	
	
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String userID, password;
//		
//		userID = request.getParameter("userID");
//		password = request.getParameter("password");
//		
//		LoginService loginService = new LoginService();
//		ProjectService projectService = new ProjectService();
//		EmployeeService employeeService = new EmployeeService();
//		boolean result = loginService.authenticate(userID, password);
//		
//		if (result){
//			response.sendRedirect("startpage.jsp");
//			User user = loginService.getUserDetails(userID);
//			ArrayList<Project> projectListNew = projectService.generateProjectList();
//			ArrayList<Employee> employeeListNew = employeeService.generateEmployeeList();
//			request.getSession().setAttribute("user", user);
//			request.getSession().setAttribute("projectList", projectListNew);
//			request.getSession().setAttribute("employeeList", employeeListNew);
////			request.setAttribute("projectList", projectListNew);
//
//			return;
//			
//			
//			//response.sendRedirect(SERVLET); -- auch möglich
//			
//		}
//		else{
//			response.sendRedirect("login.jsp");
//			return;
//		}
//		
//	}

}
