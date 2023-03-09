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
 * Servlet implementation class UnblockUser
 */
@WebServlet("/Unblock")
public class UnblockUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnblockUser() {
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
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			
			String id = request.getParameter("id");
		
            RequestDispatcher dispatcher=null;
            sql= "Select * from BlockUsers where memberID ='"+id+"'";
            String memberID = null,name = null,password = null,dob = null,phone = null,email = null,add1 = null,add2 = null,add3 = null,city = null,state = null,country = null,role = null,status = null,ip = null,hostname = null,lastLogin = null;
           
		    ResultSet rs =  st.executeQuery(sql);
		    while(rs.next()) {
		    	memberID = rs.getString("memberID");
		    	name = rs.getString("name");
		    	password = rs.getString("password");
		    	dob = rs.getString("dob");
		    	phone = rs.getString("phone");
		    	email = rs.getString("email");
		    	add1 = rs.getString("add1");
		    	add2 = rs.getString("add2");
		    	add3 = rs.getString("add3");
		    	
		    	city = rs.getString("city");
		    	state = rs.getString("state");
		    	country = rs.getString("country");
		    	role= rs.getString("role");
		    	status = rs.getString("status");
		    	ip = rs.getString("ip");
		    	hostname = rs.getString("hostname");
		    	lastLogin = rs.getString("lastLogin");
		    	
		    }
		    String query = "Insert into Users values ('"+memberID+"','"+name+"','"+password+"','"+dob+"','"+phone+"','"+email+"','"+add1+"','"+add2+"','"+add3+"','"+city+"','"+state+"','"+country+"','"+role+"','"+status+"','"+ip+"','"+hostname+"','"+lastLogin+"')";
		     st.executeUpdate(query);
		     String qry ="Delete from BlockUsers where memberID='"+id+"'";
		     st.executeUpdate(qry);
		   response.sendRedirect("adminDashboard/html/Users.jsp");
		    
            
		    

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
