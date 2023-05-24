<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    <link rel="stylesheet" href="addnotes.css">
    
    <title>Document</title>
</head>
<body>
    <jsp:include page="notehead.jsp"></jsp:include>
    <%
		String email=(String) session.getAttribute("Individual");
    String name=(String) session.getAttribute("name");

		session.setAttribute("Individual",email);
		%>
    <div class="container">  
        <form id="contact" action="notedb.jsp" method="post">
          <h3>Add your Notes Here</h3>
          <h4>This is simple note app to save your notes safely.</h4>
          <fieldset>
            <input placeholder="Your Title" type="text"  name="title" tabindex="1" required autofocus>
          </fieldset>
        
         
       
          <fieldset>
            <textarea placeholder="Type your Notes Here...." name="content" tabindex="5"  required></textarea>
          </fieldset>
          <fieldset>
            <input type="submit" class="btn btn-primary" value="Add Note"></button>
          </fieldset>
        </form>
       
        
      </div>
</body>
</html>