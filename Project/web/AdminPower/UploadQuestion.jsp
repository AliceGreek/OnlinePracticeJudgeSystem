<%-- 
    Document   : UploadQuestion
    Created on : 2015-11-27, 10:48:10
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
        <%
            String practiceName = request.getParameter("PracticeName");
            String question = request.getParameter("Question");
            String options = request.getParameter("options");
            String keys = request.getParameter("keys");
            String adminName = request.getParameter("adminName");
            Connection con = null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
            String qry = "insert into " + practiceName + " values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(qry);
            if (question.isEmpty() || options.isEmpty() || keys.isEmpty()) {
                response.sendRedirect("../AdminPage.jsp");
            } else {
                ps.setString(1, question);
                ps.setString(2, options);
                ps.setString(3, keys);
                int s = ps.executeUpdate();
            }

        %>
    <center>
        <br></br>
        <H1>You have uploaded......</H1>
    
    Go back to<a href="../AdminPage.jsp"> Admin Page..</a>
    </center>
</body>
</html>
