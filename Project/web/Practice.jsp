<%-- 
    Document   : Practice
    Created on : 2015-11-23, 19:19:43
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practice</title>
        <style>
            body{
                font-family:cursive;
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
    <center>
        <h2>Online Self Practice</h2>
        <br>
        Please select your choice:
        
        <form action="Java01.jsp">
           <input type="submit" value="Java01" name="practice"/><br><br> 
        </form>
        <form action="http://localhost:8080/Project/Html5.jsp">
            <input type="submit" value="Html5" name="practice"/><br><br>
        </form>
        <form action="http://localhost:8080/Project/Hibernate.jsp">
            <input type="submit" value="Hibernate" name="practice"/><br><br>
        </form>
        <form action="http://localhost:8080/Project/JSP_Servlet.jsp">
            <input type="submit" value="JSP Servlet" name="practice"/><br><br>
        </form>
        
</form>
    </center>
</body>
</html>
