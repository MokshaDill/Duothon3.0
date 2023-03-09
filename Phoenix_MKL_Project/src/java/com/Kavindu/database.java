package com.Kavindu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
public class database {
public java.sql.Statement st;
	
	public void connectToDB(){
		try {
			String url="jdbc:mysql://localhost:3306/mkltesting";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","");
			st=  con.createStatement();
			 
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
        }
	}
	public void Flights(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		// TODO Auto-generated method stub
		
		
		connectToDB();
		
		
		
	}

	

	public Vector<String> viewFlights(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		connectToDB();
		String sql="Select * from flights";
		Vector<String> flightlist = new Vector<String>();
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
		    flightlist.add(rs.getString(2));
			flightlist.add(rs.getString(3));
			flightlist.add(rs.getString(4));
			flightlist.add(rs.getString(5));
			flightlist.add(rs.getString(6));
			}
           
		} catch (SQLException e) { 
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flightlist;
	}
	

}



