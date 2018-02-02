<%--
    Document   : login
    Created on : Jun 13, 2016, 12:18:37 AM
    Author     : F 16
--%>
<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from user where `email` = ? and `passWord` = ?";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                session.setAttribute("userID", rs.getInt(1));
                response.sendRedirect("matchs.jsp");
            }
            else
            {
                response.sendRedirect("loginFailled.jsp");
            }
            
        %>
