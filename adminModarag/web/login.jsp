<%-- 
    Document   : login
    Created on : Jun 30, 2016, 10:42:16 PM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String id = request.getParameter("adminID");
            String pass = request.getParameter("adminPass");
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from admin where `id` = ? and `passWord` = ?";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                response.sendRedirect("home.jsp");
            }
            else
            {
                response.sendRedirect("index.html");
            }
            
        %>