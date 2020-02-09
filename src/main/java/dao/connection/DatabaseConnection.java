package dao.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static Connection conn;

    public static Connection getConn() {
        if (conn == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/lerolero", "root", "");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                System.exit(1);
            }
        }

        return conn;
    }
    public static void closeConn() {

    }
    
}
