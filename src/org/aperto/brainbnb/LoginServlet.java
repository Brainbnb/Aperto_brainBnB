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
	 
	 
}