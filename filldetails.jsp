<%-- 
    Document   : filldetails
    Created on : 3 Mar, 2021, 2:07:15 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
       
        String name=request.getParameter("name");
        String id=request.getParameter("id");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String mobile=request.getParameter("mobile");
        String price=request.getParameter("payment_method");
        String transactionid=request.getParameter("transaction_id");
        
        //Load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement,insert values in filldetails table
        String st="insert into filldetails values(?,?,?,?,?,?,?,?,?)";
        //Execute Query
        PreparedStatement ps=cn.prepareStatement(st);
        
        ps.setString(1,name);
        ps.setString(2,id);
        ps.setString(3,email);
        ps.setString(4,address);
        ps.setString(5,city);
        ps.setString(6,state);
        ps.setString(7,mobile);
        ps.setString(8,price);
        ps.setString(9,transactionid);
         
        int i1=ps.executeUpdate();
       if(i1>0)
       {
            %>
            <jsp:include page="thankyou.html"></jsp:include>
            <%
        }
       %>
    </body>
</html>
