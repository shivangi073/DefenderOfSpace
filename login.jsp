<%-- 
    Document   : inn
    Created on : Apr 27, 2018, 6:55:13 PM
    Author     : My Hp
--%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

         
     
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url('LgImg_1.jpg');
                background-size: cover;
                top:0;
                left:0;
                 background-repeat: no-repeat;
            }
            .lg{
                align-items: center;
                  min-height: 100%;
                  min-width: 100%;
                  position: fixed;
                color:white;
                font-size: 80px;
                font-weight: bolder;
                font-style:italic;
              padding-left: 350px;
              padding-top: 250px;
                text-shadow:0px 0px 20px #FF0000,0px 0px 50px #0000FF;
            }
            #nxt{
                border-radius: 5px;
                margin-top: 10px;
                font-style:italic;
                width:350px;
                font-weight: bolder;
                font-size: 20px;
                height:30px;
                 margin-left: 450px;
                 margin-top :400px;
            }
            
        </style>
    </style>
    </head>
    <body>
        <%
    String email=request.getParameter("email");
    
    String pas =request.getParameter("pas");
   
   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spacewar","root","");
    if(con.equals(null))
        System.out.print("Not Connected");
     Statement stmt = con.createStatement();
     String sql="select email,pass from register where email='"+email+"'";
     ResultSet rs=stmt.executeQuery(sql);
    if(rs.next()){
             
           if( !(rs.getString("pass").equals(pas)))
             {
             %>
             <script>
           alert("Incorrect Password");
           </script>
           
         <%   }
else{
%>
<div>
    <div class ="lg">Login Successful</div>
    <br><a href=""><input type='button' id='nxt' value='Let The War Begin' style="background-color:#FBB366;height:80px;color:black"></a>
</div>
<%
}
}  
else
{   %>
              <script>
           alert("You are not Registered");
           </script>
              <%  
                  }
} catch(Exception e)
     {
     e.printStackTrace();
     }
%>

    </body>
</html>
