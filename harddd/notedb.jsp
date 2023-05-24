<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>

<%
String email=(String) session.getAttribute("Individual");
out.println("Hey........! welcome "+email);
String title = request.getParameter("title");
String content = request.getParameter("content");
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("insert into notes(username,title,content) values(?,?,?)");
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,title);
        preparedStatement.setString(3,content);
        preparedStatement.executeUpdate();
        out.print("data inserted successfully");    
        session.setAttribute("Individual",email);
        response.sendRedirect("allnotes.jsp");
   
    con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }

%>