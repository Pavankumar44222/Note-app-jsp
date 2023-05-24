<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
%>
<%
if(username.equals("k.pavankumar@gmail.com") && password.equals("pavan"))
{
    response.sendRedirect("userdetails.jsp");
}
else{
    out.print("Invalid Crediantials");
    //response.sendRedirect("notehome.jsp");
}
%>