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
          .button-30 {
  align-items: center;
  appearance: none;
  background-color: #FCFCFD;
  border-radius: 4px;
  border-width: 0;
  box-shadow: rgba(45, 35, 66, 0.4) 0 2px 4px,rgba(45, 35, 66, 0.3) 0 7px 13px -3px,#D6D6E7 0 -3px 0 inset;
  box-sizing: border-box;
  color: #36395A;
  cursor: pointer;
  display: inline-flex;
  font-family: "JetBrains Mono",monospace;
  height: 48px;
  justify-content: center;
  line-height: 1;
  list-style: none;
  overflow: hidden;
  padding-left: 16px;
  padding-right: 16px;
  position: relative;
  text-align: left;
  text-decoration: none;
  transition: box-shadow .15s,transform .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  will-change: box-shadow,transform;
  font-size: 18px;
}

.button-30:focus {
  box-shadow: #D6D6E7 0 0 0 1.5px inset, rgba(45, 35, 66, 0.4) 0 2px 4px, rgba(45, 35, 66, 0.3) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
}

.button-30:hover {
  box-shadow: rgba(45, 35, 66, 0.4) 0 4px 8px, rgba(45, 35, 66, 0.3) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
  transform: translateY(-2px);
}

.button-30:active {
  box-shadow: #D6D6E7 0 3px 7px inset;
  transform: translateY(2px);
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
    PreparedStatement preparedStatement = con.prepareStatement("select * from notes where username=?");
    preparedStatement.setString(1,name);
    ResultSet rs=preparedStatement.executeQuery(); %> 
    <!-- <div class="recycle">
      <center><h1>All your notes</h1></center>
      <h2>Recyclebin  </h2>

    </div> -->
    <div class="recycle">
      <p>.</p>
      <a href="recycle.jsp"> <button class="button-30" role="button">Recycle Bin</button></a>
      </div>          
      <center><h1>All your notes</h1></center>
            <%
            
            while (rs.next()) {
                %>
                <center><div class="card">
                  <div class="card-body">
                    <h5 class="card-title"><%=rs.getString(3)%></h5>
                    <p class="card-text"><%=rs.getString(4)%></p>
                  <a href="updatenotes.jsp?id=<%=rs.getString("id") %>" class="card-link"><span class="glyphicon glyphicon-pencil"></span></a>
                    <a href="delete.jsp?id=<%=rs.getString("id") %>"  class="card-link"><span class="glyphicon glyphicon-trash fa-xs"> </a>
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





