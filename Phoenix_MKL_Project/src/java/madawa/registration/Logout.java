package madawa.registration;

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

/* This Servlet terminates the session whenever clicked on the Logout button */
/*
##        #######   ######    #######  ##     ## ######## 
##       ##     ## ##    ##  ##     ## ##     ##    ##    
##       ##     ## ##        ##     ## ##     ##    ##    
##       ##     ## ##   #### ##     ## ##     ##    ##    
##       ##     ## ##    ##  ##     ## ##     ##    ##    
##       ##     ## ##    ##  ##     ## ##     ##    ##    
########  #######   ######    #######   #######     ##   
*/
@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
}
