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
            .button-24 {
  background: #FF4742;
  border: 1px solid #FF4742;
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: nunito,roboto,proxima-nova,"proxima nova",sans-serif;
  font-size: 16px;
  font-weight: 800;
  line-height: 16px;
  min-height: 40px;
  outline: 0;
  padding: 12px 14px;
  text-align: center;
  text-rendering: geometricprecision;
  text-transform: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
}

.button-24:hover,
.button-24:active {
  background-color: initial;
  background-position: 0 0;
  color: #FF4742;
}

.button-24:active {
  opacity: .5;
}       
    </style>
    <title>Document</title>
</head>
<body>
    <center><h1>User Details</h1></center>
    <table class="table">
        <thead class="table-dark">
          <td>Name</td>
          <td>Email</td>
          <td>Mobile</td>
          <td>No of notes</td>
        </thead>
        
    <%
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","pavan");
        PreparedStatement preparedStatement = con.prepareStatement("select * from register");
        Statement stmt=con.createStatement();
        ResultSet rs=preparedStatement.executeQuery();
        while(rs.next())
        {
            %>
            <tbody>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <% 
                //PreparedStatement ps = con.prepareStatement("select count(*) from notes where email=?");
                //ps.setString(1,rs.getString(2));
                ResultSet r=stmt.executeQuery("select count(*) from notes where username like '"+rs.getString(2)+"'");
                if(r.next()){
                    %>
                <td><%=r.getInt(1)%></td>
                    <%}%>                     
                  

           
              </tbody>
           <%
 //           out.print(rs.getString(1));
   //         out.print(rs.getString(2));
     //       out.print(rs.getString(3));
       //     out.print(rs.getString(4)); 
           
               // response.sendRedirect("addnotes.jsp");
               //response.sendRedirect("notehome.jsp");
        }
        %>
    </table>
    <%
        con.close();
    
    }
    catch(Exception e)
    {
    out.print(e);
    }
    %> 

    <a href="homepage.jsp"><button class="button-24" role="button">Home</button></a>
    
</body>
</html>




