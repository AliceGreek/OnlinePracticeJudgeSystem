<%-- 
    Document   : AdminCheckBatch
    Created on : 2015-11-26, 23:45:27
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Batach Performance</title>
        <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
        <%
            Connection con = null;
            ResultSet rs = null;
            ArrayList<String> RegisNum = new ArrayList<String>();
            ArrayList<String> EnName = new ArrayList<String>();
            ArrayList<String> ChName = new ArrayList<String>();
            ArrayList<String> PracticeName = new ArrayList<String>();
            ArrayList<String> Score = new ArrayList<String>();
            String batchNum = request.getParameter("list");
            System.out.println(batchNum);
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
                String query = "select RegisterNum,EnName,ChName from Student where BatchNum = '" + batchNum + "'";
                String info = "select PracticeName,Score from Performance where RegisterNum = ?";
                PreparedStatement ps = con.prepareStatement(info);
                Statement stmt = con.createStatement();
                rs = stmt.executeQuery(query);

                while (rs.next()) {
                    //int i = 0;
                    RegisNum.add(rs.getString(1));
                    EnName.add(rs.getString(2));
                    ChName.add(rs.getString(3));
                }

                for (int j = 0; j < RegisNum.size(); j++) {
                    ps.setString(1, RegisNum.get(j));
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        PracticeName.add(rs.getString(1));
                        Score.add(rs.getString(2));
                    }

                }
            } catch (Exception e) {
                out.println(e);
            }


        %>


    <center>
        <h1>Details are followings:</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Register Number</td>
                    <td>English Name</td>
                    <td>Chinese Name</td>
                    <td>Practice Name</td>
                    <td>Score</td>
                </tr>
                <%                    for (int i = 0; i < RegisNum.size(); i++) {
                        String rn = RegisNum.get(i);
                        String en = EnName.get(i);
                        String ch = ChName.get(i);
                        String pn = PracticeName.get(i);
                        String s = Score.get(i);
                %>
                <tr>
                    <td><%=rn%></td>
                    <td><%=en%></td>
                    <td><%=ch%></td>
                    <td><%=pn%></td>
                    <td><%=s%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </center>
</body>
</html>
]'
u]
'