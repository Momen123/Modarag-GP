/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.*;

/**
 *
 * @author F 16
 */
public class DBConnection {

    private static Connection connection = null;

    public static Connection getActiveConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/modarag", "root", "root");
            return connection;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
