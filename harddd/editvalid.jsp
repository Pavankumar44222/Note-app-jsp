<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>

<%
String  id=(String) session.getAttribute("noteid");
String title = request.getParameter("title");
String content = request.getParameter("content");
out.print(id);
out.print(title);
out.print(content);
int i=Integer.parseInt(id);  
  try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("update notes set title=?,content=? where id=? ");
        preparedStatement.setString(1,title);
        preparedStatement.setString(2,content);
        preparedStatement.setInt(3,i);
        preparedStatement.executeUpdate();
        out.print("data inserted successfully");    
        response.sendRedirect("allnotes.jsp");
   
    con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }

%>