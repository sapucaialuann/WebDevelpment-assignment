package dao;

import dao.base.LoginDAO;
import dao.connection.DatabaseConnection;
import enums.TipoUsuario;
import model.Administrador;
import model.base.Usuario;
import org.apache.commons.dbutils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public class AdministradorDAO extends LoginDAO<Administrador> {

    public AdministradorDAO() {
        super("administrador");
    }

    @Override
    public boolean saveOrUpdate(Administrador entity) {
        String query;
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;

        if (entity.getId() == null) {
            query = "INSERT INTO " + tableName + "(nome, login, senha) VALUES (?, ?, ?)";
        } else {
            query = "UPDATE " + tableName + " SET nome = ?, login = ?, senha = ? WHERE id = ?";
        }

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getLogin());
            ps.setString(3, entity.hashPassword());

            if (entity.getId() != null) {
                ps.setLong(4, entity.getId());
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
    public Optional<Administrador> findById(Long id) {
        String query = "SELECT * FROM " + tableName + " WHERE id = ?";
        Connection conn = DatabaseConnection.getConn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Administrador entity = new Administrador();

        try {
            ps = conn.prepareStatement(query);
            ps.setLong(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                entity.setId(id);
                entity.setLogin(rs.getString("login"));
                entity.setNome(rs.getString("nome"));
                entity.setSenha(rs.getString("senha"));

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
    public List<Administrador> findAll() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        if (!this.findById(1L).isPresent()) {
            Administrador adm = new Administrador();
            adm.setNome("Administrador");
            adm.setLogin("admin_lero");
            adm.setSenha("admin123");

            this.saveOrUpdate(adm);
        }

        return this.login(login, password, TipoUsuario.ADMIN);
    }

}
