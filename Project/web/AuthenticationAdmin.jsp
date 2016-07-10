<%-- 
    Document   : AuthenticationAdmin
    Created on : 2015-11-27, 13:30:53
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String adminRegis = request.getParameter("adminRegis");
            String pass = request.getParameter("pass");
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
                String qry = "select Password form AdminInfo where AdminName = "+adminRegis+"";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(qry);
                if(rs.next()){
                    if(pass.equals(rs.getString(1))){
                        response.sendRedirect("AdminPage");
                    }
                    else{
                        out.println("<h2>Your password is invalid.Please check and try again....</h2>"
                                + " <a href='AdminLogin.jsp'>Click here</a>to Relogin again.");
                    }
                }
                else{
                    out.println("<h2>Sorry,you are not admin.</h2>"
                            + "<a href='login.html'>Click here</a> to go the former page.");
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
        
    </body>
</html>
