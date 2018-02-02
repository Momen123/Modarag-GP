<%-- 
    Document   : confirmRemovingMatch
    Created on : Jul 1, 2016, 4:16:34 PM
    Author     : F 16
--%>

<%@page import="java.util.Enumeration"%>
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
            Enumeration e = request.getParameterNames();
            String reqid = (String) e.nextElement();
            int requestedID = Integer.parseInt(reqid);
            
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from modarag.match where `matchID` = ? ; ";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, requestedID);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            
            sql = "DELETE FROM `modarag`.`ticket` WHERE `maID`=?; ";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, requestedID);
            stmt.executeUpdate();
            sql = "DELETE FROM `modarag`.`class` WHERE `MID`=?; ";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, requestedID);
            stmt.executeUpdate();
            sql = "DELETE FROM `modarag`.`match` WHERE `matchID`=?; ";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, requestedID);
            stmt.executeUpdate();
            response.sendRedirect("home.jsp");
        %>
    </body>
</html>
