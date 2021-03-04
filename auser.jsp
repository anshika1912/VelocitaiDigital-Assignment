<%-- 
    Document   : auser
    Created on : 28 Feb, 2021, 8:59:17 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER</title>
    </head>
    <body>
    <%
        try
        {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String city=request.getParameter("state");
        String mobile=request.getParameter("mobile");
        String password=request.getParameter("password");
  
        //Load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Query to insert values to user table
        String s="insert into user values(?,?,?,?,?,?)";
        //Create Statement
        PreparedStatement ps=cn.prepareStatement(s);
       
       
        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,address);
        ps.setString(4,city);
        ps.setString(5,mobile);
        ps.setString(6,password);
        //Move back to user login page
        int i1=ps.executeUpdate();
        if(i1>0)
        {
            %>
            <jsp:forward page="user.jsp"></jsp:forward>
            <%
        }
        }
        catch(Exception e)
        {
            out.println("SOMETHING IS WRONG!");
            
        
        }
        }
    %>
    </body>
</html>
