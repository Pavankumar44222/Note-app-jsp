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
    <style>
        body{
            background-color: aqua;
        }
        h1{
            margin-top: 10px;
            padding-left: 20%;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <jsp:include page="notehead.jsp"></jsp:include>
     <%
     String email=(String) session.getAttribute("Individual");
     String name=(String) session.getAttribute("name");
 
      %>
      <div class="row g-0 bg-body-secondary position-relative">
        <div class="col-md-6 mb-md-0 p-md-4">
          <img src="note.jpg" class="w-100" alt="...">
        </div>
        <div class="col-md-6 p-4 ps-md-0">
    <h1>Hey....... <%=name%> !!! Build your online notes</h1>
          <p>First of all, you should know that taking notes isn’t just about writing down everything that you think or hear. Taking notes is about staying focused, being interactive, and recalling information that otherwise is lost. 

            Typically when we get an idea or we hear one, we tend to look for a piece of paper to jot it down. However, the times are changing. We now live in an era of information overload. And, sadly, it has made it quite easy for us to lose information on a daily basis. As a result, it becomes even easier to forget to check out the information or share it with your team. Or worse, lose the information that you jotted down. This is where apps for taking notes come in handy. </p>
        </div>
      </div>
</body>
</html>