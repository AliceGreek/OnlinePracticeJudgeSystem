<%-- 
    Document   : RegisterCheck
    Created on : 2015-11-27, 19:43:46
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RegisterCheck</title>
        <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
    <center>
        <%
            String RegisterNum = null;
            String Password = null;
            String EnName = null;
            String ChName = null;
            String BatchNum = null;
            RegisterNum = request.getParameter("txtReNo");
            Password = request.getParameter("txtPassword");
            BatchNum = request.getParameter("txtBatchNo");
            ChName = request.getParameter("txtChName");
            EnName = request.getParameter("txtEnName");
            if (RegisterNum.isEmpty() || Password.isEmpty() || EnName.isEmpty() || ChName.isEmpty() || BatchNum.isEmpty()) {
                response.sendRedirect("Register.html");
            } else {
                try {
                    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
                    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo";
                    Class.forName(driverName);
                    Connection con = DriverManager.getConnection(url, "sa", "123");
                    Statement stmt = con.createStatement();
                    String query = "insert into Student values"
                            + "('" + RegisterNum + "','" + BatchNum + "','" + EnName + "','" + ChName + "','" + Password + "')";

                    String query1 = "select * from Student where RegisterNum= " + "'" + RegisterNum + "'";
                    ResultSet rs = null;
                    rs = stmt.executeQuery(query1);
                    if (rs.next() == true) {
                        out.println("It is already existed!");
                        out.println("<h1><a href='Register.html'>Click to Register" + "</a></h1>");
                    } else {
                        stmt.executeUpdate(query);
                        out.println("<h1>Registered successfully!</h1>");

                        out.println("<h1><a href='login.html'>Click to Login in" + "</a></h1>");

                    }
                    // response.sendRedirect("Login.html");
                } catch (Exception e) {
                    out.println(e.toString());
                }
            }

        %>
    </center>
    </body>
</html>
