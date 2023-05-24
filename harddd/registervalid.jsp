<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("firstName");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");
out.print(firstName);
out.print(email);
out.print(mobile);
out.print(password);
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("insert into register values(?,?,?,?)");
        preparedStatement.setString(1,firstName);
        preparedStatement.setString(2,email);
        preparedStatement.setString(3,mobile);
        preparedStatement.setString(4,password);
        preparedStatement.executeUpdate();
        out.print("data inserted successfully");
        response.sendRedirect("homepage.jsp");

    con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }


%>