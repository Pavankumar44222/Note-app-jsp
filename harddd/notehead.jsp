<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        a{
            font-size: 20px !important;
        }
    </style>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark"
            style="background-color: tomato">
            <div>
                <a href="https://www.javaguides.net" class="navbar-brand">Joplin</a>
            </div>
    
            <ul class="navbar-nav navbar-collapse justify-content-end">
                <li><a href="homepage.jsp" class="nav-link">Home</a></li>
                <li><a href="addnotes.jsp" class="nav-link">Add Note</a></li>
                <li><a href="allnotes.jsp" class="nav-link">My Notes</a></li>
                <li><a href="logout.jsp" class="nav-link">LogOut</a></li>
            </ul>
        </nav>
    </header>

</body>
</html>