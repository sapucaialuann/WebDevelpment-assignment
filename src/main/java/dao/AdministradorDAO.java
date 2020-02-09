package dao;

import dao.base.LoginDAO;
import model.Administrador;
import model.base.Usuario;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class AdministradorDAO extends LoginDAO<Administrador> {

    public AdministradorDAO() {
        super("administrador");
    }

    public Boolean saveOrUpdate(Administrador entity) {
        StringBuilder queryBuilder = new StringBuilder();

        if (entity.getId() == null) {
            queryBuilder.append("INSERT INTO ").append(tableName).append("(nome, login, senha) VALUES ")
                    .append("(?, ?, ?)");
        } else {
            queryBuilder.append("UPDATE ").append(tableName)
                    .append(" e SET e.nome = ?, e.login = ?, e.senha = ? WHERE e.id = ?");
        }

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setString(1, entity.getNome());
            ps.setString(2, entity.getLogin());
            ps.setString(3, entity.getSenha());

            if (entity.getId() != null) {
                ps.setLong(4, entity.getId());
            }

            ps.execute();

            return Boolean.TRUE;
        } catch (SQLException e) {
            e.printStackTrace();

            return Boolean.FALSE;
        }

    }

    public Optional<Administrador> findById(Long id) {
        Administrador entity = new Administrador();
        StringBuilder queryBuilder = new StringBuilder();

        queryBuilder.append("SELECT * FROM ").append(tableName).append(" e WHERE e.id = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setLong(1, id);

            ResultSet rs = ps.executeQuery();

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
        }
    }

    @Override
    public Optional<Usuario> login(String login, String password) {
        if (!this.findById(1L).isPresent()) {
            Administrador adm = new Administrador();
            adm.setNome("Administrador");
            adm.setLogin("admin_lero");
            adm.hashPassword("admin123");

            this.saveOrUpdate(adm);
        }

        return super.login(login, password);
    }

}
