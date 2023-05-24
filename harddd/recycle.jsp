<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="allnotes.css">
        <style>
          .recycle{
            display:flex;
            justify-content: space-between;
          }     
        
        </style>
        <title>Document</title>
    </head>
    <body>
      <jsp:include page="notehead.jsp"></jsp:include>
<% 
String name=(String) session.getAttribute("Individual");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("select * from recycle where username=?");
    preparedStatement.setString(1,name);
    ResultSet rs=preparedStatement.executeQuery(); %> 
            
      <center><h1>Removed Notes</h1></center>
            <%
            
            while (rs.next()) {
                %>
                <center><div class="card">
                  <div class="card-body">
                    <h5 class="card-title"><%=rs.getString(3)%></h5>
                    <p class="card-text"><%=rs.getString(4)%></p>
                  <a href="recyclevalid.jsp?id=<%=rs.getString("id") %>" class="card-link"><span class="glyphicon glyphicon-repeat"></span></a>
                    <a href="redelete.jsp?id=<%=rs.getString("id") %>"  class="card-link"><span class="glyphicon glyphicon-trash fa-xs"> </a>
                  </div>
                  </div>
                    </center>
                  <% } %>
             
<%
    con.close();

}
catch(Exception e)
{
out.print(e);
}

%>




</body>
</html>





