package dao;

import dao.base.LoginDAO;
import dao.connection.DatabaseConnection;
import enums.TipoUsuario;
import model.Instrutor;
import model.base.Usuario;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class InstrutorDAO extends LoginDAO<Instrutor> {

    public InstrutorDAO() {
        super("instrutores");
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        return this.login(login, password, TipoUsuario.INSTRUTOR);
    }

    @Override
    public boolean saveOrUpdate(Instrutor entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(nome, login, senha, email, valor_hora, experiencia) VALUES (?, ?, ?, ?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET nome = ?, login = ?, senha = ?, email = ?, valor_hora = ?, experiencia = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getLogin());
            ps.setString(3, entity.hashPassword());
            ps.setString(4, entity.getEmail());
            ps.setInt(5, entity.getValorHora());
            ps.setString(6, entity.getExperiencia());

            if (entity.getId() != null) {
                ps.setLong(7, entity.getId());
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
    public Optional<Instrutor> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Instrutor entity = new Instrutor();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));
                entity.setEmail(rs.getString("email"));
                entity.setExperiencia(rs.getString("experiencia"));
                entity.setValorHora(rs.getInt("valor_hora"));

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
    public List<Instrutor> findAll() {
        String query = "SELECT * FROM " + tableName;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Instrutor> list = new ArrayList<>();

        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Instrutor entity;

            while (rs.next()) {
                entity = new Instrutor();
                entity.setId(rs.getLong("id"));
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));
                entity.setEmail(rs.getString("email"));
                entity.setExperiencia(rs.getString("experiencia"));
                entity.setValorHora(rs.getInt("valor_hora"));

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
