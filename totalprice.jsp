<%-- 
    Document   : tp
    Created on : 3 Mar, 2021, 12:28:52 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total-Amount</title>
    </head>
   
    <center>
    <h2>TOTAL AMOUNT !!</h2>
    <br>
    <br>
    <br>
       
        <%
           int total=0; 
           //Load Driver
           Class.forName("com.mysql.jdbc.Driver");
           //Create Connection
           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
           //Create Statement
           Statement s=cn.createStatement();
           //Execute Query to calculate total Price.
           ResultSet r=s.executeQuery("select sum(price) from addtocart");
        %>
        
        
        <TABLE BORDER="3" width="500" height="100">
        <tr>
            
        <th>YOUR TOTAL</th>
        <th>BUY NOW!</th>
      
        </tr>
           
        <% 
            while(r.next())
            {
                %>
                
                <tr>
                <center>
                <td><center><%=r.getString(1) %></center></td>    
                <td><center><a href="filldetails.html"><button>"BUY"</button></a></center></td>  
                </center> 
                </tr>
                <%
            }
        %>
        </TABLE>
    </center>        
    </body>
</html>
