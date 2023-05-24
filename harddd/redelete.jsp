<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    String id=request.getParameter("id");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
        
        PreparedStatement preparedStatement = con.prepareStatement("delete  from  recycle where id=?");
        //PreparedStatement preparedStatement = con.prepareStatement("delete  from  register where email=?");
        preparedStatement.setString(1,id);
        preparedStatement.executeQuery();
        out.print("Executed succcesfully");
        //
        response.sendRedirect("recycle.jsp");
        con.commit();
        con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }
    
        %>
</body>
</html>

