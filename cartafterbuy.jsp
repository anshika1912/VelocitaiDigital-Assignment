<%-- 
    Document   : cartafterbuy
    Created on : 3 Mar, 2021, 2:16:01 PM
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
        
    <center><h1>THANK YOU FOR PLACING THE ORDER!!!!!</h1></center>
    <%
   
        try
        {
        //Load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        PreparedStatement ps=cn.prepareStatement("delete from addtocart");
        //Execute Query
        int i=ps.executeUpdate();
        //Delete From Cart
        if(i>0)
        {
            %>
            <jsp:forward page="productdetails.jsp"></jsp:forward>
            <%
        }
        }
        catch(Exception e)
        {
            out.println("something is wrong");
        }
    %>
    </body>
</html>
