<%-- 
    Document   : confirmAddingMatch
    Created on : Jul 1, 2016, 1:41:58 AM
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
            String temp = "";
            int firstTeamID, secondTeamID, firstClassC = 0,
                    firstClassP = 0, secondClassC = 0, secondClassP = 0,
                    thirdClassC = 0, thirdClassP = 0, fourthClassC = 0,
                    fourthClassP = 0;
            String stadiumName, date;
            boolean firstClass = true, secondClass = true, thirdClass = true, fourthClass = true;
            temp = request.getParameter("firstTeam");
            firstTeamID = Integer.parseInt(temp);
            temp = request.getParameter("secondTeam");
            secondTeamID = Integer.parseInt(temp);
            if (firstTeamID == secondTeamID || firstTeamID == 19 || secondTeamID == 19) {
                response.sendRedirect("addMatchFailed.jsp");
            } else {
                temp = request.getParameter("firstClassC");
                if (temp == "") {
                    firstClass = false;
                } else {
                    firstClassC = Integer.parseInt(temp);
                }

                temp = request.getParameter("firstClassP");
                if (temp == "") {
                    firstClass = false;
                } else {
                    firstClassP = Integer.parseInt(temp);
                }

                temp = request.getParameter("secondClassC");
                if (temp == "") {
                    secondClass = false;
                } else {
                    secondClassC = Integer.parseInt(temp);
                }

                temp = request.getParameter("secondClassP");
                if (temp == "") {
                    secondClass = false;
                } else {
                    secondClassP = Integer.parseInt(temp);
                }

                temp = request.getParameter("thirdClassC");
                if (temp == "") {
                    thirdClass = false;
                } else {
                    thirdClassC = Integer.parseInt(temp);
                }

                temp = request.getParameter("thirdClassP");
                if (temp == "") {
                    thirdClass = false;
                } else {
                    thirdClassP = Integer.parseInt(temp);
                }

                temp = request.getParameter("fourthClassC");
                if (temp == "") {
                    fourthClass = false;
                } else {
                    fourthClassC = Integer.parseInt(temp);
                }

                temp = request.getParameter("fourthClassP");
                if (temp == "") {
                    fourthClass = false;
                } else {
                    fourthClassP = Integer.parseInt(temp);
                }
                stadiumName = request.getParameter("stadiumName");
                date = request.getParameter("date");
                Connection conn = DBConnection.getActiveConnection();
                String sql = "INSERT INTO `modarag`.`match` (`firstTeamID`, `secondTeamID`, `stadiumName`, `date`) VALUES (?, ?, ?, ?);";
                PreparedStatement stmt;
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, firstTeamID);
                stmt.setInt(2, secondTeamID);
                stmt.setString(3, stadiumName);
                stmt.setString(4, date);
                stmt.executeUpdate();

                sql = "Select * from `modarag`.`match` ;";
                stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                int matchID = 0;
                while (rs.next()) {
                    matchID = rs.getInt(1);
                }
                if (firstClass) {
                    sql = "INSERT INTO `modarag`.`class` (`MID`, `className`, `classCapacity`, `classPrice`) VALUES (?, ?, ?, ?);";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, matchID);
                    stmt.setString(2, "First Class");
                    stmt.setInt(3, firstClassC);
                    stmt.setInt(4, firstClassP);
                    stmt.executeUpdate();
                }
                if (secondClass) {
                    sql = "INSERT INTO `modarag`.`class` (`MID`, `className`, `classCapacity`, `classPrice`) VALUES (?, ?, ?, ?);";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, matchID);
                    stmt.setString(2, "Second Class");
                    stmt.setInt(3, secondClassC);
                    stmt.setInt(4, secondClassP);
                    stmt.executeUpdate();
                }
                if (thirdClass) {
                    sql = "INSERT INTO `modarag`.`class` (`MID`, `className`, `classCapacity`, `classPrice`) VALUES (?, ?, ?, ?);";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, matchID);
                    stmt.setString(2, "Third Class");
                    stmt.setInt(3, thirdClassC);
                    stmt.setInt(4, thirdClassP);
                    stmt.executeUpdate();
                }
                if (fourthClass) {
                    sql = "INSERT INTO `modarag`.`class` (`MID`, `className`, `classCapacity`, `classPrice`) VALUES (?, ?, ?, ?);";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, matchID);
                    stmt.setString(2, "Fourth Class");
                    stmt.setInt(3, fourthClassC);
                    stmt.setInt(4, fourthClassP);
                    stmt.executeUpdate();
                }
                response.sendRedirect("home.jsp");
            }
        %>
    </body>
</html>
