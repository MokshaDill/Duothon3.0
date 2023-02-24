<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%
String 	Pharmacy_Name = request.getParameter("uname");
String 	Email = request.getParameter("email");
String Address= request.getParameter("add");
String number= request.getParameter("tel");
String Pharmacy_Licence_Number = request.getParameter("lic");
String Password = request.getParameter("psw");
String check = request.getParameter("check");

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into pharmacy values(?,?,?,?,?,?,?)");
    ps.setString(1, Pharmacy_Name);
    ps.setString(2, Email);
    ps.setString(3, Address);
    ps.setString(4, number);
    ps.setString(5, Pharmacy_Licence_Number);
    ps.setString(6, Password);
    ps.setString(7, check);
    

    ps.executeUpdate();
    response.sendRedirect("html.html");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("html2.html");
}

%>