<%@ page language="java" %>
<%
	session.invalidate();
	response.sendRedirect("loginn.jsp");
%>
