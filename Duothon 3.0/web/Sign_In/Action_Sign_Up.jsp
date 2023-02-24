<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%
String 	Pharmacy_Name = request.getParameter("Pharmacy_Name");
String 	Email = request.getParameter("Email");
String Address= request.getParameter("Address");
String Pharmacy_Licence_Number = request.getParameter("Pharmacy_Licence_Number");
String Password = request.getParameter("Password");
String Pharmacy_Name="";
String Email="";
String Address="";
String Pharmacy_Licence_Number="";
PasswordString Password="";

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into pharmacy values(?,?,?,?,?,?,?,?)");
    ps.setString(1, Pharmacy_Name);
    ps.setString(2, Email);
    ps.setString(3, Address);
    ps.setString(4, Pharmacy_Licence_Number);
    ps.setString(5, );
    

    ps.executeUpdate();
    response.sendRedirect("userlogin.jsp?msg2=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("userlogin.jsp?msg2=invalid");
}

%>