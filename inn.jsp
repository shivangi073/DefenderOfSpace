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
            div{
                background-image: url('IMG-20180701-WA0058.jpg');
                align-items: center;
                  min-height: 100%;
                  min-width: 100%;
                  position: fixed;
                color:white;
                font-size: 80px;
                background-size: cover;
                top:0;
                left:0;
                background-repeat: no-repeat;
                font-weight: bolder;
                font-style:italic;
               padding-left:300px;
                padding-top: 300px;
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
                 margin-left: 170px;
                 margin-bottom: 30px;
            }
        </style>
    </style>
    </head>
    <body>
        <%
    String name1= request.getParameter("name1");
        String name2= request.getParameter("name2");
    String tname= request.getParameter("tname");

    String Course=request.getParameter("course");
        String Branch=request.getParameter("branch");
    String Year=request.getParameter("year");
    String College=request.getParameter("College");
    String Contact=request.getParameter("Contact");
    String email=request.getParameter("email");
    session.setAttribute("email", email);
    String pas=request.getParameter("pas");
try{
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spacewar","root","");
     Statement stmt = con.createStatement();
     String sql="insert into register(name1,name2,tname,course,branch,year,clg,cntct,email,pass) values ('"+name1+"','"+name2+"','"+tname+"','"+Course+"','"+Branch+"','"+Year+"','"+College+"','"+Contact+"','"+email+"','"+pas+"')";
     
     stmt.executeUpdate(sql);
     
}catch(Exception e)
     {
     e.printStackTrace();
     }
%>
<div>Registered Successfully
    <br><a href="#"><input type='submit' id='nxt' value='Let The War Begin' style="background-color:#654FEC;height:80px;color:white"></a>
</div>
    </body>
</html>
