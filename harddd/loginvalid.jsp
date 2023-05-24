<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
%>
<%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("select * from register where email=? and password=?");
    preparedStatement.setString(1,username);
    preparedStatement.setString(2,password);
    ResultSet rs=preparedStatement.executeQuery();
    if(rs.next())
    {
        out.print("successfullly loign...."); 
            out.print("Hey.... ! "+username);
            session.setAttribute("Individual",username);
            out.print(username);
            session.setAttribute("name",rs.getString(1));
           // response.sendRedirect("addnotes.jsp");
           response.sendRedirect("notehome.jsp");
    }
    else
    {
       %>
       <center><h1 style="color:red;"s>* * *Invalid Crediantials * * *</h1></center>
       <%
    }
    con.close();

}
catch(Exception e)
{
out.print(e);
}
%>
<jsp:include page="loginn.jsp"/>
