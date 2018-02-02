<%-- 
    Document   : confirmBuyingTicket
    Created on : Jun 25, 2016, 4:52:45 PM
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
            int number = 1; //Integer.parseInt(request.getParameter("selectNumber"));
            String temp="" ;
            temp=request.getParameter("selectClass");
            int classID = Integer.parseInt(temp);
            temp="";
            String sql = "SELECT * FROM modarag.ticket where `UID`=? and `maID`=?; ";
            Connection conn = DBConnection.getActiveConnection();
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            temp+=session.getAttribute("userID");
            stmt.setInt(1,Integer.parseInt(temp));
            temp="";
            temp+=session.getAttribute("matchID") ;
            stmt.setInt(2,Integer.parseInt(temp) );
            ResultSet rs = stmt.executeQuery();
            if(rs.next())
            {
                response.sendRedirect("tickets.jsp");
            }
            else
            {
            sql = "INSERT INTO `modarag`.`ticket` (`claID`, `maID`, `UID`) VALUES (?, ?, ?); ";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,classID );
            temp="";
            temp+=session.getAttribute("matchID") ;
            stmt.setInt(2,Integer.parseInt(temp) );
            temp="";
            temp+=session.getAttribute("userID");
            stmt.setInt(3,Integer.parseInt(temp));
            stmt.executeUpdate();
            response.sendRedirect("tickets.jsp");
            }
        %>
    </body>
</html>
