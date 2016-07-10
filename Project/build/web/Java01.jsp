
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
        if(session.getAttribute("practice")==null){
            response.sendRedirect("login.html");
        }
        
        %>
        
        
        <h2>Questions</h2>
        <%
            String tableName = (String) session.getAttribute("practice");
            String runOnce = (String) session.getAttribute("runOnce");
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            //String[] quest;
            //Initialize once to null
            ArrayList<String> quest = new ArrayList<String>();
            ArrayList<String> options = new ArrayList<String>();
            ArrayList<String> keys = new ArrayList<String>();

            if (runOnce == null) {
                try {
                    session.setAttribute("practice",request.getParameter("practice"));
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
                    String qry = "Select * from Java01";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(qry);

                    while (rs.next()) {
                        quest.add(rs.getString(1));
                        options.add(rs.getString(2));
                        keys.add(rs.getString(3));
                        //i++;
                    }
                    session.setAttribute("runOnce", "true");
                    session.setAttribute("quest", quest);
                    session.setAttribute("options", options);
                    session.setAttribute("keys", keys);
                    conn.close();
                } catch (Exception ex) {
                    out.println("ERROR : " + ex);
                }
            }
        %>

        <%
            //Get everything back here
            quest = (ArrayList) session.getAttribute("quest");
            options = (ArrayList) session.getAttribute("options");
            keys = (ArrayList) session.getAttribute("keys");

        %>


        <%            //Check if any of the buttons have been clicked
            String button = request.getParameter("examButton");
            String ans;
            Integer sum = 0;
            if (request.getParameter("quest") != null) {
                ans = request.getParameter("quest");
            } else {
                ans = "NO";
            }
            Integer idx = new Integer(0);
            idx = (Integer) session.getAttribute("index");
            int i = 0;
            if (idx == null) {
                idx = new Integer(0);
            } else if (idx.intValue() >= 0) {
                i = idx.intValue();
                if (button != null) {
                    if (button.equals("Pre")) {
                        session.setAttribute(new Integer(i).toString(), ans);
                        i--;
                        if (i < 0) {
                            i = 0;
                        }
                    } else if (button.equals("Next")) {
                        session.setAttribute(new Integer(i).toString(), ans);
                        i++;
                        if (i >= quest.size() - 1) {
                            i = quest.size() - 1;
                        }

                    } else {
                        for (int k = 0; k < keys.size(); k++) {

                            if (keys.get(k).equals(session.getAttribute(k + ""))) {
                                sum += 20;
                            }
                        }
                        try {
                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo", "sa", "123");
                            String quy = "update Performance set PracticeName=?,Score=? where RegisterNum=?";
                            //String quy = "insert into Performance values(?,?,?)";
                            String regisNum = (String)session.getAttribute("RegisterNum");
//                            String tableName = request.getParameter("practice");
                    //        out.println(regisNum+"  "+tableName);
                            PreparedStatement ps = con.prepareStatement(quy);
                            ps.setString(1, tableName );
                            ps.setString(2, sum+"");
                            ps.setString(3, regisNum);
                            int s = ps.executeUpdate();
                            response.sendRedirect("Wishes.jsp");
                            
                        } catch (Exception e) {
                            out.println(e);
                        }
                    }

                }

            }
            session.setAttribute("index", new Integer(i));

        %>
        <form action="http://localhost:8080/Project/Java01.jsp">
                
            Q<%=(i + 1)%>. <%out.println(quest.get(i));%><br/>
            <%
                String[] opt = options.get(i).split("~");
                for (int j = 0; j < opt.length; j++) {
                    char choice = (char) (j + 65);
                    String userAns = (String) session.getAttribute(new Integer(i).toString());
                    if (userAns != null) {
                        if (userAns.charAt(0) == choice) {
                            out.println(choice + ". <input type='radio' name='quest' value='" + choice + "' checked>" + opt[j] + "<br/>");
                        } else {
                            out.println(choice + ". <input type='radio' name='quest' value='" + choice + "'>" + opt[j] + "<br/>");
                        }
                    } else {
                        out.println(choice + ". <input type='radio' name='quest' value='" + choice + "'>" + opt[j] + "<br/>");
                    }
                }
            %>
            <input type="submit" value="Pre" name="examButton"> <input type="submit" value="Next" name="examButton"> <input type="submit" value="End Exam" name="examButton">
        </form>
        <br>

    </body>
</html>
