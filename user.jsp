<%-- 
    Document   : user
    Created on : 28 Feb, 2021, 8:23:43 PM
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
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        //Load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        PreparedStatement p1=cn.prepareStatement("select * from user where email=? and password=?");
        p1.setString(1,email);
        p1.setString(2,password);
        //Execute Query
        ResultSet r=p1.executeQuery();
        //if email password matches proceed to productdetails.jsp
        if(r.next())
        {
            %>
            <jsp:forward page="productdetails.jsp"></jsp:forward>
            <%
        }
        else
        {
            %>
            <jsp:include page="user.html"></jsp:include>
            <%
        }
       
       %>
       
        </body>
</html>
 