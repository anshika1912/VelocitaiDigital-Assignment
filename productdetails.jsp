<%-- 
    Document   : pd
    Created on : 1 Mar, 2021, 12:13:02 AM
    Author     : anshi
--%>
<%@page import="java.sql.*"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART</title>
        
     <link href="header.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <header>
        <ul id="left-nav">
        <li><img src="logo.svg"></li>
        </ul>
     
        </header>
    <h1><center>PRODUCTS !!!</h1>
    <center><a href="addtocart1.jsp"><button>VIEW YOUR CART ITEMS !</button></a>
        
    <a href="index.html"><button>LOGOUT !</button></a></center>
    <br>
    <br>
    <table align="center" border="center" cellspacing="3px" cellpadding="10px">
    <tr>
    <%
        try
        {   
            //Load Driver
            Class.forName("com.mysql.jdbc.Driver");
            //Create Connection
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","root");
            //Create Statement
            Statement st=cn.createStatement();
            //Execute Query 
            ResultSet rs=st.executeQuery("select * from addp");
                 
            while(rs.next())
            {
                String id,name,image;
                id=rs.getString("id");
                name=rs.getString("name");
                int price=rs.getInt("price");
                image=rs.getString("image");
                        
    %>
 
    <td><center><img src="./image/<%=image%>" height="150" width="150"><br><br>
    ID : <%=id%><br>
    NAME : <%=name%><br>
    PRICE : <%=price%><br>
    <br>
    <a href="addtocart.jsp?id=<%=id%>&name=<%=name%>&price=<%=price%>&image=<%=image%>"><button>ADD TO CART !</button></a>
    </center>
    </td>
    
    <% 
    }
    }
    catch(Exception ex)
    {
        out.println(ex);
    } 
    %>
    </tr>
    </body>
</html>
