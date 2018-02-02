<%-- 
    Document   : addMatch
    Created on : Jul 1, 2016, 1:34:14 AM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Match</title>
    </head>
    <body>
        <form action="confirmAddingMatch.jsp">
            <select name="firstTeam" required>
                <option value="19" hidden >First Team</option>
                    <%
                    Connection conn = DBConnection.getActiveConnection();
                    String sql = "Select * from modarag.team ; ";
                    PreparedStatement stmt;
                    stmt = conn.prepareStatement(sql);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next())
                    {
                         %>
                            <option value="<%=rs.getInt(1) %>"><%=rs.getString(2)%></option>
                            <%
                    }
                    %>
            </select>
        <br><br>
        <select name="secondTeam" required>
                <option value="19" hidden >Second Team</option>
                    <%
                    sql = "Select * from modarag.team ; ";
                    stmt = conn.prepareStatement(sql);
                    rs = stmt.executeQuery();
                    while(rs.next())
                    {
                         %>
                            <option value="<%=rs.getInt(1) %>"><%=rs.getString(2)%></option>
                            <%
                    }
                    %>
            </select>
        <br><br>
        Stadium Name:<input type="text" name="stadiumName" required>
        <br><br>
        Date        :<input type="text" name="date" required>
        <br><br>
        First Class Capacity :<input type="text" placeholder="0"  name="firstClassC">
        <br><br>
        First Class Price    :<input type="text" placeholder="0" name="firstClassP">
        <br><br>
        Second Class Capacity :<input type="text" placeholder="0" name="secondClassC">
        <br><br>
        Second Class Price    :<input type="text" placeholder="0" name="secondClassP">
        <br><br>
        Third Class Capacity :<input type="text" placeholder="0" name="thirdClassC">
        <br><br>
        Third Class Price    :<input type="text" placeholder="0" name="thirdClassP">
        <br><br>
        Fourth Class Capacity :<input type="text" placeholder="0" name="fourthClassC">
        <br><br>
        Fourth Class Price    :<input type="text" placeholder="0" name="fourthClassP">
        <br><br>
        <input type="submit" value="Add Match">
        </form>
    </body>
</html>
