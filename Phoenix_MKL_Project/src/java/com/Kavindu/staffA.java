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
/**
 * Servlet implementation class staffA
 */
@WebServlet("/StaffA")
public class staffA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staffA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String MemberID = request.getParameter("MemberID");
		String FlightID = request.getParameter("FlightID");
		String Airline = request.getParameter("Airline");
		String Depature = request.getParameter("Depature");
		String Destination = request.getParameter("Destination");
		String DateTime = request.getParameter("DateTime");
		String Passengers = request.getParameter("Passengers");
		String Total = request.getParameter("Total");

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			
			
	
            RequestDispatcher dispatcher=null;
			    
		    sql ="Insert into UserBookings(MemberID,FlightId,Airline,Depature,Destination,DateTime,Passengers,Total) values('"+MemberID+"','"+FlightID+"','"+Airline+"','"+Depature+"','"+Destination+"','"+DateTime+"','"+Passengers+"','"+Total+"')";
		     int results =st.executeUpdate(sql);
		    if(results==0) {
		    	 request.setAttribute("status", "failed");
		    	 dispatcher = request.getRequestDispatcher("index.jsp");
				 
		     }else {
		    	   request.setAttribute("status", "AddBooking");
		    	   dispatcher = request.getRequestDispatcher("index.jsp");
		     }
		     dispatcher.forward(request, response);

	}catch(Exception e) {
		e.printStackTrace();
	}

}

	

}
