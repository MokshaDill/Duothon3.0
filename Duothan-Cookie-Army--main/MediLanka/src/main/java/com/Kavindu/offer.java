package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class staffA
 */
@WebServlet("/Offer")
public class offer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public offer() {
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
		String Days = request.getParameter("days");
		String Passengers = request.getParameter("Passengers");
		
try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/cab_management_system?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","");
			st= (Statement) con.createStatement();
			
			
	
            RequestDispatcher dispatcher=null;
			    
		    sql ="Insert into trips(OfferID,Offer,ValidTill,Depature,Destination,DateTime,Days,Total) values('"+MemberID+"','"+FlightID+"','"+Airline+"','"+Depature+"','"+Destination+"','"+DateTime+"','"+Days+"','"+Passengers+"')";
		    int results =st.executeUpdate(sql);
		    if(results==0) {
		    	 request.setAttribute("status", "offerfail");
		    	 dispatcher = request.getRequestDispatcher("index.jsp");
				 
		     }else {
		    	   request.setAttribute("status", "offer");
		    	   dispatcher = request.getRequestDispatcher("index.jsp");
		     }
		     dispatcher.forward(request, response);

	}catch(Exception e) {
		e.printStackTrace();
	}

}
}

	


