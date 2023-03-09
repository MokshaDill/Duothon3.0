package com.Kavindu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class sampleServlet
 */
@WebServlet("/sample")
public class sampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		int Passengers = Integer.parseInt(request.getParameter("passengers"));
	    HttpSession sessionID = request.getSession(true);
	    sessionID.setAttribute("id",id);
	    sessionID.setAttribute("passengers",Passengers);
	    RequestDispatcher rd = request.getRequestDispatcher("BookTicket.jsp");
	    rd.forward(request,response);
		
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher rd = request.getRequestDispatcher("PayTicket.jsp");
	    rd.forward(request,response);
	}

	
	}


