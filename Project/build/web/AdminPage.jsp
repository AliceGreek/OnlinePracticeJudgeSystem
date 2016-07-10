<%-- 
    Document   : AdminPage
    Created on : 2015-11-26, 21:21:59
    Author     : Alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
    <center>
        <h1>Welcome to login ! </h1>
        <br>

        <form action="AdminPower/AdminCheckStudent.jsp">

            <table border="0">
                <tbody>
                    <tr>
                        <td>Input the Student Number you wanna know:</td>
                        <td><input type="text" name="RegisNo" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="View" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <hr>
        <form action="AdminPower/AdminCheckBatch.jsp" method="get">

            <table border="0">
                <tbody>
                    <tr>
                        <td>Select the Batch Number you wanna know:</td>

                    </tr>
                    <tr>
                        <td>
                            <select name="list" size="1">
                                <option value="J01">Java01</option>
                                <option value="J02">Java02</option>
                                <option value="M01">Microsoft 01</option>
                                <option value="M02">Microsoft 02</option>
                                <option value="O01">Open Source 01</option>
                                <option value="O02">Open Source 02</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="View" /></td>

                    </tr>
                </tbody>
            </table>
        </form>

        <hr>
        <form action="AdminPower/UploadQuestion.jsp" method="get">
            <h2>Fill all the blanks here.</h2>
            <table border="0">

                <tbody>
                    <tr>
                        <td colspan="2">Upload Questions:</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="PracticeName" size="1">
                                <option value="Java01">Java01</option>
                                <option value="Java02">Java02</option>
                                <option value="Microsoft01">Microsoft 01</option>
                                <option value="M02">Microsoft 02</option>
                                <option value="O01">Open Source 01</option>
                                <option value="O02">Open Source 02</option>   
                            </select></td>

                    </tr>
                    <tr>
                        <td>Question:</td>
                        <td><textarea name="Question" rows="2" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Options:</td>
                        <td>
                            <textarea name="options" rows="5" cols="20">
The options here should be splited by "~" notation
                            </textarea>

                        </td>
                    </tr>
                    <tr>
                        <td>Keys:</td>
                        <td><input type="text" name="keys" value="" /></td>
                    </tr>
                    <tr>
                        <td>Admin Name:</td>
                        <td><input type="text" name="adminName"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Upload" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
            </center>
    </body>
</html>
