<%-- 
    Document   : Viewp
    Created on : 28 Feb, 2021, 10:25:48 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCTS</title>
    </head>
    
    <center>
    <h2>PRODUCT DETAILS !!</h2>
    <br>
    <br>
    <%
        //load Driver
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        Statement s=cn.createStatement();
        //Execute Select Query
        ResultSet r=s.executeQuery("select * from addp");
    %>
        
    <TABLE BORDER="3" width="850" height="200">
    <tr>
    <th>Id</th>
    <th>NAME</th>
    <th>PRICE</th>
    <th>IMAGE</th>
    </tr>
       
    <% while(r.next())
        {
            %>
                <center>
                <tr>
                    <td><center><%=r.getString(1) %></center></td>    
                    <td><center><%=r.getString(2) %></center></td>    
                    <td><center><%=r.getInt(3) %></center></td>    
                    <td><center><img src="./image/<%=r.getString(4) %>" height="150" width="150"</center></td>    
              
                </tr>
                </center>
            <%
        }
    %>
    </TABLE>       
    </body>
</html>
