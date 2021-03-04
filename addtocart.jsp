<%-- 
    Document   : addtocart
    Created on : 2 Mar, 2021, 11:17:05 AM
    Author     : anshi
--%>

<%@page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART</title>
    </head>
    <body>
      
    <%
        
        try
        {
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        int price=Integer.parseInt(request.getParameter("price"));
        String image=request.getParameter("image");
        //Load the driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Query to insert values in addtocart table.
        String s="insert into addtocart values(?,?,?,?)";
        //Create Statement
        PreparedStatement ps=cn.prepareStatement(s);
        ps.setString(1,id);
        ps.setString(2,name);
        ps.setInt(3,price);
        ps.setString(4,image);
        //Execute Query
        int i=ps.executeUpdate();
       
         if(i>0)
        {
            %>
            <jsp:forward page="addedmessage.html"></jsp:forward>
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

