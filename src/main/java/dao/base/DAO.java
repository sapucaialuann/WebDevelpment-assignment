package dao.base;

import dao.connection.DatabaseConnection;
import lombok.Getter;
import model.base.Entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Getter
public abstract class DAO<T extends Entity> {

    protected Connection conn;
    protected String tableName;

    protected DAO(String tableName) {
        this.conn = DatabaseConnection.getConn();
        this.tableName = tableName;
    }

    public Boolean delete(Long id) {
        StringBuilder queryBuilder = new StringBuilder();
        queryBuilder.append("DELETE FROM ").append(tableName).append(" e WHERE e.id = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setLong(1, id);
            ps.execute();

            return Boolean.TRUE;
        } catch (SQLException e) {
            e.printStackTrace();

            return Boolean.FALSE;
        }
    }

}
