package dao.base;

import dao.connection.DatabaseConnection;
import model.base.Entity;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public abstract class DAO<T extends Entity> {

    protected final String tableName;

    protected DAO(String tableName) {
        this.tableName = tableName;
    }

    public boolean delete(Long id) {
        String query = "DELETE FROM " + tableName + " WHERE id = ?";
        PreparedStatement ps = null;
        Connection conn = DatabaseConnection.getConn();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            ps.execute();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }

    public abstract boolean saveOrUpdate(T entity);
    public abstract Optional<T> findById(Long id);
    public abstract List<T> findAll();

}
