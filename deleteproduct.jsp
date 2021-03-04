<%-- 
    Document   : deletep
    Created on : 28 Feb, 2021, 9:43:09 PM
    Author     : anshi
--%>
<%@page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
   <%
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        
        //load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        PreparedStatement ps=cn.prepareStatement("delete from addp where id=? and name=?");
       
        ps.setString(1,id);
        ps.setString(2,name);
        //Execute Query
        int i=ps.executeUpdate();
        if(i>0)
        {
            %>
            <jsp:forward page="deleted.html"></jsp:forward>
            <%
        }
        else
        {
            %>
             <jsp:include page="sorry.html"></jsp:include>
            <%
            }
        %>
        
    </body>
</html>
