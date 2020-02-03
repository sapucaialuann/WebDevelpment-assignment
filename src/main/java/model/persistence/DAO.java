package model.persistence;

import java.sql.Connection;

abstract class DAO {

    protected Connection conn;

    DAO() {
        conn = DatabaseConnection.getConn();
    }
}
