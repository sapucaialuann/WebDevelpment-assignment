package dao;

import dao.base.DAO;
import dao.connection.DatabaseConnection;
import model.Curso;
import model.Instrutor;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class CursoDAO extends DAO<Curso> {

    public CursoDAO() {
        super("cursos");
    }

    @Override
    public boolean saveOrUpdate(Curso entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(nome, requisito, ementa, carga_horaria, valor) VALUES (?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET nome = ?, requisito = ?, ementa = ?, carga_horaria = ?, valor = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getRequisito());
            ps.setString(3, entity.getEmenta());
            ps.setShort(4, entity.getCargaHoraria());
            ps.setDouble(5, entity.getValor());

            if (entity.getId() != null) {
                ps.setLong(6, entity.getId());
                ps.executeUpdate();
            } else {
                ps.execute();
            }

            return true;
        } catch (SQLException e) {
            e.printStackTrace();

            return false;
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
        }
    }

    @Override
    public Optional<Curso> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Curso entity = new Curso();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setNome(rs.getString("nome"));
                entity.setRequisito(rs.getString("requisito"));
                entity.setEmenta(rs.getString("ementa"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));
                entity.setValor(rs.getDouble("valor"));

                return Optional.of(entity);
            } else {
                return Optional.empty();
            }

        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }
    }

    @Override
    public List<Curso> findAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Curso> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Curso entity;

            while (rs.next()) {
                entity = new Curso();
                entity.setId(rs.getLong("id"));
                entity.setNome(rs.getString("nome"));
                entity.setRequisito(rs.getString("requisito"));
                entity.setEmenta(rs.getString("ementa"));
                entity.setCargaHoraria(rs.getShort("carga_horaria"));
                entity.setValor(rs.getDouble("valor"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
            DbUtils.closeQuietly(ps);
            DbUtils.closeQuietly(rs);
        }

        return list;
    }

}
