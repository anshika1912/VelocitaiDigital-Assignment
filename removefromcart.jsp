<%-- 
    Document   : removefromcart
    Created on : 3 Mar, 2021, 12:27:23 AM
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
        String id=request.getParameter("id");
        String name=request.getParameter("name");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        PreparedStatement ps=cn.prepareStatement("delete from addtocart where id=? and name=?");
       
        ps.setString(1,id);
        ps.setString(2,name);
        int i=ps.executeUpdate();
        if(i>0)
        {
             %>
            <jsp:include page="addtocart1.jsp"></jsp:include>
            <%
        }
     
    %>
    </body>
</html>
