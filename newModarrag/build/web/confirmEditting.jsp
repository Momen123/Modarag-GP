<%-- 
    Document   : confirmEditting
    Created on : Jul 1, 2016, 1:53:49 PM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            String email = request.getParameter("email");
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from modarag.user where `Email` = ?; ";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            String temp = "";
            temp += session.getAttribute("userID");
            //stmt.setInt(1, Integer.parseInt(temp));
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next() && rs.getInt(1) != Integer.parseInt(temp)) {
                response.sendRedirect("editFailled.jsp");
            } else {
                sql = "UPDATE `modarag`.`user` SET `Name`=?, `Email`=?, `passWord`=? WHERE `userID`=? ;";
                stmt = conn.prepareStatement(sql);
                //stmt.setInt(1, Integer.parseInt(temp));
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, pass);
                stmt.setInt(4, Integer.parseInt(temp));
                stmt.executeUpdate();
                response.sendRedirect("myAccount.jsp");
            }
        %>
    </body>
</html>
