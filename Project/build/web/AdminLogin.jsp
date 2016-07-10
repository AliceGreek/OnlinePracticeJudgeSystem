<%-- 
    Document   : AdminLogin
    Created on : 2015-11-27, 12:06:32
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
          <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
    <center>
        <form action="AdminPage.jsp">
            <table border="0">

                <tbody>
                    <tr>
                        <td>AdminName：</td>
                        <td><input type="text" name="adminRegis" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password：</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> 
                            <input type="submit" value="Login" />
                        </td>

                    </tr>
                </tbody>
            </table>
        </form>
        </center>
    </body>
</html>
