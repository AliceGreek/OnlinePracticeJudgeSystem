/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
    
 */
package mypck;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author student
 */
//This servlet is to check the data in the database whenever you login 
public class CheckInTheDatabase extends HttpServlet {

    String getStuId = null;// get the registerNum from Login.html
    String getPass = null;// get the password from Login.html
    String regisNum = null;//get the registerNum from database
    String password = null;//get the password from database
  //  ConnectionDatabase cd = new ConnectionDatabase();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        getStuId = request.getParameter("txtRegisNum");
        getPass = request.getParameter("txtPass");
        
        try {
            String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String url = "jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo";
            Class.forName(driverName);
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String query = "select * from Student where RegisterNum =   '" + getStuId + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                password = rs.getString("Password");
                if (getPass.equals(password)) {
                    //response.sendRedirect("Practice.jsp");
                    //RequestDispatcher rd = request.getRequestDispatcher("Practice.jsp");
                    //rd.forward(request,response);
                    HttpSession session = request.getSession();
                    session.setAttribute("RegisterNum", getStuId);
                    String getRegis = (String)session.getAttribute("RegisterNum");
                    System.out.println(getRegis);
                    response.sendRedirect("Practice.jsp");
                } else {
                    out.println("ur password is wrong....");
                }
                // RequestDispatcher rd = request.getRequestDispatcher("Practice.jsp");
                //rd.forward(request, response);
            } else {
                response.sendRedirect("Login.html");
            }
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
