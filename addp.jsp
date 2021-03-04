<%-- 
    Document   : addp
    Created on : 28 Feb, 2021, 8:28:03 PM
    Author     : anshi
--%>
<%@page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product ADDED!</title>
    </head>
    <body>
      
    <%
        try
        {
        String id=request.getParameter("id");
        String n=request.getParameter("name");
        int p=Integer.parseInt(request.getParameter("price"));
        String im=request.getParameter("image");
        //load the driver
        Class.forName("com.mysql.jdbc.Driver");
        //Establish the Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Query to insert values in addp table.
        String s="insert into addp values(?,?,?,?)";
        //Create Statement
        PreparedStatement ps=cn.prepareStatement(s);
        ps.setString(1,id);
        ps.setString(2,n);
        ps.setInt(3,p);
        ps.setString(4,im);
        //Execute Query
        int i=ps.executeUpdate();
        if(i>0)
        {
           %>
           <jsp:forward page="insertionmessage.html"></jsp:forward>
           <%
        }
        }
        catch(Exception e)
        {
             %>
            <jsp:include page="sorry.html"></jsp:include>
            <%
        }
    %>
       
    </body>
</html>
