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
        
        PreparedStatement preparedStatements = con.prepareStatement("select * from recycle where id=?");
        preparedStatements.setString(1,id);
        out.print("after select * from table");
        ResultSet rs=preparedStatements.executeQuery();
        if(rs.next())
        {
            PreparedStatement create = con.prepareStatement("insert into notes(username,title,content) values(?,?,?)");
            create.setString(1,rs.getString(2));
            create.setString(2,rs.getString(3));
            create.setString(3,rs.getString(4));
            create.executeQuery();
            out.print(" data inserted into Executed Succesfullyy..........."+rs.getString(2));
        }
        PreparedStatement preparedStatement = con.prepareStatement("delete from recycle where id=?");
        preparedStatement.setString(1,id);
        preparedStatement.executeQuery();
        out.print("Executed succcesfully");
        //
        response.sendRedirect("allnotes.jsp");
        con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }
    
        %>
</body>
</html>

