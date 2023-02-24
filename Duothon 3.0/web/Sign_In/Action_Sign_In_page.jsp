<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String Email = request.getParameter("email");
String Password = request.getParameter("psw");

session.setAttribute("Email", Email);

int z=0;
    try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from pharmacy where Email='"+Email+"' and Password='"+Password+"'");
        while(rs.next()){
            
            z=1;
            session.setAttribute("Email", Email);
            response.sendRedirect("html2.html");  // page 
            
            
        }
        
        
       if(z==0){
            response.sendRedirect("html.html");
        }  
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("html2.html");
}

%>