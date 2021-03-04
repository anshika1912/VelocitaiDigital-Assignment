<%-- 
    Document   : admin
    Created on : 28 Feb, 2021, 8:17:51 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN-LOGIN</title>
    </head>
    <body>
      
     <%
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        //load the Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Establish Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        PreparedStatement p1=cn.prepareStatement("select * from admin where email=? and password=?");
        p1.setString(1,email);
        p1.setString(2,password);
        //Execute Query
        ResultSet r=p1.executeQuery();
        if(r.next())
        {
            %>
            <jsp:forward page="adminsection.html"></jsp:forward>
            <%
        }
        else
        {
            %>
            <jsp:include page="admin.html"></jsp:include>
            <%
        }
       
        %>
       
    </body>
</html>
