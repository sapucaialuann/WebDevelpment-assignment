package dao.base;

import model.base.Usuario;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public abstract class LoginDAO<T extends Usuario> extends DAO<T> {

    protected LoginDAO(String tableName) {
        super(tableName);
    }

    public Optional<Usuario> login(String login, String password) {
        StringBuilder queryBuilder = new StringBuilder().append("SELECT * FROM ").append(tableName)
                .append(" e WHERE e.login = ?");

        try {
            PreparedStatement ps = conn.prepareStatement(queryBuilder.toString());
            ps.setString(1, login);

            ResultSet rs = ps.executeQuery();

            if (rs.next() && BCrypt.checkpw(password, rs.getString("senha"))) {
                Usuario adm = new Usuario();
                adm.setId(rs.getLong("id"));
                adm.setNome(rs.getString("nome"));
                adm.setLogin(rs.getString("login"));
                adm.setSenha(rs.getString("senha"));

                return Optional.of(adm);
            }

            return Optional.empty();
        } catch (SQLException e) {
            e.printStackTrace();

            return Optional.empty();
        }
    }

}
