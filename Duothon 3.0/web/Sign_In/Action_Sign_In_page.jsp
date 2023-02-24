<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String Email = request.getParameter("Email");
String Password = request.getParameter("Password");

session.setAttribute("Email", Email);

int z=0;
    try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from pharmacy where Email='"+Email+"' and Password='"+Password+"'");
        while(rs.next()){
            
            z=1;
            session.setAttribute("Email", Email);
            response.sendRedirect("login1.html");  // page 
            
            
        }
        
        
       if(z==0){
            response.sendRedirect("userlogin.jsp?msg=notexist");
        }  
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("userlogin.jsp?msg=invalid");
}

%>