<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%
String 	Drug_Name = request.getParameter("Drug_Name");
String 	Manufacturer = request.getParameter("Manufacturer");
String Supplier= request.getParameter("Supplier");
String NDC = request.getParameter("NDC");
String Explaration_Date= request.getParameter("Explaration_Date");
String Quantity = request.getParameter("Quantity");
String Unit_Price = request.getParameter("Unit_Price");



try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into inventory values(?,?,?,?,?,?,?)");
    ps.setString(1, Drug_Name);
    ps.setString(2, Manufacturer);
    ps.setString(3, Supplier);
    ps.setString(4, NDC);
    ps.setString(5,Explaration_Date );
    ps.setString(6, Quantity);
    ps.setString(7, Unit_Price);
    

    ps.executeUpdate();
    response.sendRedirect("user_details.html?msg2=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("Admin temp.jsp?msg2=invalid");
}

%>