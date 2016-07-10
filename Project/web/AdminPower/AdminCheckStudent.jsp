<%-- 
    Document   : AdminCheckStudent
    Created on : 2015-11-26, 23:14:56
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheckStudentPermance</title>
        <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
        <%
            Connection conn = null;
            String stuRegisNum = null;
            String EnName = null;
            String ChName = null;
            ResultSet rs = null;
            int score = 0;
            String PracticeName = null;
            String getRegisNum = request.getParameter("RegisNo");
            if (getRegisNum.isEmpty()) {
                response.sendRedirect(" http://localhost:8080/Project/AdminPage.jsp");
            } else {
                try {

                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
                    String query = "select * from Performance where RegisterNum = '" + getRegisNum + "'";
                    String infoStu = "select EnName,ChName from Student where RegisterNum = '" + getRegisNum + "'";

                    Statement stmt = conn.createStatement();
                    rs = stmt.executeQuery(query);
                    while (rs.next()) {
                        stuRegisNum = rs.getString("RegisterNum");
                        PracticeName = rs.getString("PracticeName");
                        score = Integer.parseInt(rs.getString("score"));
                    }
                    rs = stmt.executeQuery(infoStu);
                    while (rs.next()) {
                        EnName = rs.getString(1);
                        ChName = rs.getString(2);
                    }

                } catch (Exception e) {
                    out.println(e);
                }
            }


        %>
    <center>
        <br><br>
        <h1>The Student Performance is following:</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Practice Name</td>
                    <td><%=PracticeName%></td>
                </tr>
                <tr>
                    <td>English Name</td>
                    <td><%=EnName%></td>
                </tr>
                <tr>
                    <td>Chinese Name</td>
                    <td><%=ChName%></td>
                </tr>
                <tr>
                    <td>Register Number</td>
                    <td><%=stuRegisNum%></td>
                </tr>
                <tr>
                    <td>Score</td>
                    <td><%=score%></td>
                </tr>
            </tbody>
        </table>
    </center>
</body>
</html>
