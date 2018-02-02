<%-- 
    Document   : registrationCheck
    Created on : Jun 22, 2016, 6:28:49 PM
    Author     : F 16
--%>
<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String name = request.getParameter("name");
    String governorate = request.getParameter("nationalID");
    Connection conn = DBConnection.getActiveConnection();
    String sql = "Select * from user where `email` = ? or `nationalID` = ?";
    PreparedStatement stmt;
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, email);
    stmt.setString(2, governorate);
    ResultSet rs = stmt.executeQuery();
    if (rs.next()) {
        response.sendRedirect("registerationFailled.jsp");
    } else {
        sql = " INSERT INTO `modarag`.`user` (`Name`, `Email`, `passWord`, `nationalID`) VALUES (?, ?, ?, ?);";
        PreparedStatement newStmt;
        newStmt = conn.prepareStatement(sql);
        newStmt.setString(1, name);
        newStmt.setString(2, email);
        newStmt.setString(3, pass);
        newStmt.setString(4, governorate);
        newStmt.executeUpdate();
        response.sendRedirect("registerationSuccessed.jsp");
    }

%>