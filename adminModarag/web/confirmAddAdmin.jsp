<%-- 
    Document   : confirmAddAdmin
    Created on : Jul 1, 2016, 4:54:07 PM
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
            String name = request.getParameter("id");
            String pass = request.getParameter("pass");
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from modarag.admin where `id` = ? ; ";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(name));
            ResultSet rs = stmt.executeQuery();
            if(rs.next())
            {
                response.sendRedirect("failedAddAdmin.jsp");
            }
            else
            {
             sql = "INSERT INTO `modarag`.`admin` (`id`, `passWord`) VALUES (?, ?);";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(name));
            stmt.setInt(2, Integer.parseInt(pass));
            stmt.executeUpdate();
                response.sendRedirect("addAdminSuccessful.jsp");
            }
            %>
    </body>
</html>
