package com.Kavindu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class Editmaintain
 */
@WebServlet("/Editmaintain")
public class Editmaintain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editmaintain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/cab_management_system?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","");
			st= (Statement) con.createStatement();
			String Airline = request.getParameter("Airline");
			
			String Depature = request.getParameter("Depature");
			String Destination = request.getParameter("Destination");
			String DateTime = request.getParameter("DateTime");
			String Price = request.getParameter("Price");

            RequestDispatcher dispatcher=null;
            String id = request.getParameter("id");

            sql= "Update Cab_Maintain set Category=?,ChasisNo=?,Part=?,Days=?,Price=? where CabID='"+id+"'";
		   
		     PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1,Airline);
		    ps.setString(2,Depature);
		    ps.setString(3,Destination);
		    ps.setString(4,DateTime);
		    ps.setString(5,Price);
		    int i = ps.executeUpdate();
		    if(i > 0)
		    {
		    	
			    	 response.sendRedirect( "StaffDashboard/html/CabMaintaince.jsp");
			     
			   
		    }
		    else
		    {
		    
		    } 
            
		    

	}catch(Exception e) {
		e.printStackTrace();
	}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
