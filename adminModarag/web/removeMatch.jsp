<%-- 
    Document   : removeMatch
    Created on : Jul 1, 2016, 1:34:23 AM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Matches</title>
    </head>
    <body>
        <form action="confirmRemovingMatch.jsp">
            <%
                Connection conn = DBConnection.getActiveConnection();
                String sql = "Select * from `modarag`.`match` ;";
                PreparedStatement stmt;
                stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    String stadiumName = rs.getString("stadiumName");
                    int matchID = rs.getInt("matchID");
                    String date = rs.getString("date");
                    int firstTeamID = rs.getInt("firstTeamID");
                    int secondTeamID = rs.getInt("secondTeamID");
                    sql = "Select * from team where `teamID` = ? ";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, firstTeamID);
                    ResultSet rs1 = stmt.executeQuery();
                    rs1.next();
                    String firstTeamName = rs1.getString("teamName");
                    String firstTeamImage = rs1.getString("imagePath");
                    sql = "Select * from team where `teamID` = ? ";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, secondTeamID);
                    ResultSet rs2 = stmt.executeQuery();
                    rs2.next();
                    String secondTeamName = rs2.getString("teamName");
                    String secondTeamImage = rs2.getString("imagePath");
            %>
            <img src="TEAMS/<%=firstTeamImage %>"> <%=firstTeamName %> VS <%=secondTeamName %><img src="TEAMS/<%=secondTeamImage %>"><br><br>
            Stadium:<%=stadiumName %>-------------Date:<%=date %><br><br>
            <input type="submit" name="<%=matchID %>" value="Remove"><br><br>
            ---------------------------------------------------------------------------------------<br><br>
            <%
                }
            %>
        </form>
    </body>
</html>
