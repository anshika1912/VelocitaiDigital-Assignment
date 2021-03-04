<%-- 
    Document   : union2
    Created on : 3 Mar, 2021, 4:35:44 PM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BUYERS</title>
    </head>

    <center>
        <h2>BUYER'S DETAILS!!</h2>
        <br>
        <br>
        <br>
       
        <%
           
          Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        Statement s=cn.createStatement();
        ResultSet rt=s.executeQuery("select * from filldetails");
        %>
        
        
         <TABLE BORDER="3" width="1200" height="100">
            <tr>
            <th>Name</th>
            <th>Product_id</th>
            <th>E-Mail</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Mobile-Number</th>
            <th>Payment-Method</th>
            <th>Transaction_id</th>
            </tr>
            <% while(rt.next())
            {
                %>
                
                <tr>
                <center>
                <td><center><%=rt.getString("name") %></center></td>    
                <td><center><%=rt.getString("Product_id") %></center></td>    
                <td><center><%=rt.getString("email") %></center></td>    
                <td><center><%=rt.getString("address") %></center></td>    
                <td><center><%=rt.getString("city") %></center></td>    
                <td><center><%=rt.getString("state") %></center></td>    
                <td><center><%=rt.getString("mobile") %></center></td>    
                <td><center><%=rt.getString("payment_method") %></center></td>    
                <td><center><%=rt.getString("transaction_id") %></center></td>  
            
              
                </center> 
                
                </tr>
                <%
                
                 
}%>
        </TABLE>
        <br><br>
     
            </button></a>
    </body>
</html>
