package persistence;

import lombok.Getter;
import connection.DatabaseConnection;

import java.sql.Connection;

@Getter
abstract class DAO {

    private Connection conn;

    DAO() {
        conn = DatabaseConnection.getConn();
    }
}
