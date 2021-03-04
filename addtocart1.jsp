<%-- 
    Document   : addtocart1
    Created on : 2 Mar, 2021, 11:41:02 AM
    Author     : anshi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product-Details</title>
    </head>
    <center>
    <h2>PRODUCT DETAILS !!</h2>
     
    <br>
    <br>
    <br>
    <%
        //Load the Driver    
        Class.forName("com.mysql.jdbc.Driver");
        //Create Connection
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
        //Create Statement
        Statement s=cn.createStatement();
        //Execute Query.
        ResultSet r=s.executeQuery("select * from addtocart");
       
    %>
        
    <TABLE BORDER="3">
    <tr> 
    <th>ID</th>
    <th>NAME</th>
    <th>PRICE</th>
    <th>IMAGE</th>
    </tr>
    
    <% 
        while(r.next())
        {
            %>
            <tr>
            <td><%=r.getString(1) %></td>    
            <td><%=r.getString(2) %></td>    
            <td><%=r.getInt(3) %></td> 
          
            <td><img src="./image/<%=r.getString(4) %>" height="150" width="150"</td>    
            <td><a href="removefromcart.jsp?id=<%=r.getString(1) %>&name=<%=r.getString(2) %>"><button>REMOVE ITEM</button></td></a>
                    
            </tr>
         
            <%
        }
    %>
    
    </TABLE>
    <br><br>
    <b><a href="totalprice.jsp">PROCEED TO CHECKOUT!!!</a></B></br></br>
    </center>        
    </body>
</html>
