
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
String id=request.getParameter("id");
session.setAttribute("noteid",id);

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
    PreparedStatement preparedStatement = con.prepareStatement("select * from notes where id=?");
    preparedStatement.setString(1,id);
    ResultSet rs=preparedStatement.executeQuery();
    while(rs.next()){
    
    %>
    <div class="container">  
        <form id="contact" action="editvalid.jsp" method="post">
          <h3>Update your Notes Here</h3>
          <h4>This is simple note app to save your notes safely.</h4>
          <fieldset>
            <input placeholder="Your Title" value="<%=rs.getString(3)%>" type="text"  name="title" tabindex="1" required autofocus>
          </fieldset>
        
         <fieldset>
            <textarea name="content"><%=rs.getString(4)%></textarea>
            <!-- <input value="<%=rs.getString(4)%>" type="text" rows="10" name="content"  required autofocus> -->
          </fieldset>
          <fieldset>
            <input type="submit" class="btn btn-primary" value="Update Notes"></button>
          </fieldset>
        </form>
       
        
      </div>

      <%
    
    }
}
catch(Exception e)
{
out.print(e);
}

    %>
</body>
</html>