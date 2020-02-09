package dao.base;

import dao.connection.DatabaseConnection;
import model.base.Entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public abstract class DAO<T extends Entity> {

    protected final Connection conn;
    protected final String tableName;

    protected DAO(String tableName) {
        this.conn = DatabaseConnection.getConn();
        this.tableName = tableName;
    }

    public boolean delete(Long id) {
        StringBuilder queryBuilder = new StringBuilder();
        queryBuilder.append("DELETE FROM ").append(tableName).append(" e WHERE e.id = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setLong(1, id);
            ps.execute();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        }
    }

    public abstract boolean saveOrUpdate(T entity);
    public abstract Optional<T> findById(Long id);
    public abstract List<T> findAll();

}
